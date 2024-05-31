class Rock extends Terrain{
  public Rock(int x, int y){
    super(x, y, 50, 50, 2);
  }
  
  @Override
  void makeAvatar(){
    noStroke();
    fill(125, 128, 126);
    ellipse(this.xPos-25, this.yPos-25, 48, 40);
    
  }
}
