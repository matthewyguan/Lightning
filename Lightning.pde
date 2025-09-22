int startX = 50;
int startY = 150;
int endX = 50;
int endY = 150;

void setup() {
  size(300, 300);
  strokeWeight(2);
  background(0);
}

void draw() {
  fill(139, 69, 19); 
  noStroke();
  rect(40, 140, 20, 100);
  fill(200);
  ellipse(50, 150, 50, 50); 
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (endX < width) {
    endX = startX + (int)(Math.random() * 10);   
    endY = startY + (int)(Math.random() * 19) - 9; 
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  noLoop();
}

void mousePressed() {
  startX = 50;
  startY = 150;
  endX = 50;
  endY = 150;
  background(0);
  loop();
}
