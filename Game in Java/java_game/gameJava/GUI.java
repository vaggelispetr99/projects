import java.awt.*;
import java.awt.Color.*;
import java.awt.event.*;
import java.awt.geom.*;
import java.util.*;
import java.io.*;
import javax.swing.*;
import javax.swing.border.*;
import javax.swing.text.DefaultCaret;

class GUI {

    public static void main(String[] args) {
                
        var game = new Game(6);
        var frame = new GameFrame(game);
        frame.setTitle("Graphic User Interface of the Game");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setVisible(true);
        game.gameLoop();
    }
}

class GameFrame extends JFrame {
    
    private Game myGame;
    private JTextArea gameInformationArea;
    private JScrollPane scrollPane;
    private JPanel gameInformationPanel, GameMapPanel, controlPanel, unitsComboPanel, actionPanel, endRoundPanel, movePanel;
    private JButton attackButton, healButton, aoeButton, moveButton, endRoundButton;
    private JComboBox<Unit> playerUnitsCombo, enemiesCombo;
    private JComboBox<Direction> directions;
    private MapComponent mapComponent;
    
    GameFrame(Game game) {
        
        this.myGame = game;
        
        setupgameInformationPanel();
        setupGameMapPanel();
        setupActionPanel();
        setupUnitsComboBoxes();
        setupEndRoundPanel();
        setupControlPanel();
        add(GameMapPanel, BorderLayout.EAST);
        add(controlPanel, BorderLayout.WEST);
        pack();
    }
    
    private void setupgameInformationPanel() {
    
        gameInformationPanel = new JPanel();
        gameInformationArea = new JTextArea(20, 50);
        gameInformationArea.setLineWrap(true);
        gameInformationArea.setEditable(false);
        this.scrollPane = new JScrollPane(gameInformationArea);
        var textWriterInitialize = new TextWriter(gameInformationArea);
        
        DefaultCaret caret = (DefaultCaret)gameInformationArea.getCaret();
        caret.setUpdatePolicy(DefaultCaret.ALWAYS_UPDATE);
        
        gameInformationPanel.add(scrollPane);
        gameInformationPanel.setBorder(BorderFactory.createTitledBorder("INFORMATION ABOUT GAME"));
    }
    
    private void setupGameMapPanel() {
    
        GameMapPanel = new JPanel();
        mapComponent = new MapComponent(getCurrentLevel());
        GameMapPanel.add(mapComponent);
        GameMapPanel.setBorder(BorderFactory.createTitledBorder("GAME MAP"));
    }
    
    private void updateGameMapPanel() {
    
        GameMapPanel.remove(mapComponent);
        mapComponent = new MapComponent(getCurrentLevel());
        GameMapPanel.add(mapComponent);
    }
    
    private void setupActionPanel() {
    
        actionPanel = new JPanel();
        attackActionButton();
	healActionButton();
	aoeActionButton();
        setupAttackButton();
        setupHealButton();
        setupAoeButton();
        actionPanel.setBorder(BorderFactory.createTitledBorder("AVAILABLE ACTIONS"));
    }

    private void attackActionButton() {
    
        attackButton = new JButton("ATTACK");
        setupAttackButton();     
        actionPanel.add(attackButton);
        
    }

    private void healActionButton() {
    
        healButton = new JButton("HEAL");
        setupHealButton();
        actionPanel.add(healButton);
    }
    private void aoeActionButton() {
    
        aoeButton=new JButton("AOE");
        setupAoeButton();
	actionPanel.add(aoeButton);
    }

    private void setupAttackButton() {
    
        attackButton.addActionListener(event -> {

            if (getSelectedUnit().isAvailable() && getSelectedUnit() != null && getUnitToActUpon() != null) {
            
                getSelectedUnit().attack(getUnitToActUpon());
                getCurrentLevel().removeUnit(getUnitToActUpon());
                getSelectedUnit().setIsAvailable(false);
                getCurrentLevel().informationUpdate();
            }
            else {
            
                //gameInformationArea.append("\nDo your next action!\n");
            }
            disableButtons();
        });
    }
    
    private void setupAoeButton() {

        aoeButton.addActionListener(event -> {

            if (getSelectedUnit().isAvailable() && getSelectedUnit() != null ) {
                getSelectedUnit().setUnitsToAttack();
                for(Unit tmp : getSelectedUnit().getUnitsToAttack()) {
                    if (tmp != null && tmp.isEnemy()) {
                        getSelectedUnit().attack(tmp);
                        getCurrentLevel().removeUnit(tmp);
                    }

                }

                getSelectedUnit().changeHP(-getSelectedUnit().getHP()/10);
                getSelectedUnit().setIsAvailable(false);
                getCurrentLevel().informationUpdate();
            }
            else {

                //gameInformationArea.append("\nDo your next action!\n");
            }
            disableButtons();
        });
    }

