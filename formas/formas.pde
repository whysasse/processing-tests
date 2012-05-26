void setup(){
  size(400,400);
  smooth();
  background(255);
  
  formaBola b1 = new formaBola();
  b1.desenhar(20);
  
  formaQuadrado q1 = new formaQuadrado();
  q1.desenhar(20);
  
  formaTriangulo t1 = new formaTriangulo();
  t1.desenhar(20);
}

