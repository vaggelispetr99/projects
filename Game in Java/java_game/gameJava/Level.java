import java.util.*;
import java.io.*;
import java.util.concurrent.TimeUnit;

class Level {

    private TextWriter textWriter;
    private ArrayList<Unit> notMyUnits;
    private ArrayList<Unit> myUnits;
    private Stage stageOfLevel = new Stage(18, 16);
    private Unit selectedUnit, unitToAttack;
    private Boolean executing, inBattle, victory = false;
    
    
    public Level() {
        
        Dice myUnitsDice = new Dice(1, 20);
        Dice notMyUnitsDice = new Dice(1, 20);
        textWriter = new TextWriter();
        this.notMyUnits = new ArrayList<>();
        this.myUnits = new ArrayList<>();
        this.myUnits.add(new Galahad());
        this.myUnits.add(new Paladin());
        this.notMyUnits.add(new RedDragon());
        this.notMyUnits.add(new BlueDragon());

        for (int i = 0; i < 3; i++) {

            if (notMyUnitsDice.roll() <= 10) {

                this.notMyUnits.add(new Goblin());
            }
            else if (notMyUnitsDice.roll() <= 14) {

                this.notMyUnits.add(new ForestTroll());
            }
            else if (notMyUnitsDice.roll() <= 19){

                this.notMyUnits.add(new MountainTroll());
            }
            else{

                this.notMyUnits.add(new Wyvern());
            }
        }

        if (myUnitsDice.roll() <= 10) {

            this.myUnits.add(new Paladin());
        }
        else if (myUnitsDice.roll() <= 15) {

            this.myUnits.add(new FireArcher());
        }
        else{

            this.myUnits.add(new FrostArcher());
        }


        executing = true;
        this.inBattle = true;
        setUnitPositionOnStage(this.stageOfLevel);
    }

      public void informationUpdate() {
        
        textWriter.addText("My units");
        
        myUnits.forEach(n -> {
        
            textWriter.addText(n.getDescription());
        });
        
        textWriter.addText("\nEnemies");

        notMyUnits.forEach(n -> {
        
            textWriter.addText(n.getDescription());
        });
        textWriter.addText("\n");
        
    }
    
     private void setUnitPositionOnStage(Stage curStage) {
        
        this.notMyUnits.forEach((n) -> {
        
            this.setUnitPositionByDice(n, curStage);
        });
        
        this.myUnits.forEach((n) -> {
        
            this.setUnitPositionByDice(n, curStage);
        });
        
        this.notMyUnits.forEach(n -> n.setUnitsToAttack());
    }
    
    public static void setUnitPositionByDice(Unit curUnit, Stage curStage) {
    
        Dice firstDice = new Dice(1, 18);
        Dice secondDice = new Dice(1, 16);
        
        var tileFromDice = curStage.CurTile(firstDice.roll(), secondDice.roll());
        
        while (tileFromDice == null || !(tileFromDice.isEmpty())) {
        
            tileFromDice = curStage.CurTile(firstDice.roll(), secondDice.roll());
        }
        curUnit.setTile(tileFromDice);    
    }

     private HexTile optimalDistanceFromEnemies(HexTile curTile) {

        double optimalDistance = Integer.MAX_VALUE;
        HexTile optimalTile = curTile;
        HexTile[] curTileNeighbours = curTile.getNeighbours();
        
        for (HexTile cur : curTileNeighbours) {
        
            if (cur != null && averageDistanceFromNotMyPlayers(cur) < optimalDistance) {
            
                optimalDistance = averageDistanceFromNotMyPlayers(cur);
                optimalTile = cur;
            }
        }
        
        return optimalTile;
    }
    
    public double averageDistanceFromNotMyPlayers(HexTile myPlayersTile) {
    
        double res = 0;
        
        for (Unit m : myUnits) {
        
            res += (m.getTile()).euclDist(myPlayersTile);
        }
        
        res = res/myUnits.size();
        return res;
    }