    private void setupHealButton() {
    
        healButton.addActionListener(event -> {

            if (getSelectedUnit().isAvailable() && getSelectedUnit() != null && getUnitToActUpon() != null && getSelectedUnit().getMP() > 0) {

                ((Paladin)(getSelectedUnit())).heal(getUnitToActUpon());
                getSelectedUnit().setIsAvailable(false);
            }
            else {
            
                //gameInformationArea.append("\nDo your next action!\n");
            }
            disableButtons();
        });
    } 
    
    private void setupUnitsComboBoxes() {
    
        unitsComboPanel = new JPanel();
        setupPlayerUnitsComboBoxes();
	setupEnemyUnitsComboBoxes();
	updatePlayerUnitsComboBoxes();
	updateEnemyUnitsComboBoxes();
        unitsComboPanel.setBorder(BorderFactory.createTitledBorder("UNIT SELECTION"));
    }   
    
    private void setupPlayerUnitsComboBoxes() {
    
        playerUnitsCombo = new JComboBox<>();
        addActionForPlayerUnitsInComboBoxes();
        

        this.playerUnitsCombo.setEditable(false);
        unitsComboPanel.add(playerUnitsCombo);
    } 

    private void setupEnemyUnitsComboBoxes() {
    
        enemiesCombo = new JComboBox<>();
        addActionForEnemyUnitsInComboBoxes();
        this.enemiesCombo.setEditable(false);
        unitsComboPanel.add(enemiesCombo);
    }     
   
    private void addActionForPlayerUnitsInComboBoxes() {
    

        
        playerUnitsCombo.addActionListener(event -> {
        
            (this.getCurrentLevel()).setSelectedUnit(
                this.playerUnitsCombo.getItemAt(
                    playerUnitsCombo.getSelectedIndex()));

            this.getMapComponent().repaint();
            
            disableButtons();
            
            if (directions == null) {
            
                movementFunctionality();
            }
            else {
                
                updateDirections();
            }
        });
    } 

    private void addActionForEnemyUnitsInComboBoxes() {
    

        
        enemiesCombo.addActionListener(event -> {
        
            (getCurrentLevel()).setUnitToAttack(
                enemiesCombo.getItemAt(
                    enemiesCombo.getSelectedIndex()));
            
            this.getMapComponent().repaint();
            
            disableButtons();
        });
    }   
    
    private void updatePlayerUnitsComboBoxes() {
        
        playerUnitsCombo.removeAllItems();
        var playerAux = (getCurrentLevel()).getMyUnits(); 
        var enemiesTmp = (getCurrentLevel()).getEnemies();
        playerAux.forEach(n -> {
        
            playerUnitsCombo.addItem(n);
        });
    }
    
    private void updateEnemyUnitsComboBoxes() {
        
        enemiesCombo.removeAllItems();
        var playerAux = (getCurrentLevel()).getMyUnits();
        var enemiesAux = (getCurrentLevel()).getEnemies();
        enemiesAux.forEach(n -> this.enemiesCombo.addItem(n));
        playerAux.forEach(n -> this.enemiesCombo.addItem(n));
    }
    
    private void movementFunctionality() {
    
	movePanel = new JPanel();
	directions();
	moveButton();
        actionPanel.add(movePanel);
    }

    private void moveButton() {
    
        moveButton = new JButton("MOVE");
        setupMoveButton();        
        movePanel.add(moveButton);
    }

    private void directions() {
    
        directions = new JComboBox<>();
        setupDirections();
        updateDirections();
        directions.setEditable(false);        
        movePanel = new JPanel();
        movePanel.add(directions);
    }
    
    private void setupMoveButton() {
        
        moveButton.addActionListener(event -> {
            
            Direction selectedDirection =  (Direction)directions.getSelectedItem();
            HexTile selectedTile = selectedDirection.getCurrentTile();
            
            if (selectedTile != null && selectedTile.isEmpty()) {
            
                getSelectedUnit().setIsAvailable(false);
                getSelectedUnit().setTile(selectedTile);
                this.getMapComponent().repaint();
            }
            else {
            
                var textWriter = new TextWriter();
                textWriter.addText("\nMovement is unavailable!\n");
            }    
        });
    }
    
    private void setupDirections() {
        
        directions.addActionListener(event -> {
            
            
        });
    }
    
