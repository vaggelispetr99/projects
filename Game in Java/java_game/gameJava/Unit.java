import java.io.*;
import java.util.*;

interface attackInterface<T> {

    void attack(T t);
}

interface healInterface<T> {

    void heal(T t);
}

interface aoeAttackInterface<T> {

    void aoeAttack(T t);
}

enum damageType {

    PHYSICAL, FIRE, FROST; 
}

enum actionType {

    HEAL, ATTACK, AOEATTACK;
}

abstract class Unit {

    private String UnitName;
    private int maxHP, HP, maxMP, MP, maxAttack, expHP, expMP, expAttack;
    private int expAfterLost, Expierience=0;
    private double modHP, modMP, modAttack;
    private int actionRange;
    private HexTile onTile;
    private HashMap<damageType, Integer> armorMap;
    private damageType immunity;
    private ArrayList<Unit> unitsToAttack;
    private boolean gainExpierience = false;
    private boolean experienceGiven = false;
    private boolean experienceEarned = false;
    private boolean isEnemy = false;
    private boolean available, isHealing, isDead;
    private TextWriter textWriter;
    
    public Unit(String name, int HP, int MP, int expAttack, int actionRange) {
    
        this.UnitName = name;
        this.MP = MP;
        this.HP = HP;
        this.maxHP = HP;
        this.maxMP = MP;
        this.expMP = MP;
        this.expHP = HP;
        this.expAttack = expAttack;
        this.maxAttack = expAttack;
        this.unitsToAttack = new ArrayList<Unit>();
        this.available = true;
        this.isDead = false;
        this.actionRange = actionRange;
        textWriter = new TextWriter();
    }
    
    public Unit(String name, int HP, int expAttack, int actionRange) {
    
        this.UnitName = name;
        this.HP = HP;
        this.maxHP = HP;
        this.MP = 0;
        this.maxMP = 0;
        this.expMP = 0;
        this.expHP = HP;
        this.expAttack = expAttack;
        this.maxAttack = expAttack;
        this.unitsToAttack = new ArrayList<Unit>();
        this.available = true;
        this.isDead = false;
        this.actionRange = actionRange;
        textWriter = new TextWriter();
    }

     public void setStatFactors(double modHP,double modMP,double modAttack){
        this.modHP=modHP;
        this.modMP=modMP;
        this.modAttack=modAttack;
    }

    public void levelUp (int value){
        this.Expierience += value;
        this.modHP();
        this.modAttack();
        this.modMP();
    }

    public void modHP()
    {   double bonus = this.expHP +this.Expierience* this.modHP;
        this.maxHP = this.maxHP + (int)bonus;
        this.HP = this.HP +(int)bonus;

    }

    public void modAttack()
    {   double bonus = this.expAttack +this.Expierience* this.modAttack;
        this.maxAttack = this.maxAttack + (int)bonus;

    }

    public void modMP()
    {   double bonus = this.expMP + this.Expierience*this.modMP;
        this.maxMP = this.maxMP + (int)bonus;
        this.MP = this.MP +(int)bonus;

    }

    
    public abstract String getDescription();
    public abstract void attack(Unit unit);

    public void setTile(HexTile hexTile) {
        
        if (hexTile != null) {
        
            if (this.onTile != null) {
            
                this.onTile.setUnitOnThisTile(null);
            }
            
            hexTile.setUnitOnThisTile(this);        
            this.onTile = hexTile;
            this.setUnitsToAttack();
        }
        else {
        
            this.onTile = null;
            this.getUnitsToAttack().clear();
        }
    }
    
    public HexTile getTile() {
    
        return this.onTile;
    }

    private void unitsInRange(HexTile tile, int actionRange) {
        
        for (HexTile tl : tile.getNeighbours()) {
            
            if (tl != null) {
                
                Unit unit = tl.getUnitOfThisTile();
                
                if (unit != null) {
                
                    this.unitsToAttack.add(unit);
                }
            }
        }
    }

    public void setUnitsToAttack() {
    
        this.unitsToAttack.clear();
        this.unitsInRange(this.getTile(), this.actionRange);
    }

    public ArrayList<Unit> getUnitsToAttack() {
    
        return this.unitsToAttack;
    }
    
    public void printUnitsToActUpon() {
    
        this.unitsToAttack.forEach((n) -> textWriter.addText(n.getDescription()));
    }
    
    public void setIsAvailable(boolean bool) {
    
        this.available = bool;
    }
    
    public boolean isAvailable() {
    
        return this.available;
    }
    
    public boolean isEnemy() {
    
        return this.isEnemy;
    }
    
