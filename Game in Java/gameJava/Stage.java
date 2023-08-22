import java.util.*;
import java.io.*;

class Stage {
    
    private HexTile curTile;
    private HexTile[][] stageMap;
    private ArrayList<HexTile> testList = new ArrayList<HexTile>();
     
    public Stage(int M, int N) {
        
        stageMap = new HexTile[M + 2][2*N + 3];
        
        for (int row = 1; row < (M + 1); row++) {
        
            int startCol = (row % 2) + 2;
            
            for (int col = startCol; col < (2*N + 1); col += 2) {
            
                stageMap[row][col] = new HexTile(row, col);
            }
        }

        for(int row = 1; row < (M + 1); row++) {

            int startCol = (row % 2) + 2;

            for(int col = startCol; col < (2*N + 1); col += 2) {
                
                stageMap[row][col].connect(stageMap[row-1][col-1], 0);
                stageMap[row][col].connect(stageMap[row-1][col+1], 1);
                stageMap[row][col].connect(stageMap[row][col-2], 2);
                stageMap[row][col].connect(stageMap[row][col+2], 3);
                stageMap[row][col].connect(stageMap[row+1][col-1], 4);
                stageMap[row][col].connect(stageMap[row+1][col+1], 5);
            }
        }
    }
    
    public HexTile CurTile(int x, int y) {
    
        return stageMap[x][y];
    }
    
    public HexTile[][] getMap() {
    
        return this.stageMap;
    }
}
