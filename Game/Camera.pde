public ArrayList<Terrain> background = new ArrayList<Terrain>();

public class Camera{

  public Camera(){
  }
  
  void makeAvatars(){
   for (Terrain current : background){
       current.makeAvatar();
    }
  }
  
  /**
  void advanceCam(){
    for (int i = 0; i < background.size(); i++){
      Road test = new Road(0);
      Terrain current = background.get(i);
      if (current.getClass() == test.getClass()){
        for (int j = 0; j < current.getCars().length; j++){
          Car[] c = current.getCars();
          c[i].setY(current.getY()+50);
      if (current.getClass().toString().equals("class Game$River")){
        River current = background.get(i);
        // MAKE GET LILYPADS METHOD IN RIVER CLASS

      
      //if (current.getClass() == test.getClass()){
      //  for (int j = 0; j < current.getCars().size; j++){
      //    current.getCars().get(i).setY(current.getY()+50);
      //Road test = new Road(0);
      if (current.getClass().toString().equals("class Game$River")){
        River currentRiv = background.get(i);
        Lilypad[] lilypads = currentRiv.getLilypads(); 
        for (int j = 0; j <= lilypads.size(); j++){
          lilypads[j].makeAvatar();
        }
      }
      else{
        Terrain current = background.get(i);
      }
      
      //print(current.getClass().toString());
      if (current.getClass().toString().equals("class Game$River")){
        //int rand = (int)random(4, 13);
        //for (int j = 0; j <= rand; j++){
        //  int randLoc = (int)random(0, 8);
          Lilypad lilypad = new Lilypad(50*randLoc, current.getY());
          background.add(lilypad);
        }

      //if (current.getClass().toString().equals("class Game$River")){
      //  //int rand = (int)random(4, 13);
      //  //for (int j = 0; j <= rand; j++){
      //  //  int randLoc = (int)random(0, 8);
      //    Lilypad lilypad = new Lilypad(50*randLoc, current.getY());
      //    background.add(lilypad);
      //  }
        
      //if (current instanceof Road){
      //  Road r = current;
      //  Car[] c_list = r.getCars();
      //  for (Car c : c_list){
      //    c.addY();
      //  }
      //}
      current.setY(current.getY()+50);
      if (current.getY() >= 600){
        background.remove(i);
      }
      current.makeAvatar();
      }
    }
    */
  
  
  
  void addTerrain(){
    int random = (int)random(1, 5); // produces random int from 1(inc) to 5(exc)
    if (random == 1){
      River river = new River(0,0);
      background.add(river);
    }
    if (random == 2){
      Road road = new Road(0);
      background.add(road);
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
