import java.util.*;
import java.io.*;

class Dice {

    private int dices, sides, bonus;
    private Random randomObject = new Random();
    
    public Dice(int dicesNumber, int sidesNumber, int bonusNumber) {
    
        dices = dicesNumber;
        sides = sidesNumber;
        bonus = bonusNumber;
    }
    
    public Dice(int dicesNumber, int sidesNumber) {
    
        dices = dicesNumber;
        sides = sidesNumber;
        bonus = 0;
    }
    
    public int roll() {
        
        int temp = 0;
        
        for (int i = 0; i < dices; i++) {
            
            if (sides > 0) {
            
                temp += this.randomObject.nextInt(sides) + 1;
            }
            else {
            
                temp += 0;
            } 
        }
        
        return temp + bonus;
    }
}
