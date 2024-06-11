public ArrayList<Terrain> background = new ArrayList<Terrain>();

public class Camera{

  public Camera(){
  }
  
  void makeAvatars(){
   for (Terrain current : background){
       if (current instanceof Car){
         current.move();
       }
       else{
         current.makeAvatar();
       }
    }
  }
  
  void advanceCam(){
    for (int i = 0; i < background.size(); i++){
      Terrain current = background.get(i);
      current.setY(current.getY() + 50);
      if (current.getY() >= 600){
        background.remove(i);
      }
        current.makeAvatar();
     }
  }
  
  
  void addTerrain(){
    int random = (int)random(1, 5); // produces random int from 1(inc) to 5(exc)
    if (random == 1){
      River river = new River(0,0);
      background.add(river);
      river.addLilypad();
      for (int i = 0; i < river.getLilypads().size(); i++){
        background.add(river.getLilypads().get(i));
      }
    }
    if (random == 2){
      Road road = new Road(0);
      background.add(road);
      for (int i = 0; i < c_list.length; i++){
        background.add(c_list[i]);
      }
    }
    if (random == 3){
      float rockX = random(1, 12);
      Rock rock = new Rock(((int)rockX) * 50,0);
      background.add(rock);
    }
    if (random == 4){
      float treeX = random(1, 12);
      Tree tree = new Tree(((int)treeX) * 50,0);
      background.add(tree);
    }
  }
}
