class Stroke {

  ArrayList<PVector> points;
  
  Stroke() {
    points = new ArrayList<PVector>();
  }
  
  void update() {
    //
  }
  
  void draw() {
    for (int i=1; i<points.size(); i++) {
      PVector p1 = points.get(i);
      PVector p2 = points.get(i-1);
      
      tex.strokeWeight(30);
      tex.stroke(255,127,0,127);
      tex.line(p1.x, p1.y, p2.x, p2.y);
      tex.strokeWeight(10);
      tex.stroke(255,200);
      tex.line(p1.x, p1.y, p2.x, p2.y);
    }
  }
  
  void run() {
    update();
    draw();
  }

}