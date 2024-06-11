int[] l_loc = new int[12]; //maps the horizontal river (0 mean no lily, 1 means lily)

public class River extends Terrain{
  public River(int x, int y){
    super(0, y, 50, 600, 3);
    int count = 0;
    int amt = (int) random(4, 9);
    while (count != amt){
      for (int i = 0; i < l_loc.length; i++){
        int determine = (int) random(0, 2);
        if (determine == 1){
          l_loc[i] = 1;
          count++;
        }
        else{
          l_loc[i] = 0;
        }
      }
    }
  }
  
  
  @Override
  public void makeAvatar(){
    noStroke();
    fill(113, 190, 255);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    
    /**
    for (int i = 0; i < l_loc.length; i++){
      if (l_loc[i] == 1){
        Lilypad l = new Lilypad(i, getY());
        l.makeAvatar();
      }
    }
    */
  }
}
