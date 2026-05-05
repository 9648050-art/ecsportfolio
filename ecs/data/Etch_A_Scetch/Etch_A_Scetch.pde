// Mariama Sidibe | 17 Mar 2026 | Etch-A-Sketch
int x, y;
PImage e1;

void setup() {
  size(1001,818);
  x = width/2;
  y = height/2;
 e1 = loadImage("Etch.png");
  
 
}

void draw() {
   image(e1,0,0);
   strokeWeight(3);
   stroke(0);
}

void keyPressed() {
 

  if (key == 'd' || key == 'D') {
    moveRight(10);
  }
  else if (key == 'a' || key == 'A') {
    moveLeft(10);
  }
  else if (key == 'w' || key == 'W') {
    moveUp(10);
  }
  else if (key == 's' || key == 'S') {  
    moveDown(10);
  }

}

void moveRight(int l) {
  line(x, y, x + l, y);
  x = x + l;
}

void moveLeft(int l) {
  line(x, y, x - l, y);
  x = x - l;
}

void moveUp(int l) {
  line(x, y, x, y - l);
  y = y - l;
}

void moveDown(int l) {
  line(x, y, x, y + l);
  y = y + l;
}

void mouseReleased() {
  saveFrame ("line-######.png");
}
