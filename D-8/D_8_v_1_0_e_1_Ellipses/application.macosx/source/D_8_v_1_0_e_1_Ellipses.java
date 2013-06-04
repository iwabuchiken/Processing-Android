import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class D_8_v_1_0_e_1_Ellipses extends PApplet {

/*
  File:D_8_v_1_0_e_1_Ellipses
  Date: 2013/06/04 09:01:56
  Src: http://processing.org/tutorials/gettingstarted/

*/
public void setup() {
  size(480, 120);
}

public void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "D_8_v_1_0_e_1_Ellipses" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
