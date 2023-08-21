import java.util.*;
import java.io.*;

interface formsGrid<T> {

    void connect(T neighbour, int arrayPosition);
    T[] getNeighbours();
}

class HexTile implements formsGrid<HexTile> {
    static final int MAX_NEIGHBOURS = 6;
    private HexTile[] neighbours;
    private int x_axis;
    private int y_axis;
    private Unit unitOnThisTile;
    
    public HexTile(int x, int y) {
    
        neighbours = new HexTile[MAX_NEIGHBOURS];
        this.x_axis = x;
        this.y_axis = y;
        this.unitOnThisTile = null;
    }
    
    public void connect(HexTile neighbour, int neighbourCount) {
        
        this.neighbours[neighbourCount] = neighbour;
    }
    
    public HexTile[] getNeighbours() {
    
        return this.neighbours;
    }

    public int getXAxis() {
    
        return this.x_axis;
    }
    
    public int getYAxis() {
    
        return this.y_axis;
    }

    public boolean isEmpty() {
    
        if (this.unitOnThisTile != null) {
            
            return false;
        }
        else {

            return true;
        }
    }
    
    public Unit getUnitOfThisTile() {
    
        return this.unitOnThisTile;
    }
    
    public void setUnitOnThisTile(Unit setUnit) {
        
        this.unitOnThisTile = setUnit;
    }
    
    public double euclDist(HexTile tile) {
    
        return Math.sqrt(Math.pow((this.getXAxis() - tile.getXAxis()), 2) + Math.pow((this.getYAxis() - tile.getYAxis()), 2));
    }
}


