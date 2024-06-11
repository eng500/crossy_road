ArrayList<Lilypad> lilypads;

public class River extends Terrain{
  public River(int x, int y){
    super(0, y, 50, 600, 3);
    lilypads = new ArrayList<Lilypad>();
    //int[] info = {0, super.getY(), super.getResponse()};
    //oList.add(info);
  }
  
  ArrayList<Lilypad> addLilypad(){
    int rand = (int)random(4, 13);
    for (int j = 0; j < rand; j++){
      int randLoc = (int)random(0, 8);
      Lilypad lilypad = new Lilypad(50*randLoc, this.getY());
      lilypads.add(lilypad);
    // IMPLEMENT ADDING LILYPADS IN CAMERA CLASS, ADD MAKEAVATARS FOR LILYPADS IN 
    // RIVER MAKEAVATAR
    }
    return lilypads;
  }
  
  public ArrayList<Lilypad> getLilypads(){
    return lilypads;
  }
  
  @Override
  public void makeAvatar(){
    noStroke();
    fill(113, 190, 255);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    
    for (int i = 0; i < lilypads.size(); i++){
      lilypads.get(i).makeAvatar();
    }
  }
}
