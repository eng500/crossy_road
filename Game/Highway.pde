int rand = (int)random(1, 5);

class Highway extends Terrain{
  ArrayList<Road> roads;
  
  public Highway(int y){
    super(0, y, rand*50, width, 1);
    roads = new ArrayList<Road>();
    //int rand = (int)random(1, 5);
    Road r = new Road(y);
    roads.add(r);
    y += 50;
  }
  
  public void makeHighway(){
    for (int i = 0; i < roads.size(); i++){
      roads.get(i).makeAvatar();
    }
  }
  
} 
