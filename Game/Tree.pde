class Tree extends Terrain{
  Tree(int x, int y){
    super(x, y, 50, 50, 2);
  }
  
  //@Override
  void makeAvatar(){
    //trunk
    noStroke();
    fill(88, 51, 3);
    rect(super.getX()+12.5, super.getY()+12.5, 25, 37.5);
    
    //leaves
    noStroke();
    fill(119, 175, 87);
    ellipse(super.getX()+25, super.getY()+12.5, 50, 25);
  }
}
