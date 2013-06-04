/*
  File:D_9_v_1_0_e_1_hello_world
  Date: 2013/06/04 09:01:56
  Src: http://processing.org/tutorials/gettingstarted/

*/
void setup() {
  size(displayWidth, displayHeight, P3D);
  background(255);
  smooth();
}

void draw() {
//  fill(0);
  fill(20, 20, 0);
  
  textSize(32);
  text("Hello, World", 100, displayHeight/2);
}

