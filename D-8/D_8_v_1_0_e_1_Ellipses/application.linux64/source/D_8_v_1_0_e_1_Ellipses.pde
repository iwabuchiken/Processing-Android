/*
  File:D_8_v_1_0_e_1_Ellipses
  Date: 2013/06/04 09:01:56
  Src: http://processing.org/tutorials/gettingstarted/

*/
void setup() {
  size(480, 120);
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

