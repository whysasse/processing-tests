class formaQuadrado {
  float x, y;
  color c;
  
  formaQuadrado(){
    x = random(width);
    y = random(height);
    c = color( random(255), random(255), random(255) );
  }

  void desenhar(int tamanho){
    fill(c);
    noStroke();
    rect(x, y, tamanho, tamanho);
  } 
}

