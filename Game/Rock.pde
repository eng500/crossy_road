class Rock extends Terrain{
  public Rock(int x, int y){
    super(x, y, 50, 50, 2);
    
    //ROCK SHLD BE RESPONSE 2 - testing for now
    //int[] info = {super.roundX(), super.roundY(), super.getResponse()};
    //oList.add(info);
    
    //println("Original rock X: " + super.getX());
    //println("rounded rock x: " + super.roundX());
    //println("Original rock Y: " + super.getY());
    //println("rounded rock y: " + super.roundY());

  }
  
  @Override
  public void makeAvatar(){
    noStroke();
    fill(125, 128, 126);
    ellipse(this.xPos+25, this.yPos+25, 48, 40);
    
  }
}
