ArrayList<Stroke> strokes = new ArrayList<Stroke>();

void setup() {
  size(1280, 720, P2D);
  background(0);
  bloomSetup();
}

void draw() {
  if (mousePressed) {
    if (strokes.size() < 1) strokes.add(new Stroke());
    strokes.get(strokes.size()-1).points.add(new PVector(mouseX, mouseY));
  }
 
  tex.beginDraw();
  tex.background(0);
  for (int i=0; i<strokes.size(); i++) {
    strokes.get(i).run();
  }
  tex.endDraw();  
  
  bloomDraw();
   
  surface.setTitle(""+frameRate);
}

void keyPressed() {
  strokes = new ArrayList<Stroke>();
}

void mouseReleased() {
  strokes.add(new Stroke());
}