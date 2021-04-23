
void begins() {
  theme.play();
  background(0);
  cosmetics();
  //title
  textSize(160);
  fill(255);
  textFont(bad);
  textAlign(CENTER, CENTER);
  text("PONG", 450, 175);
  //play buttons
  playone();
  playtwo();
}

void twoplayer() {
  mode = war;
}
void oneplayer() {
  mode = muahaha;
}

//a;lsdkfjslkdfj its due on THURSDYAJSHDJDHF 
void cosmetics() {
  fill(255, 39, 144);
  noStroke();
  //quads, because if i have to look back on all those vertices i will die
  quad(0, 150, 0, 175, 70, 250, 80, 200);
  quad(70, 250, 80, 200, 120, 130, 130, 170);
  quad(120, 130, 130, 170, 200, 275, 200, 230);
  quad(200, 275, 200, 230, 275, 170, 275, 190);

  fill(39, 239, 255);
  quad(625, 200, 625, 175, 685, 225, 690, 270);
  quad(685, 225, 690, 270, 750, 170, 755, 135);
  quad(750, 170, 755, 135, 825, 210, 830, 260);
  quad(825, 210, 830, 260, 900, 165, 900, 140);
}

void playone() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 425 && mouseY < 525) {
    stroke(251, 255, 39);
    strokeWeight(7);
    noFill();
    rect(150, 425, 200, 100);
  } else {
    stroke(251, 255, 39, 100);
    strokeWeight(7);
    noFill();
    rect(150, 425, 200, 100);
  }

  fill(255);
  textSize(45);
  text("1 PLAYER", 250, 470);
}

void playtwo() {
  if (mouseX > 550 && mouseX < 750 && mouseY > 425 && mouseY < 525) {
    stroke(251, 255, 39);
    strokeWeight(7);
    noFill();
    rect(550, 425, 200, 100);
  } else {
    stroke(251, 255, 39, 100);
    strokeWeight(7);
    noFill();
    rect(550, 425, 200, 100);
  }

  fill(255);
  textSize(40);
  text("2 PLAYERS", 650, 470);
}
