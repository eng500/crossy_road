public ArrayList<Lilypad> lilypads;

public class River extends Terrain{
  public River(int x, int y){
    super(0, y, 50, 600, 3);
    lilypads = new ArrayList<Lilypad>();
   }
   
  void addLilypad(){
    int rand = (int)random(5, 13);
    for (int j = 0; j <= rand; j++){
      int randLoc = (int)random(0, 8);
      Lilypad lilypad = new Lilypad(50*randLoc, yPos);
      lilypads.add(lilypad);
    }
  }
  
  ArrayList<Lilypad> getLilypads(){
    return lilypads;
  }
  
  @Override
  public void makeAvatar(){
    noStroke();
    fill(113, 190, 255);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    
    for (int i = 0; i < lilypads.size(); i++){ // for lilypads ArrayList (if we choose to implement that)
      lilypads.get(i).makeAvatar();
    }
  }
}
