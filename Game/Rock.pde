class Rock extends Terrain{
  public Rock(int x, int y){
    super(x, y, 50, 50, 3);
  }
  
  @Override
  void makeAvatar(){
    noStroke();
    fill(96, 191, 100);
    
  }
}