    public void setIsEnemy(boolean bool) {
    
        this.isEnemy = bool;
    }

    public String toString() {
    
        return this.UnitName;
    }
    
    public void setIsDead(boolean bool) {
    
        this.isDead = bool;
    }
    
    public boolean isDead() {
    
        return this.isDead;
    }
    
    public int getMaxHP() {
    
        return this.maxHP;
    }

    public int getMaxMP() {
    
        return this.maxMP;
    }
    
    public String getName() {
    
        return UnitName;
    }
    
    public int getHP() {
    
        return this.HP;
    }
    
    public int getMP() {
    
        return this.MP;
    }
    
    public void changeHP(int val) {
    
        if ((this.getHP() + val) > this.getMaxHP()) {
        
            this.HP = this.maxHP;
        }
        else {
        
            this.HP += val;
        }
    }
    
    public void changeMP(int val) {
    
        if ((this.getMP() + val) > this.getMaxMP()) {
            this.MP = this.maxMP;
        }
        else {

            this.MP += val;
        }
    }

    public void setExpEarned (boolean expEarned)
    {

        this.experienceEarned=expEarned;
    }

    public boolean getExpEarned()
    {

        return this.experienceEarned;
    }

    public void setExpGiven ( boolean expGiven){

        this.experienceGiven=expGiven;
    }

    public boolean getExpGiven()
    {

        return this.experienceGiven;
    }

    
    public void setArmorMap(damageType damType, int armorVal) {
    
        if (this.armorMap == null) {
        
            this.armorMap = new HashMap<>();
        }
        
        this.armorMap.put(damType, armorVal);
    }
    
    public void setImmunity(damageType damType) {
    
        this.immunity = damType;
    }
    
    public damageType getImmunity() {
    
        return this.immunity;
    }
    
    public int getArmorVal(damageType damType) {
        
        if (!(armorMap.isEmpty()) && this.armorMap.containsKey(damType)) {
        
            return this.armorMap.get(damType);
        }
        else {
        
            return 0;
        }
    }
    
    public boolean canHeal() {
    
        return this.isHealing;
    }
    
    public void setCanHeal(boolean bool) {
    
        this.isHealing = bool;
    }

    public Unit getUnit()
    {
        return this;
    }

    public void setExpAfterLost(int val)
    {

        this.expAfterLost=val;
    }

    public int getMaxAttack(){
        return this.maxAttack;
    }

    public int getExpAfterLost()
    {
        return this.expAfterLost;
    }

    public void addToUnitsToAttack(Unit unit)
    {
        this.unitsToAttack.add(unit);
    }
    public int getActionRange()
    { 
        return this.actionRange;
    }


}

class Galahad extends Unit implements attackInterface<Unit>,aoeAttackInterface<ArrayList<Unit> > {

    private Action attackAct = new Action("ATTACK", "PHYSICAL",this.getMaxAttack(),this.getUnit());
    private Action aoeAttackAct = new Action("AOEATTACK", "PHYSICAL",this.getMaxAttack(),this.getUnit());
    public Galahad() {

        super("Galahad", 80 ,20, 1);
        this.setArmorMap(damageType.FIRE, 3);
        this.setArmorMap(damageType.FROST, 3);
        this.setArmorMap(damageType.PHYSICAL, 6);
        this.setCanHeal(false);
        this.setExpEarned(true);
        this.setExpGiven(false);
        this.setStatFactors(0.02,0.0,0.05);

    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public void aoeAttack (ArrayList<Unit> units) {
        if (this.getHP() > this.getHP() / 10) {
            this.aoeAttackAct.aoeAttackAct(units);
            this.changeHP(-(this.getHP() / 10));
        }
    }
}


class Paladin extends Unit implements attackInterface<Unit>, healInterface<Unit>,aoeAttackInterface<ArrayList<Unit> > {

    private Action attackAct = new Action("ATTACK", "PHYSICAL",this.getMaxAttack(),this.getUnit());
    private Action healAct = new Action("HEAL", this.getMaxAttack());
    private Action aoeAttackAct = new Action("AOEATTACK", "PHYSICAL",this.getMaxAttack(),this.getUnit());
    private TextWriter textWriter;

