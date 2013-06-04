/*
  File: D_10_v_3_0_e_1_Admin_area_not_drawn
  Date: 2013/06/05 05:51:39
  Src: 

*/
import java.io.File;
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Date;

String dirname = "//sdcard-ext/processing";

/* Methods: 

*/
public static long getMillSeconds_now() {
  
  Calendar cal = Calendar.getInstance();
  
  return cal.getTime().getTime();
  
}//private long getMillSeconds_now(int year, int month, int date)

public static String get_TimeLabel(long millSec) {
  
   SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.JAPAN);
   
  return sdf1.format(new Date(millSec));
  
}//public static String get_TimeLabel(long millSec)


void setup() {
  size(displayWidth, displayHeight);
  
  // http://processing.org/reference/fill_.html
  fill(255, 255, 0);
  
  rect(0, 0, 100, 100);
  
  File f = new File(dirname);
  
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
//        save("//sdcard/DCIM/a1/D-10_v-2-0_e-1.png");  // => Error
//        save(dirname + File.SEPARATOR + "D_10_v_2_0_e_2b_Add_time_label.png");  //=> [javac] シンボル: 変数 SEPARATOR
//        save(dirname + File.pathSeparator + "D_10_v_2_0_e_2b_Add_time_label.png");  // => Error
//        save(dirname + File.separator + "D_10_v_2_0_e_2b_Add_time_label.png");
        save(dirname + File.separator + "D_10_v_2_0_e_2c_" + get_TimeLabel(getMillSeconds_now()) + ".png");
        
        fill(100);
            
    } else {
  
      fill(222);
      ellipse(mouseX, mouseY, 50, 50);

    }
    
  } else {
      if (mouseX > 0 && mouseX < 100
        && mouseY > 0 && mouseY < 100) {
          
      } else {

        fill(0);
        ellipse(mouseX, mouseY, 50, 50);
        
      }//if (mouseX > 0 && mouseX < 100

  }//if (mousePressed) {

}//void draw() {

