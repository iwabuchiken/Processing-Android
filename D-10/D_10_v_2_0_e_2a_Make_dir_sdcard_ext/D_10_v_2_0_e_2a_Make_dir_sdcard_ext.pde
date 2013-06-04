/*
  File: D_10_v_2_0_e_2a_Make_dir_sdcard_ext
  Date: 2013/06/04 13:38:21
  Src: 

*/
import java.io.File;

String fname = "//sdcard-ext/processing";

void setup() {
  size(displayWidth, displayHeight);
  
  // http://processing.org/reference/fill_.html
  fill(255, 255, 0);
  
  rect(0, 0, 100, 100);
  
  File f = new File(fname);
  
  if (!f.exists()) {
    
      f.mkdir();
    
  }
  
}
 
void draw() {
  if (mousePressed) {
    
    if (mouseX > 0 && mouseX < 100
          && mouseY > 0 && mouseY < 100) {

//        save("/mnt/sdcard-ext/D-10_v-2-0_e-1.png");  // => Error
//        save("//mnt/sdcard-ext/D-10_v-2-0_e-1.png");  // => Error
        save("//sdcard/DCIM/a1/D-10_v-2-0_e-1.png");  // => Error
        
        fill(100);
            
    } else {
  
      fill(222);
      ellipse(mouseX, mouseY, 50, 50);

    }
    
  } else {
    fill(0);
    ellipse(mouseX, mouseY, 50, 50);
  }
//  ellipse(mouseX, mouseY, 50, 50);
}

