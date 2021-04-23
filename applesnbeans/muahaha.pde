
void muahaha() {
  background(0);
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
  if (ballx > width/2 && bally < righty && righty > 100) righty = righty - 2;
  else if (ballx > width/2 && bally > righty && righty < 500) righty = righty + 2;

  //the condemned
  fill(251, 255, 39);
  circle(ballx, bally, balldi);
  timer = timer - 1;
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

void pausationtwo() {
  mode = parleytwo;
}
