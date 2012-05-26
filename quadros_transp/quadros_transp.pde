int x = -10;
int y = -20;
int transp = 0;
int num = 120;

void setup() { 
  size(500, 200);
  background(124); 
  noLoop(); 
} 

void draw() { 
  smooth();
  noStroke();
  //strokeWeight(2);
  //strokeCap(ROUND);
  for (int i = 0; i < num; i++) { 
    fill(255,transp);
    //stroke(255,transp);
    rect(x,y,60,20);
    x += 60;
    if (x > width){
      y += 20;
      x = -10;
    }
    transp += 3;
  }
}
