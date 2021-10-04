class Bug {
  float posX;
  float posY;
  float velX, velY;
  float size = random(5,20);

  Bug() {
    posX = random(0, 800);
    posY = random(0, 800);

  }
  
  void display() {
    fill(256,247,135);
    square(posX, posY, size);
    
  }
  void move() {
    posX = posX+velX;
    posY = posY+velY;
    velX = random(-2, 2);
    velY = random(-2, 2);

    if (posX + 10 >= width || posX - 10 <= 0) {
      velX = velX*-1;
    }

    if (posY + 10 >= height || posY - 10 <= 0) {
      velY = velY*-1;
    }
  }
}
