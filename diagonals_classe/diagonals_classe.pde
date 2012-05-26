//variaveis globais globais
Diagonals da, db;

//faz uma vez quando carrega o programa
void setup(){
  size(200,200);
  smooth();
  // x, y, speed, thick, gray
  da = new Diagonals(0, 80, 1, 2, 0);
  db = new Diagonals(0, 55, 2, 6, 255);
}

//repete a cada reload de tela
void draw(){
  //dá refresh no fundo a cada reload de tela, então apaga o que tinha sido desenhado antes
  background(204);
  da.update();
  db.update();
}

class Diagonals {
  //variaveis globais dentro da classe
  int x, y, speed, thick, gray;
  
  //contrutor. faz uma vez quando a classe é carregada.
  Diagonals(int xpos, int ypos, int s, int t, int g){
    x = xpos;
    y = ypos;
    speed = s;
    thick = t;
    gray = g;
  }
  
  //método que efetivamente desenha as coisas na tela
  void update(){
    strokeWeight(thick);
    stroke(gray);
    line(x, y, x+20, y-40);
    line(x+10, y, x+30, y-40);
    line(x+20, y, x+40, y-40);
    x = x+speed;
    if (x > 200){
      x = -200;
    }
  }
}
