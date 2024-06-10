public ArrayList<Terrain> background = new ArrayList<Terrain>();

public class Camera{

  public Camera(){
  }
  
  void makeAvatars(){
   for (Terrain current : background){
     if (current instanceof Car){
       current.move();
       current.shift();
     }
     else{
       current.makeAvatar();
     }
    }
  }
  
  
  void advanceCam(){
    //int currInd = 0;
    for (int i = 0; i < background.size(); i++){
      Road test = new Road(0);
      Terrain current = background.get(i);
      if (current.getClass() == test.getClass()){
        for (int j = 0; j < current.getCars().size; j++){
          current.getCars().get(i).setY(current.getY()+50);
        }
      }
      current.setY(current.getY()+50);
      if (current.getY() >= 600){
        background.remove(i);
      }
      current.makeAvatar();
    }
  }
  
  
  
  void addTerrain(){
    int random = (int)random(1, 5); // produces random int from 1(inc) to 9(exc) ??
    //print(random);
    /**
    if (random == 1){
      Car car = new Car(0, 0);
      background.add(car);
    }
    */
    /**
    if (random == 1){
      Highway highway = new Highway(0);
      background.add(highway);
    }
    */
    /**
    if (random == 3){
      Lilypad lilypad = new Lilypad(0, 0);
      background.add(lilypad);
    }
    */
    /**
    if (random == 4){
      Log log = new Log(0,0);
      background.add(log);
    }
    */
    if (random == 1){
      River river = new River(0,0);
      background.add(river);
    }
    if (random == 2){
      Road road = new Road(0);
      background.add(road);
      for (int i = 0; i < cars.length; i++){
        background.add(cars[i]);
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
