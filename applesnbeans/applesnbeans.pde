
//pong...we meet again, old foe
//and this time i shall triumph
//-----------------
//ah the glory of smacking around a ball with two circles
//unparallelled
//i dont have much to say here besides
//i know this one isn't as extra as the last one because
//i am utterly swamped in menial tasks
//oh well at least im done my physics final
//even if i bombed it utterly
//-----------------
//well i did have much to say! 
//a healthy comment prologue is the sign of a distressed mind :)
//and with that
//i asdlfjsdkjldfsjk here's the stuff idk bruh
//oh yeah also the AI's a little broken but its behaviour happens to mimick
//that of a panicked human so i think it all works out


//modes 
int mode;
final int begins = 0;
final int war = 1;
final int muahaha = 2;
final int parley = 3;
final int ends = 4;
final int parleytwo = 5;
final int endstwo = 6;

//minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer theme, over, hit, score;

float leftx, lefty, leftdi, rightx, righty, rightdi; 
float ballx, bally, balldi, vx, vy;
boolean wkey, skey, upkey, downkey;
int leftscore, rightscore, timer;

PFont bad, sike;

void setup() {
  size(900, 600);
  mode = begins;
  //fonts
  bad = createFont("Ka Blam.ttf", 160);
  sike = createFont("sketchy in snow.otf", 45);
  //asdjfhskjhfds
  leftx = 0;
  lefty = height/2;
  leftdi = 200;
  rightx = width;
  righty = height/2;
  rightdi = 200;
  ballx = width/2;
  bally = height/2;
  balldi = 75;
  //ball moves
  vx = 4;
  vy = 2;
  //key stuff
  wkey = false;
  skey = false;
  upkey = false;
  downkey = false;
  //score and timer
  leftscore = 0;
  rightscore = 0;
  timer = 60;
  //minim vars
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  over = minim.loadFile("over.mp3");
  hit = minim.loadFile("hit.mp3");
  score = minim.loadFile("score.mp3");
}

void draw() {
  if (mode == begins) {
    begins();
  } else if (mode == war) {
    war();
  } else if (mode == muahaha) {
    muahaha();
  } else if (mode == parley) {
    parley();
  } else if (mode == ends) {
    ends();
  } else if (mode == parleytwo) {
    parley();
  } else if (mode == endstwo) {
    endstwo();
  } else {
    println("ya moron. absolute failure. mode should definitely not be" + mode);
  }
}
