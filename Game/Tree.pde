class Tree extends Terrain{
  public Tree(int x, int y){
    super(x, y, 50, 50, 2);
  }
  
  //@Override
  public void makeAvatar(){
    //trunk
    noStroke();
    fill(88, 51, 3);
    rect(super.getX()-9, super.getY()+12.5, 18, 25);
    
    //leaves
    noStroke();
    fill(119, 175, 87);
    ellipse(super.getX(), super.getY(), 50, 25);
  }
}