    private void updateDirections() {
    
        if (getSelectedUnit() != null) {
        
            var neighbours = getSelectedUnit().getTile().getNeighbours();
            
            directions.removeAllItems();
            
            directions.addItem(new Direction(neighbours[0], "NW"));
            directions.addItem(new Direction(neighbours[1], "SW"));
            directions.addItem(new Direction(neighbours[2], "N"));
            directions.addItem(new Direction(neighbours[3], "S"));
            directions.addItem(new Direction(neighbours[4], "NE"));
            directions.addItem(new Direction(neighbours[5], "SE"));
        }
    }   
    
    private void setupEndRoundPanel() {
    
        endRoundPanel = new JPanel();
        endRoundButton = new JButton("END ROUND");
        setupEndRound();

        endRoundPanel.add(endRoundButton);
    }

    private void setupEndRound() {
    
        
        endRoundButton.addActionListener(event -> {
            
            getCurrentLevel().setInBattle(false);
            getCurrentLevel().getMyUnits().forEach(n -> {
                
                n.setIsAvailable(true);
            });
	    
            getMapComponent().repaint();
            
            updateDirections();
            disableButtons();
        });
    }
        
    private void setupControlPanel() {
    
        this.controlPanel = new JPanel(new GridLayout(2, 2));
        controlPanel.add(gameInformationPanel);
        controlPanel.add(endRoundPanel);
        controlPanel.add(actionPanel);
	controlPanel.add(unitsComboPanel);
    }

    private MapComponent getMapComponent() {
    
        return this.mapComponent;
    }
    
    private Unit getSelectedUnit() {
    
        return getCurrentLevel().getSelectedUnit();
    }
    
    private Level getCurrentLevel() {
    
        return myGame.getCurLevel();
    }
    
    private Unit getUnitToActUpon() {
    
        return this.getCurrentLevel().getUnitToAttack();
    }
    
    private void disableButtons() {
        
        if (getSelectedUnit() != getUnitToActUpon()) {
        
            healButton.setEnabled(true);
            attackButton.setEnabled(true);
            
            if (moveButton != null) {
            
                moveButton.setEnabled(true);
            }
        }
        
        if (getSelectedUnit().isAvailable()) {
        
            healButton.setEnabled(true);
            attackButton.setEnabled(true);
            
            if (moveButton != null) {
            
                moveButton.setEnabled(true);
            }
            
            if (getCurrentLevel().getEnemies().contains(enemiesCombo.getSelectedItem())) {
            
                healButton.setEnabled(false);
                attackButton.setEnabled(true);
            }
            else {
            
                healButton.setEnabled(true);
                attackButton.setEnabled(false);
            }
        }
        else if (!(getSelectedUnit().isAvailable())) {
        
            healButton.setEnabled(false);
            attackButton.setEnabled(false);
            
            if (moveButton != null) {
            
                moveButton.setEnabled(false);
            }
        }
        
        if (!(getSelectedUnit().canHeal())) {
        
            healButton.setEnabled(false);
        }
        
        if (getSelectedUnit() == getUnitToActUpon()) {
        
            healButton.setEnabled(false);
            attackButton.setEnabled(false);
        }
        
        if (!(getSelectedUnit().getUnitsToAttack().contains(getUnitToActUpon()))) {
        
            healButton.setEnabled(false);
            attackButton.setEnabled(false);
        }
        
        if (getSelectedUnit().isDead()) {
        
            healButton.setEnabled(false);
            attackButton.setEnabled(false);
            
            if (moveButton != null) {
            
                moveButton.setEnabled(false);
            }
        }   
    }
}

class MapComponent extends JComponent {
    
    private Level mapLevel;
    
    public MapComponent(Level lvl) {
    
        this.mapLevel = lvl;
    }
    
    public Dimension getPreferredSize() {

        Toolkit kit = Toolkit.getDefaultToolkit();
        Dimension screenSize = kit.getScreenSize();
        int screenWidth = screenSize.width;
        int screenHeight = screenSize.height;
        
        return new Dimension(screenWidth/2 - 300, screenHeight - 100);
    }
    
    public void paintComponent(Graphics g) {

        var map = mapLevel.getStageMap();
        
        for (int i = 0; i < map.length; i++) {
        
            for (int j = 0; j < map[0].length; j++) {
            
                if (map[i][j] != null) {
                
                    var tile = new DrawableMapTile(map[i][j]);
                    tile.draw((Graphics2D) g, 20, -20);
                    
                    if (map[i][j].getUnitOfThisTile() == mapLevel.getSelectedUnit()) {
                    
                        tile.drawSelection((Graphics2D) g, 20, -20);
                    }
                    if (map[i][j].getUnitOfThisTile() == mapLevel.getUnitToAttack()) {
                    
                        tile.drawSelection((Graphics2D) g, 20, -20);
                    }
                }
            }
        }
    }
}

