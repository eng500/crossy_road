public class Camera{
  ArrayList<Terrain> background;
  
  public Camera(){
    ArrayList<Terrain> background = new ArrayList<Terrain>();
  }
  
  void advanceCam(){
    for (Terrain current : background){
      current.setY(current.getY()+50);
    }
  }
  
  /**
  void add Terrain(){
    int rand()
  }
  */
}
