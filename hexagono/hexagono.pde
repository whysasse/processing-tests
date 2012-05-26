import toxi.geom.*;

HexGrid grid;

void setup() {
  size(640, 480);
  grid=new HexGrid(30);
}

void draw() {
  background(255);
  noFill();
  //translate(mouseX,mouseY);
  grid.draw(10, 10);
}

public class HexGrid {
  float cellWidth, cellHeight;
  Polygon2D hexProto;

  public HexGrid(float radius) {
    hexProto=new Circle(radius).toPolygon2D(6);
    for(Vec2D v : hexProto.vertices) v.rotate(PI/6);
    cellWidth=2*radius*sin(PI/3);
    cellHeight=cellWidth*sin(PI/3);
  }

  void draw(int cols, int rows) {
    for (int x=0; x<cols; x++) {
      for (int y=0; y<rows; y++) {
        Vec2D offset=getPosForCell(x,y);
        beginShape();
        for(Vec2D v : hexProto.vertices) vertex(v.x+offset.x,v.y+offset.y);
        endShape(CLOSE);
      }
    }
  }
  
  Vec2D getPosForCell(int x, int y) {
    return new Vec2D((x+(1==y%2 ? 0.5 : 0))*cellWidth, y*cellHeight);
  }
}

