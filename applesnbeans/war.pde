
void war() {
  background(0);
  backgroundnstats();

  //paddles
  stroke(255);
  fill(255, 39, 144);
  circle(leftx, lefty, leftdi);
  if (wkey == true && lefty > 100) lefty = lefty - 5;
  if (skey == true && lefty < 500) lefty = lefty + 5;

  fill(39, 239, 255);
  circle(rightx, righty, rightdi);
  if (upkey == true && righty > 100) righty = righty - 5;
  if (downkey == true && righty < 500) righty = righty + 5;

  //the condemned
  fill(251, 255, 39);
  circle(ballx, bally, balldi);
  timer = timer - 1;
  //ball movement
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  if (dist(ballx, bally, leftx, lefty) < balldi/2 + leftdi/2) {
    hit.rewind();
    hit.play();
    vx = (ballx - leftx)/25;
    vy = (bally - lefty)/25;
  }
  if (dist(ballx, bally, rightx, righty) < balldi/2 + rightdi/2) {
    hit.rewind();
    hit.play();
    vx = (ballx - rightx)/25;
    vy = (bally - righty)/25;
  }
  if (bally < balldi/2 || bally > height-balldi/2) {
    vy = vy * -1;
  }

  isitover();
}

void pausation() {
  mode = parley;
}

//score n stuff
void backgroundnstats() {
  if (ballx < 10 && ballx > -10) {
    score.rewind();
    score.play();
    fill(251, 255, 39);
    noStroke();
    rect(0, 0, width/2, height);
    ballx = width/2;
    bally = height/2;
    rightscore = rightscore + 1;
    timer = 60;
  } else if (ballx > 890 && ballx < 910) {
    score.rewind();
    score.play();
    fill(251, 255, 39);
    noStroke();
    rect(width/2, 0, width/2, height);
    ballx = width/2;
    bally = height/2;
    leftscore = leftscore + 1;
    timer = 60;
  }
  strokeWeight(6);
  stroke(255);
  line(width/2, 0, width/2, height);
  fill(255);
  text(leftscore, width/4, 50);
  text(rightscore, 3*width/4, 50);
}

//when it all ends...
void isitover() {
  if (leftscore == 3) {
    mode = endstwo;
    over.rewind();
    over.play();
    leftscore = rightscore = 0;
    lefty = righty = height/2;
  } else if (rightscore == 3) {
    mode = ends;
    over.rewind();
    over.play();
    leftscore = rightscore = 0;
    lefty = righty = height/2;
  }
}
