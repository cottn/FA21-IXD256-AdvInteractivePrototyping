ArrayList<Bug> Bugs = new ArrayList<Bug>();
ArrayList<Possum> Possums = new ArrayList<Possum>();

void setup() {
  size(800, 800);
  Bugs.add(new Bug());
  Possums.add(new Possum());
  
  frameRate(60);
}

void draw() {
  background(157, 193, 131);
  for (Bug b : Bugs) {
    b.display();
    b.move();
  }
   for (Possum p : Possums) {
    p.display();
    p.move();
}
  //if(dist(posX, Bugs, Possums, Possums) < 50){
  //  boolean on = false;
  //}
  //println("Possum Position X: " + Possum.posX + " Y: " +Possum.posY);
  //if the possum finds a bug, it grows larger
  //if(dist(b.posX, b.posY, Possum.posX, Possum.posY) < 50){
  //Possum.radius += 5;    
  //}
}

void keyReleased(){
  if (key == ' '){
    Bugs.add(new Bug());
  }
  if (key == 'p'){
    Possums.add(new Possum());
  }
}