interface Drawable {

    double getScreenCenterX(int distanceOfTileCenters, int offsX, int offsY);
    double getScreenCenterY(int distanceOfTileCenters, int offsX, int offsY);
    void draw(Graphics2D g, int offsX, int offsY);
}   

class DrawableMapTile implements Drawable {

    static final double deg30rad = 0.5;
    private final HexTile mapTile;
    public static final int TILE_CENTER_DIST = 22; 
    
    public DrawableMapTile(HexTile mapTile) {
    
        this.mapTile = mapTile;
    }
    
    public double getScreenCenterX(int distanceOfTileCenters, int offsX, int offsY) {
    
        int x = mapTile.getXAxis();
        int y = mapTile.getYAxis();
        double rLength = distanceOfTileCenters/1.8/Math.cos(deg30rad);
        double centerX = x * (1.5 * rLength) + offsX;
        return centerX;
    }
    
    public double getScreenCenterY(int distanceOfTileCenters, int offsX, int offsY) {
    
        int x = mapTile.getXAxis();
        int y = mapTile.getYAxis();
        double yEx = 0.0;
        
        if(x % 2 == 1) {
        
            yEx = Math.sin(deg30rad)*distanceOfTileCenters;
        }
        
        double centerY = y * distanceOfTileCenters + offsY - yEx;
        
        return centerY;
    }
    
    private Polygon getHexTilePoly(int distanceOfTileCenters, int polyDist, int offsX, int offsY) {
   
        double centerX = getScreenCenterX(distanceOfTileCenters, offsX, offsY);
        double centerY = getScreenCenterY(distanceOfTileCenters, offsX, offsY);
        double paintLength = polyDist/2.0/Math.cos(deg30rad);
        
        double[] angles = {
        
            0.0, 1.0471975511965976,
            2.0943951023931953, 3.141592653589793,
            4.1887902047863905, 5.235987755982989
        };
        
        Polygon retP = new Polygon();
        
        for(int i = 0; i < 6; i++) {
        
            int px = (int) (centerX + Math.cos(angles[i]) * paintLength);
            int py = (int) (centerY + Math.sin(angles[i]) * paintLength);
            retP.addPoint(px, py);
        }
        return retP;
    }
    
    public void draw(Graphics2D g, int offsX, int offsY) {
        
        double radius = 4.0;
        double centerX = getScreenCenterX(TILE_CENTER_DIST, offsX, offsY);
        double centerY = getScreenCenterY(TILE_CENTER_DIST, offsX, offsY);
        
        g.setColor(new Color(153, 153, 153));
        g.fillPolygon(getHexTilePoly(TILE_CENTER_DIST, TILE_CENTER_DIST, offsX, offsY));
        
        g.setColor(new Color(153, 153, 153));
        g.fillPolygon(getHexTilePoly(TILE_CENTER_DIST, TILE_CENTER_DIST-6, offsX, offsY));
        
        if (!(this.mapTile.isEmpty())) {
            
            if (this.mapTile.getUnitOfThisTile().isEnemy())
                g.setColor(new Color(255, 0, 0));
            else
                g.setColor(new Color(102, 255, 102));
                
            var circle = new Ellipse2D.Double();
            circle.setFrameFromCenter(centerX, centerY, centerX + radius, centerY + radius);
            g.fill(circle);
        }
    }
    
    public void drawSelection(Graphics2D g, int offsX, int offsY) {
    
        double radius = 6.0;
        double centerX = getScreenCenterX(TILE_CENTER_DIST, offsX, offsY);
        double centerY = getScreenCenterY(TILE_CENTER_DIST, offsX, offsY);
        
        g.setStroke(new BasicStroke(3.0f));
        g.setColor(new Color(51, 0, 0));
        var outerCircle = new Ellipse2D.Double();
        outerCircle.setFrameFromCenter(centerX, centerY, centerX + radius, centerY + radius);
        g.draw(outerCircle);
    }
}
        
class Direction {

    private HexTile curTile;
    private String direction;
    
    public Direction(HexTile currentTile, String direction) {
    
        this.curTile = currentTile;
        this.direction = direction;
    }
    
    public String toString() {
    
        return this.direction;
    }
    
    public HexTile getCurrentTile() {
    
        return this.curTile;
    }
}

class TextWriter {

    private static JTextArea textArea;
    
    public TextWriter() {
        
        
    }
    
    public TextWriter(JTextArea textArea) {
    
        this.textArea = textArea;
    }
    
    public void addText(String string) {
    
        this.textArea.append("\n" + string);
    }
}


