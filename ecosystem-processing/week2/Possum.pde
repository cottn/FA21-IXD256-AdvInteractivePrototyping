class Possum {
  float posX;
  float posY;
  float velX, velY;
  float radius = random(80,100);

  Possum() {
    posX = random(800);
    posY = random(800);
    velX = random(-5,5);
    velY = random(-5,5);
    
  }
  void display() {
    fill(44,44,44);
    circle(posX, posY, radius);
    
  }
  void move() {
    posX = posX+velX;
    posY = posY+velY;
    velX = random(-5,5);
    velY = random(-5,5);
    
    if (posX + 25 >= width || posX - 25 <= 0) {
      velX = velX*-1;
    }

    if (posY + 25 >= height || posY - 25 <= 0) {
      velY = velY*-1;
    }
  }
}