     private void enemyTurn() {
        notMyUnits.forEach(n -> {
        
            HexTile optimalTile;
	    Unit unitToAttack;
            
            if (!(n.getUnitsToAttack().isEmpty())) {
                
                unitToAttack = n.getUnitsToAttack().get(0);
                
                for (Unit k : n.getUnitsToAttack()) {
                
                    if (k.getHP() < unitToAttack.getHP() && !(notMyUnits.contains(k))) {
                    
                        unitToAttack = k;
                    }
                }
                
                if (!(notMyUnits.contains(unitToAttack))) {
                
                    n.attack(unitToAttack);
                    this.removeUnit(unitToAttack);
                }
                else {
                
                    if (!(myUnits.isEmpty())) {
                    
                        optimalTile = n.getTile();
                        if (optimalTile != null) {
                        
                            optimalTile = optimalDistanceFromEnemies(optimalTile);
                            if (!(optimalTile.isEmpty()))
                                n.setTile(optimalTile);
                        }
                    }
                }
            }
            else if (n.getUnitsToAttack().isEmpty()) {
                
                if (!(myUnits.isEmpty())) {
                
                    optimalTile = n.getTile();
                    if (optimalTile != null) {
                    
                        optimalTile = optimalDistanceFromEnemies(optimalTile);
                        n.setTile(optimalTile);
                    }
                }
            }
        });
    }

    public void curLevel() {
        
        while (!(this.myUnits.isEmpty() || this.notMyUnits.isEmpty())) {
        
            this.informationUpdate();

            while (this.isInBattle()) {
            
                try {
                
                    TimeUnit.SECONDS.sleep(2);
                }
                catch(Exception e) {}
            }
            
            notMyUnits.forEach(n -> n.setUnitsToAttack());
            
            if (!(notMyUnits.isEmpty())) {
            
                this.enemyTurn();
                this.setInBattle(true);
            }
            
            myUnits.forEach(n ->{ n.setUnitsToAttack();
	    	if(n.canHeal())
                {
                    for(Unit tmp : myUnits)
                    {
                        if( ! (n.getUnitsToAttack().contains(tmp)))
                        {
                            n.addToUnitsToAttack(tmp);
                        }

                    }

                }

                if(n.getActionRange()>1)
                {
                    for(Unit aux : this.notMyUnits)
                    {
                        if(n.getTile().euclDist(aux.getTile())<=n.getActionRange())
                        {
                            n.addToUnitsToAttack(aux);
                        }
                    }
                }



            });
        }
        
        if (notMyUnits.isEmpty()) {
        
            textWriter.addText("WIN!\n");
            this.victory = true;
        }
        else if (myUnits.isEmpty()){
        
            textWriter.addText("LOST!\n");
        }
        
        this.executing = false;
    }
    
    public void removeUnit(Unit unit) {
    
        if (unit.getHP() <= 0) {
        
            if (this.notMyUnits.contains(unit)) {
            
                this.notMyUnits.remove(unit);
            }
            else if (this.myUnits.contains(unit)) {
            
                this.myUnits.remove(unit);

            }
            unit.getTile().setUnitOnThisTile(null);
            unit.setTile(null);
            unit.setIsDead(true);
        }
    }

    public HexTile[][] getStageMap() {
    
        return this.stageOfLevel.getMap();
    }
    
    public ArrayList<Unit> getMyUnits() {
    
        return this.myUnits;
    }
    
    public ArrayList<Unit> getEnemies() {
    
        return this.notMyUnits;
    }
    
    public void setSelectedUnit(Unit unit) {
    
        this.selectedUnit = unit;
    }
    
    public Unit getSelectedUnit() {
    
        return this.selectedUnit;
    }
    
    public void setUnitToAttack(Unit unit) {
    
        this.unitToAttack = unit;
    }
    
    public Unit getUnitToAttack() {
    
        return this.unitToAttack;
    }
    
    public Boolean executingRightNow() {
    
        if (this.executing == false)
            return false;
        else
            return true;
    }
    
    public void setInBattle(boolean bool) {
    
        this.inBattle = bool;
    }
    
    public boolean isInBattle() {
    
        return this.inBattle;
    }
    
    public boolean Win() {
    
        return this.victory;
    }
}
