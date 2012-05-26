void setup() {
  size(200,200);
  smooth();
  background(255);
  Rond rond_1 = new Rond();
  rond_1.dessiner();
  Rond rond_2 = new Rond();
  rond_2.dessiner();
}

class Rond {

  // les paramètres spécifiques à chaque objet de cette classe
  float x, y;
  color c;

  // le « constructeur »
  Rond() {
    // choisir une position au hasard
    x = random(width);
    y = random(height);
    // choisir une couleur au hasard
    c = color( random(255), random(255), random(255) );
  } 

  // utiliser les paramètres de chaque objet pour les dessiner
  void dessiner() {
    fill(c);
    noStroke();
    ellipse(x, y, 10, 10);
  }

}

