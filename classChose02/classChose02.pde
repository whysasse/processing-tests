Chose une_chose = new Chose();
Chose une_autre = new Chose();
Chose une_autre2 = new Chose();

void setup() {
 size(200,200); 
 noStroke();
 smooth();
}

void draw() {
 // fond blanc à chaque instant
 background(255);
 // allez! au travail!
 une_chose.action();
 une_autre.action();
 une_autre2.action();
}


class Chose {

 // avant de dessiner, définir la position x,y de la chose (au milieu)
 float x = 100, y = 100;

 void action() {
   bouger();
   dessiner();
 }

 void dessiner() {
   fill(0,0,0,255); // couleur noir, opacité maximum
   ellipse(x, y, 25, 25);
 }

 void bouger() {
   // ajouter -1, 0, ou +1 à la position x de la chose
   x += random(-6,6);
   // ajouter -1, 0, ou +1 à la position y de la chose
   y += random(-6,6); 
   // vérifier les bords. si trop loin, boucler
   if (x > width) x = 0;
   if (x < 0) x = width;
   if (y > height) y = 0;
   if (y < 0) y = height;
 }

}

