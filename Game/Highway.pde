class Highway{
  ArrayList<Road> roads;
  
  Highway(int y){
    roads = new ArrayList<Road>();
    int rand = (int)random(1, 5);
    Road r = new Road(y);
    roads.add(r);
    y += 50;
  }
  
  void makeHighway(){
    for (int i = 0; i < roads.size(); i++){
      roads.get(i).makeAvatar();
    }
  }
  
} 
