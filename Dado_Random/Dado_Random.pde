int dado;

void setup() {
  size(400, 400);
  dado = 1;
}

void draw() {
  background(255);
  if (dado == 1) {
    drawDice(200, 200);
  } else if (dado == 2) {
    drawDice(100, 100);
    drawDice(300, 300);
  } else if (dado == 3) {
    drawDice(100, 100);
    drawDice(200, 200);
    drawDice(300, 300);
  } else if (dado == 4) {
    drawDice(100, 100);
    drawDice(100, 300);
    drawDice(300, 100);
    drawDice(300, 300);
  } else if (dado == 5) {
    drawDice(100, 100);
    drawDice(100, 300);
    drawDice(200, 200);
    drawDice(300, 100);
    drawDice(300, 300);
  } else if (dado == 6) {
    drawDice(100, 100);
    drawDice(100, 200);
    drawDice(100, 300);
    drawDice(300, 100);
    drawDice(300, 200);
    drawDice(300, 300);
  }
  fill(0);
  textAlign(CENTER);
  text("Presione la barra espaciadora", width/2, height-20);
}

void drawDice(int x, int y) {
  fill(0);
  rectMode(CENTER);
  rect(x, y, 80, 80, 10);
  fill(255);
  if (dado % 2 != 0) {
    ellipse(x, y, 10, 10);
  }
  if (dado > 1) {
    ellipse(x - 30, y - 30, 10, 10);
    ellipse(x + 30, y + 30, 10, 10);
  }
  if (dado > 3) {
    ellipse(x - 30, y + 30, 10, 10);
    ellipse(x + 30, y - 30, 10, 10);
  }
  if (dado == 6) {
    ellipse(x - 30, y, 10, 10);
    ellipse(x + 30, y, 10, 10);
  }
}

void keyPressed() {
  if (key == ' ') {
    dado = int(random(1, 7));
    println("Se presiono");
  }
}
