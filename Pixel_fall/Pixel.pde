// Simple falling pixel class

class Pixel {
  
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  
  Pixel(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    gravity = 0.1;
  }
  
    void move() {
    // Add gravity to speed
    speed = speed + gravity;
    // Add speed to y location
    y = y + speed;
    // If square reaches the bottom
    // draw square at the bottom
    if (y > height-w) {
      y = height-w;
    }
  }
  
  
  void display() {
    // Display the pixel
    fill(0);
    //stroke(0,life);
    square(x,y,w);
  }
}  
