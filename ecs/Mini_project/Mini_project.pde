// Mariama Sidibe | 31 Mar 2026 | Mini Project
int x, y, tx, ty, score;
float tw;
PImage player, target;
PImage bg;
int timer = 10;
int lastTime = 0;


void setup() {
  size(500, 500);
  bg = loadImage ("feild.png.jpg");
  bg.resize(width, height);
  x = width/2;
  y = height/2;
  spawnTarget();
  score = 0;
  tw =100.0;
  player = loadImage("bunny.png");
  imageMode(CENTER);
  target = loadImage("carrot.png");
  noCursor();
}

void draw() {
  background(bg);
  player.resize(60,60);
  imageMode(CENTER);
  image(player, mouseX,mouseY);
  target();
  scorePanel();
  if (frameCount % 60 == 0 && timer > 0) {
    timer--;
  }
 if (timer <= 0) {
   gameOver();
 }
}
void spawnTarget() {
  tx = int(random(50, width-50));
  ty = int(random(50, height-50));
}

void target() {
  println(score);
  rectMode(CENTER);
  image(target,tx,ty,tw,tw);
  tw = tw - 0.2;
  if (tw <=20) {
   tw = 100;
   spawnTarget();
  }
}

void mousePressed() {
  float d = dist(mouseX, mouseY, tx, ty);
  if (d < tw/2) {
    score = score +10;
    spawnTarget();
    tw = 100.0;
  }
}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  text("game Over!", width/2, height/2);
  noLoop();
}


void scorePanel() {
  fill(120, 127, 127, 127);
  rect(width/2, 15, width, 30);
  fill(255);
  textSize(32);
  text("Score:" + score, 20, 25);
  text("time: "+ timer, width - 100, 30);
}
