float radius = 60;
boolean grow = true;
int remaining = 10;


void setup() {
  size(500, 600);
  ellipseMode(RADIUS);
}

void draw() {
  frameRate(25);
  background(36, 193, 255);
  if (remaining == 0) {
    exit();
  }
  if (grow) {
    radius++;
    if (radius == 120) {
      delay(800);
      remaining--;
      grow = false;
    }
  } else {
    radius--;
    if (radius == 60) {
      delay(1000);
      grow = true;
    }
  }
  fill(255);
  textSize(100);
  textAlign(CENTER);
  text(remaining, width/2, height/2+200);
  noStroke();
  ellipse(width/2, height/2-100, radius, radius);
}