    public Paladin() {

        super("Paladin", 40, 50,15, 1);
        this.setArmorMap(damageType.FIRE, 3);
        this.setArmorMap(damageType.FROST, 3);
        this.setArmorMap(damageType.PHYSICAL, 6);
        this.setCanHeal(true);
        this.setExpEarned(true);
        this.setExpGiven(false);
        this.setStatFactors(0.1,0.4,0.05);
        textWriter = new TextWriter();
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP()  + ", Remaining MP :" +this.getMP()  ;
        return unitName;
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public void heal(Unit unit) {

        if (this.getMP() >=30) {

            this.healAct.healAct(unit);
            this.changeMP(-30);
            textWriter.addText("\n"   + unit.getName() + " was healed, Remaining HP " + unit.getHP() + "\n");
        }
        else {

            textWriter.addText("Not enough MP !");
        }
    }

    public void aoeAttack (ArrayList<Unit> units) {
        if (this.getHP() > this.getHP() / 10) {
            this.aoeAttackAct.aoeAttackAct(units);
            this.changeHP(-(this.getHP() / 10));
        }
    }
}

class FireArcher extends Unit implements attackInterface<Unit>,aoeAttackInterface<ArrayList<Unit> > {

    private Action attackAct = new Action("ATTACK", "FIRE", this.getMaxAttack(),getUnit());
    private Action aoeAttackAct = new Action("AOEATTACK", "PHYSICAL",this.getMaxAttack(),this.getUnit());

    public FireArcher() {

        super("Fire Archer", 10 ,20, 6);
        this.setArmorMap(damageType.FIRE, 10);
        this.setArmorMap(damageType.FROST, 0);
        this.setArmorMap(damageType.PHYSICAL, 1);
        this.setCanHeal(false);
        this.setExpEarned(true);
        this.setExpGiven(false);
        this.setStatFactors(0.1,0.0,0.05);
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public void aoeAttack (ArrayList<Unit> units) {
        if (this.getHP() > this.getHP() / 10) {
            this.aoeAttackAct.aoeAttackAct(units);
            this.changeHP(-(this.getHP() / 10));
        }
    }
}

class FrostArcher extends Unit implements attackInterface<Unit>,aoeAttackInterface<ArrayList<Unit> > {

    private Action attackAct = new Action("ATTACK", "FROST", this.getMaxAttack(),getUnit());
    private Action aoeAttackAct = new Action("AOEATTACK", "PHYSICAL",this.getMaxAttack(),this.getUnit());

    public FrostArcher() {

        super("Frost Archer", 10 ,20, 6);
        this.setArmorMap(damageType.FIRE, 0);
        this.setArmorMap(damageType.FROST, 10);
        this.setArmorMap(damageType.PHYSICAL, 1);
        this.setCanHeal(false);
        this.setExpEarned(true);
        this.setExpGiven(false);
        this.setStatFactors(0.1,0.0,0.05);
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public void aoeAttack (ArrayList<Unit> units) {
        if (this.getHP() > this.getHP() / 10) {
            this.aoeAttackAct.aoeAttackAct(units);
            this.changeHP(-(this.getHP() / 10));
        }
    }
}

class RedDragon extends Unit implements attackInterface<Unit> {

    private Action attackAct = new Action("ATTACK", "FIRE", this.getMaxAttack(),getUnit());

    public RedDragon() {

        super("Red Dragon", 200,30,1);
        this.setImmunity(damageType.FIRE);
        this.setArmorMap(damageType.PHYSICAL, 8);
        this.setIsEnemy(true);
        this.setExpEarned(false);
        this.setExpGiven(true);
        this.setStatFactors(0.0,0.0,0.0);
        this.setExpAfterLost(1000);
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }

}

class BlueDragon extends Unit implements attackInterface<Unit> {

    private Action attackAct = new Action("ATTACK", "FROST", this.getMaxAttack(),getUnit());

    public BlueDragon() {

        super("Blue Dragon", 200,30,1);
        this.setImmunity(damageType.FROST);
        this.setArmorMap(damageType.PHYSICAL, 8);
        this.setIsEnemy(true);
        this.setExpEarned(false);
        this.setExpGiven(true);
        this.setStatFactors(0.0,0.0,0.0);
        this.setExpAfterLost(1000);
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }
}

class Goblin extends Unit implements attackInterface<Unit> {

    private Action attackAct = new Action("ATTACK", "PHYSICAL", this.getMaxAttack(),getUnit());

    public Goblin() {

        super("Goblin", 30,20,1);
        this.setArmorMap(damageType.PHYSICAL, 5);
        this.setIsEnemy(true);
        this.setExpEarned(false);
        this.setExpGiven(true);
        this.setStatFactors(0.0,0.0,0.0);
        this.setExpAfterLost(25);
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }
}


class ForestTroll extends Unit implements attackInterface<Unit> {

    private Action attackAct = new Action("ATTACK", "PHYSICAL", this.getMaxAttack(),getUnit());

