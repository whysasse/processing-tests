void setup(){
  size(400,400);
  background(10,10,10);
  smooth();
  stroke(255);
  
}

void draw(){
  drawCircle(10);
}

void drawCircle(int size){
  float r = random(width);
  float s = random(height);
  
  ellipse(r,s,size,size);
}
