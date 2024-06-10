public Car[] cars;

class Road extends Terrain{
  public Road(int y){
    super(0, y, 50, 600, 1);
    float r = random(1, 5);
    cars = new Car[(int)r];
    for (int i = 0; i < cars.length; i++){
      cars[i] = new Car(0, this.getY());
    }
  }
 
 //Car[] getCars(){
 //  return this.cars;
 //}
 
 //void setCars(Car[] newCars){
 //  this.cars = newCars;
 //}
  
  @Override
  public void makeAvatar(){
    noStroke();
    fill(56, 56, 56);
    rect(super.getX(), super.getY(), super.getWidth(), super.getHeight());
    
    fill(110, 109, 109);
    rect(super.getX() + 20, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 170, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 320, super.getY() + 3, 50, super.getHeight()/8);
    rect(super.getX() + 470, super.getY() + 3, 50, super.getHeight()/8);
  }
}
