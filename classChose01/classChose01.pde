Chose une_chose = new Chose();
Chose une_autre = new Chose();

void draw() {
  une_chose.bouger();
  une_autre.bouger();
  une_chose.dessiner();
  une_autre.dessiner();
}


class Chose {

  // avant de dessiner, définir la position x,y de la chose (au milieu)
  float x = 50, y = 50;

  void bouger() {
    // fond blanc à chaque instant
    background(255);
    // ajouter -1, 0, ou +1 à la position x de la chose
    x += random(-1,1);
    // ajouter -1, 0, ou +1 à la position y de la chose
    y += random(-1,1);
  }

  void dessiner() {
    // dessiner la chose
    ellipse(x, y, 5, 5);
  }

}
