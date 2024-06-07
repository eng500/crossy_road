public class Camera{
  ArrayList<Terrain> background;
  
  /**
  public Camera(){
    background = new ArrayList<Terrain>();
  }
  
  void makeAvatars(){
   for (Terrain current : background){
     current.makeAvatar();
    }
  }
  
  
  void advanceCam(){
    for (Terrain current : background){
      current.setY(current.getY()+50);
      if (current.getY() > 600-51){
        background.remove(current);
      }
      //current.makeAvatar();
    }
  }
  */
  
  void addTerrain(){
    int random = (int)random(1, 9); // produces random int from 1(inc) to 9(exc) ??
    //print(random);
    if (random == 1){
      Car car = new Car(0, 0);
      background.add(car);
    }
    if (random == 2){
      Highway highway = new Highway(0);
      background.add(highway);
    }
    if (random == 3){
      Lilypad lilypad = new Lilypad(0, 0);
      background.add(lilypad);
    }
    if (random == 4){
      Log log = new Log(0,0);
      background.add(log);
    }
    if (random == 5){
      River river = new River(0,0);
      background.add(river);
    }
    if (random == 6){
      Road road = new Road(0);
      background.add(road);
    }
    if (random == 7){
      Rock rock = new Rock(0,0);
      background.add(rock);
    }
    if (random == 8){
      Tree tree = new Tree(0,0);
      background.add(tree);
    }

  /**
  void add Terrain(){
    int rand()
>>>>>>> Emily
  }
  */
}
