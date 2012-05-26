size(700,100);
smooth();

float offset = 50;
float scaleVal = 40.0;
float angleInc = PI/40.0;
float angle = 0.0;
beginShape(TRIANGLE_STRIP);
for (int x = 4; x <= width+5; x +=5){
  float y = sin(angle)*scaleVal;
  if ((x%2) == 0) {
    vertex(x, offset+y);
  }else{
    vertex(x, offset-y);
  }
  angle += angleInc;
}
endShape();
