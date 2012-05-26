class formaTriangulo {
  float x, y;
  color c;

  formaTriangulo(){
    x = random(width);
    y = random(height);
    c = color( random(255), random(255), random(255) );
  }

  void desenhar(int tamanho){
    fill(c);
    noStroke();

    float a = x;
    float b = y;
    float c = x + tamanho;
    float d = y + tamanho;
    float e = x + tamanho/2;
    float f = y - (tamanho*1.73)/2;

    triangle(a, b, c, b, e, f);
  } 
}






