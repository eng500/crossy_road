class Tree extends Terrain{
  public Tree(int x, int y){
    super(x, y, 50, 50, 2);
    int[] info = {roundX(), roundY(), getResponse()};
    oList.add(info);
  }
  
  @Override
  public int roundX(){
    return super.getX();
  }
  
  @Override
  public int roundY(){
    return super.getY();
  }
  
  @Override
  public void makeAvatar(){
    //trunk
    noStroke();
    fill(88, 51, 3);
    rect(super.getX() + 16, super.getY() + 24, 18, 25);

    
    //leaves
    noStroke();
    fill(119, 175, 87);
    ellipse(super.getX() + 26, super.getY() + 15, 40, 30);
  }
}
