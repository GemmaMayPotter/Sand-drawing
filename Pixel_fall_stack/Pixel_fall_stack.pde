/**
 * Adapted from ArrayList of objects
 * by Daniel Shiffman.  
 * 
 * This example demonstrates how to use a Java ArrayList to store 
 * a variable number of objects.  Items can be added 
 * to the ArrayList.
 *
 * Click the mouse to add falling pixels.
 */

ArrayList<Pixel> pixels;
int pixelWidth = 15;

void setup() {
  size(640, 360);
  noStroke();

  // Create an empty ArrayList (will store Pixel objects)
  pixels = new ArrayList<Pixel>();

}

void draw() {
  background(255);

  for (int i = pixels.size()-1; i >= 0; i--) { 
    // An ArrayList doesn't know what it is storing so we have to cast the object coming out
    Pixel pixel = pixels.get(i);
    pixel.move(pixels);
    pixel.display();
    
  }  
  
  
}

void mousePressed() {
  // A new pixel object is added to the ArrayList (by default to the end)
  pixels.add(new Pixel(mouseX, mouseY, pixelWidth));
}
