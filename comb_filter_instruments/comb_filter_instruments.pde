import netP5.*;
import oscP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

int val = -1;

void initOsc() {
  oscP5 = new OscP5(this, 8080);
  myRemoteLocation = new NetAddress("127.0.0.1", 8080);
  oscP5.plug(this, "foo", "/foo");
}

public void foo(int value) {
  println("int received: " + value);
  val = value;
}

void setup() {
  frameRate(30);
  fullScreen();
  initOsc();
  // size(1000, 1000, P3D);
}

void draw() {
  fill(255,255,255);

  switch(val) {
    case 0:
      rect(0, 0, width/2, height/2);
      break;
    case 1:
      rect(width/2, 0, width/2, height/2);
      break;
    case 2:
      rect(0, height/2, width/2, height/2);
      break;
    case 3:
      rect(width/2, height/2, width/2, height/2);
      break;
    default:
      clear();
  }

  val = -1;
}
