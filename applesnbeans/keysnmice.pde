
void mouseReleased() {
  if (mode == begins && mouseX > 150 && mouseX < 350 && mouseY > 425 && mouseY < 525) {
    oneplayer();
  } else if (mode == begins && mouseX > 550 && mouseX < 750 && mouseY > 425 && mouseY < 525) {
    twoplayer();
  } else if (mode == war) {
    pausation();
  } else if (mode == muahaha) {
    pausationtwo();
  } else if (mode == parley) {
    mode = war;
  } else if (mode == parleytwo) {
    mode = muahaha;
  } else if (mode == ends || mode == endstwo) {
    mode = begins;
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
}
