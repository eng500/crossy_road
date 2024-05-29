class Highway{
  ArrayList<Road> roads;
  
  Highway(int y){
    roads = new ArrayList<Road>();
    int rand = (int)random(1, 5);
    
    for (int i = 0; i < rand; i++){
      Road r = new Road(y);
      r.makeAvatar();
      roads.add(r);
      y += 50;
    }
    
  }
} 
