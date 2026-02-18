public void setup() {
  size(800, 800);
  background(255);
  noStroke();
  fill(150);
  sierpinski(50, 50, 700);
}

public void draw() {
  
}

public void mousePressed() {
  fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  int place = (int)(Math.random()*700);
  sierpinski(mouseX - place/2, mouseY - place/3, place);
}

public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    triangle(x, y, x + len, y, x + len/2, y + len);
  } 
  else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y + len/2, len/2);
  }
}
