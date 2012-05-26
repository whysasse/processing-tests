import processing.core.*; import java.applet.*; import java.awt.*; import java.awt.image.*; import java.awt.event.*; import java.io.*; import java.net.*; import java.text.*; import java.util.*; import java.util.zip.*; import javax.sound.midi.*; import javax.sound.midi.spi.*; import javax.sound.sampled.*; import javax.sound.sampled.spi.*; import java.util.regex.*; import javax.xml.parsers.*; import javax.xml.transform.*; import javax.xml.transform.dom.*; import javax.xml.transform.sax.*; import javax.xml.transform.stream.*; import org.xml.sax.*; import org.xml.sax.ext.*; import org.xml.sax.helpers.*; public class lines extends PApplet {public void setup() { 
  size(100, 100); 
  noLoop(); 
} 

public void draw() { 
  diagonals(40, 90); 
  diagonals(60, 62); 
  diagonals(20, 40); 
} 


public void diagonals(int x, int y) { 
  line(x, y, x+20, y-40); 
  line(x+10, y, x+30, y-40); 
  line(x+20, y, x+40, y-40); 
}

  static public void main(String args[]) {     PApplet.main(new String[] { "lines" });  }}