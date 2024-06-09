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
<<<<<<< HEAD
    rect(super.getX() + 16, super.getY() + 24, 18, 25);
=======
    rect(super.getX()+12.5, super.getY()+12.5, 25, 37.5);
>>>>>>> 2899e02c376a4a92f441e8a7bd7119fc2f48ec0a
    
    //leaves
    noStroke();
    fill(119, 175, 87);
<<<<<<< HEAD
    ellipse(super.getX() + 26, super.getY() + 15, 40, 30);
=======
    ellipse(super.getX()+25, super.getY()+12.5, 50, 25);
>>>>>>> 2899e02c376a4a92f441e8a7bd7119fc2f48ec0a
  }
}
