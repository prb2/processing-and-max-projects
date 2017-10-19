PFont font;

int w = 640;
int h = 400;

int r = int(random(255));
int r_dir = 1;
int g = int(random(255));
int g_dir = 1;
int b = int(random(255));
int b_dir = 1;

void settings() {
  size(w, h);
}

void setup() {
  textFont(loadFont("CMUSansSerif-48.vlw"), 24);
  textAlign(CENTER, CENTER);
}

void draw() {
  int selector = int(mouseY / (height / 3));

  String active_color;
  String direction;

  if(selector == 0) {
    if (r > 255){
      r_dir = -1;
      r = 255;
    }
    if (r < 0) {
      r_dir = 1;
      r = 0;
    }

    r = (r + r_dir);

  } else if (selector == 1) {
    if (g > 255){
      g_dir = -1;
      g = 255;
    }
    if (g < 0) {
      g_dir = 1;
      g = 0;
    }

    g = (g + g_dir);

  } else {
    if (b > 255){
      b_dir = -1;
      b = 255;
    }
    if (b < 0) {
      b_dir = 1;
      b = 0;
    }

    b = (b + b_dir);
  }

  int f = int(map(mouseX, 0, w, 4, 80));
  frameRate(f);

  background(r, g, b);
  fill(255 - r, 255 - g, 255 - b);

  String msg = "rgb(" + r + ", " + g + ", " + b + ")\n";
  msg += "at a pace of " + f + " frames per second.";
  text(msg, w/2, h/2);
}