    public ForestTroll() {

        super("Forest Troll", 50,20,1);
        this.setArmorMap(damageType.PHYSICAL, 5);
        this.setArmorMap(damageType.FROST, 5);
        this.setIsEnemy(true);
        this.setExpEarned(false);
        this.setExpGiven(true);
        this.setStatFactors(0.0,0.0,0.0);
        this.setExpAfterLost(50);
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }
}

class MountainTroll extends Unit implements attackInterface<Unit> {

    private Action attackAct = new Action("ATTACK", "PHYSICAL", this.getMaxAttack(),getUnit());

    public MountainTroll() {

        super("Mountain Troll", 80,30,1);
        this.setArmorMap(damageType.PHYSICAL, 5);
        this.setArmorMap(damageType.FROST, 8);
        this.setArmorMap(damageType.FIRE, 5);
        this.setIsEnemy(true);
        this.setExpEarned(false);
        this.setExpGiven(true);
        this.setStatFactors(0.0,0.0,0.0);
        this.setExpAfterLost(80);
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }
}

class Wyvern extends Unit implements attackInterface<Unit> {

    private Action attackAct = new Action("ATTACK", "FIRE", this.getMaxAttack(),getUnit());

    public Wyvern() {

        super("Wyvern", 120,35,1);
        this.setArmorMap(damageType.PHYSICAL, 8);
        this.setImmunity(damageType.FIRE);
        this.setIsEnemy(true);
        this.setExpEarned(false);
        this.setExpGiven(true);
        this.setStatFactors(0.0,0.0,0.0);
        this.setExpAfterLost(150);
    }

    public void attack(Unit unit) {

        this.attackAct.attackAct(unit);
    }

    public String getDescription() {

        String unitName = this.getName() + " Remaining  HP: " + this.getHP() ;
        return unitName;
    }
}

class Action {

    private actionType action;
    private damageType damage;
    private int actionPower;
    private Unit actedUnit;


    public Action(String action, String damage, int actionPower,Unit actedUnit) {

        this.action = Enum.valueOf(actionType.class, action);
        this.damage = Enum.valueOf(damageType.class, damage);
        this.actionPower = actionPower;
        this.actedUnit=actedUnit;
    }

    public Action(String action, int actionPower) {

        this.action = Enum.valueOf(actionType.class, action);
        this.actionPower = actionPower;
    }



    public String getActionType() {

        return this.action.toString();
    }

    public String getDamageType() {

        return this.damage.toString();
    }

    public void attackAct(Unit unit) {

        var textWriter = new TextWriter();

        if (action.toString() == actionType.ATTACK.toString()) {

            if (unit.getImmunity() != damage) {

                int damRes = this.actionPower - unit.getArmorVal(damage);
                if(damRes>=1){
                    unit.changeHP(-damRes);
                }
                else
                {
                    unit.changeHP(-1);
                }

                if (unit.getHP() > 0) {

                    textWriter.addText(unit.getName() + " Got hit for "+ damRes+",  Remaining HP: "  + unit.getHP() + "\n");
                }
                else {
                    if(unit.isEnemy())
                    {
                        this.actedUnit.levelUp(unit.getExpAfterLost());
                    }
                    textWriter.addText(unit.getName() + " fainted\n");
                }
            }
            else {

                textWriter.addText("No effect, because enemy is immune!\n");
            }
        }
    }

    public void healAct(Unit unit) {

        if (action.toString() == actionType.HEAL.toString()) {

            unit.changeHP(this.actionPower);
        }
    }

    public void aoeAttackAct(ArrayList<Unit> unitsList) {

        if (action.toString() == actionType.AOEATTACK.toString()) {
            for (Unit tmp : unitsList)
            {
                var textWriter = new TextWriter();
                if (tmp.getImmunity() != damage) {

                    int damRes = this.actionPower - tmp.getArmorVal(damage);
                    if(damRes>=1){
                        tmp.changeHP(-damRes);
                    }
                    else
                    {
                        tmp.changeHP(-1);
                    }

                    if (tmp.getHP() > 0) {

                        textWriter.addText(tmp.getName() + " Got hit for "+ damRes+" !  Remaining HP: "  + tmp.getHP() + "\n");
                    }
                    else {
                        if(tmp.isEnemy())
                        {
                            this.actedUnit.levelUp(tmp.getExpAfterLost());
                        }
                        textWriter.addText(tmp.getName() + " fainted\n");
                    }
                }
                else {

                    textWriter.addText("No effect, because enemy is immune!\n");
                }
            }

        }
    }
}

