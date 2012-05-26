Bestiole[] bestioles = new Bestiole[20];

void setup() {

 size(300,300);
 colorMode(HSB);      // HSB simplifie les couleurs aléatoires
 noStroke();
 smooth();            // formes anti-aliasées

 // pour chaque objet, choisir une taille &position de départ
 for(int i=0; i < bestioles.length; i++) {
   float taille = random(5,30);
   float depart_x = random(width);
   float depart_y = random(height);
   bestioles[i] = new Bestiole(depart_x, depart_y, taille);
 }
}

void draw() {

 background(255);

 for(int i=0; i < bestioles.length; i++) {
   bestioles[i].draw();
 }

}
class Bestiole {

 color couleur;
 float x, y, taille;

 Bestiole(float depart_x, float depart_y, float t) {
   x = depart_x;
   y = depart_y;
   taille = t;
   couleur = color(random(255), 255, 255); // hue, saturation, brightness
 }

 void draw() {
   bouger();
   dessiner();
 }

 void bouger() {
     // bouger aléatoirement en fonction de sa taille
     x += random(-taille/10,taille/10);
     y += random(-taille/10,taille/10);
     // boucler sur les bords du Sketch
     if (x > width + taille) x = -taille;
     if (x < -taille) x = width + taille;
     if (y > height + taille) y = -taille;
     if (y < -taille) y = height + taille;
 }

 void dessiner() {

   // comme chaque bestiole change l'orientation, il faut mémoriser
   // l'orientation d'origine pour pouvoir y revenir après chaque dessin
   pushMatrix();

   // dessiner le corps
   fill(couleur);
   translate(x,y);
   // le corps est composé de plein de cercles
   for(int i=0; i<360; i+=30) {
     pushMatrix();
     rotate(radians(i));
     translate(random(-taille/10,taille/10), random(-taille/10,taille/10));
     ellipse(taille/2, 0, taille, taille);
     popMatrix();
   }

   // dessiner le visage
   fill(255);
   translate(random(-taille/20,taille/20), random(-taille/20,taille/20));
   ellipse(-taille/3, -taille/4, taille/3, taille/3);
   ellipse( taille/3, -taille/4, taille/3, taille/3);
   ellipse(        0,  taille/5, taille/4, taille/4);

   popMatrix(); // revenir à l'orientation d'origine
   
 }

}
