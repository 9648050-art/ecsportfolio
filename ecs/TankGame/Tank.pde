class Tank {
  int x, y, w, h, speed, health;
  PImage iTankW, iTankA, iTankS, iTankD;
  char idir;
  int turretCount, laserCount;

  // constructor
  Tank() {
    x = 100;
    y = 100;
    w = 100;
    h = 100;
    speed = 2;
    health = 100;
    iTankW = loadImage("tankW.png");
    iTankA = loadImage("tankA.png");
    iTankS = loadImage("tankS.png");
    iTankD = loadImage("tankD.png");
    idir = 'w';
    turretCount = 1;
    laserCount = 100;
  }

  void display() {
    imageMode(CENTER);
    if (idir == 'w') {
      image(iTankW, x, y);
    } else if (idir == 'a') {
      image(iTankA, x, y);
    } else if (idir == 's') {
      image(iTankS, x, y);
    } else if (idir == 'd') {
      image(iTankD, x, y);
    }
  }
  void move(char dir) {
    idir = dir;
    if (dir == 'w') {
      idir = 'w';
      y = y - speed;
    } else if (dir == 's') {
      idir = 's';
      y = y + speed;
    } else if (dir == 'a') {
      idir = 'a';
      x = x - speed;
    } else if (dir == 'd') {
      idir = 'd';
      x = x + speed;
    }
  }
  boolean intersect(Obstacle o) {
    float distance = dist(x, y, o.x, o.y);
    if (distance > 100) {
      return true;
    } else {
      return false;
    }
  }

  boolean reachedEdge() {
    return x >= width+150 || x <= -150 || y > height + 150 || y < -150;
    // Logic for when to return true
  }
}
