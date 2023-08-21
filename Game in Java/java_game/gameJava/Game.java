import java.util.*;
import java.io.*;
import java.awt.*;
import java.awt.event.*;
import java.util.concurrent.TimeUnit;

import javax.swing.*;
import javax.swing.border.*;

class Game {

    private Level curLvl;
    private int rounds;
    private TextWriter textWriter;
    
    public Game(int rounds) {
        
        this.curLvl = new Level();
        this.rounds = rounds;
        this.textWriter = new TextWriter();
    }
    
    public void gameLoop() {
    
        for (int i = 0; i < this.rounds; i++) {
        
            this.textWriter.addText("Level: " + (i + 1));
            
            while (curLvl.executingRightNow()) {
            
                curLvl.curLevel();
            }
            
            if (curLvl.Win()) {
            
                curLvl = new Level();
            }
            else {
                
                textWriter.addText("YOU LOST! :(");
                break;
            }
        }
    }
    
    public void startLevel() {
    
        this.textWriter.addText("Now starting level...");
        this.curLvl.curLevel();
    }
    
    public Level getCurLevel() {
    
        return this.curLvl;
    }
}
