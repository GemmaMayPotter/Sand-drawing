// Simple falling pixel class

class Pixel {
  
  float x;
  float y;
  float speed;
  float gravity;
  float w;
  
  Pixel(float x, float y, float w) {
    this.x = x;
    this.y = y;
    this.w = w;
    speed = 0;
    gravity = 0.1;
  }
  
  
    void move(ArrayList<Pixel> allPixels) {
      // Add gravity to speed
      speed = speed + gravity;
      // Add speed to y location
      float newY = y + speed;
    
      //check if square reaches the bottom
      if (newY > height - w) {
        y = height - w;
        x = x + random(-1,1);
        speed = 0;
        return;
      }
    
      for (Pixel other : allPixels) {
        
        if (other == this) continue;
      
        boolean overlapX = 
          abs(other.x - this.x) < w * 0.9;
      
        if (overlapX) {
          //is this new position overlapping another pixel from above?
          if (y < other.y && newY + w > other.y) {
            //stack on top
            y = other.y - w;
            speed = 0;
            return;
          }
        }
      }
      
      y = newY;
    }
  
  
    void display() {
      // Display the pixel
      fill(0);
      //stroke(0,life);
      square(x,y,w);
    }
}  
