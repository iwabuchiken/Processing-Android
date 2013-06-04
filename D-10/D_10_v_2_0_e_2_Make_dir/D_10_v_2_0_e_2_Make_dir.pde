/*
  File: D_10_v_2_0_e_2_Make_dir
  Date: 2013/06/04 12:56:07
  Src: http://forum.processing.org/topic/mkdir-does-not-exist

*/
import java.io.File;

String fname = "//sdcard/DCIM/a1/processing";

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

    }
    
  } else {
    fill(0);
  }
  ellipse(mouseX, mouseY, 50, 50);
}

