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
  initOsc();
  size(500, 500, P3D);
}

void draw() {
  fill(255,255,255);

  switch(val) {
    case 0:
      rect(0, 0, 250, 250);
      break;
    case 1:
      rect(250, 0, 250, 250);
      break;
    case 2:
      rect(0, 250, 250, 250);
      break;
    case 3:
      rect(250, 250, 250, 250);
      break;
    default:
      clear();
  }

  val = -1;
}
