class formaBola {
  float x, y;
  color c;
  
  formaBola(){
    x = random(width);
    y = random(height);
    c = color( random(255), random(255), random(255) );
  }

  void desenhar(int tamanho){
    fill(c);
    noStroke();
    ellipse(x, y, tamanho, tamanho);
  } 
}

