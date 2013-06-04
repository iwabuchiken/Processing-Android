/*
  File: D_10_v_1_0_e_1_TouchDislpay_CircleDrawn
  Date: 2013/06/04 11:21:30
  Src: http://dev.classmethod.jp/smartphone/android/try-processing-for-android/

*/
void setup() {
  size(displayWidth, displayHeight);
}
 
void draw() {
  if (mousePressed) {
    fill(222);
  } else {
    fill(0);
  }
  ellipse(mouseX, mouseY, 50, 50);
}

