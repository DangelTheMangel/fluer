ArrayList <Flyes> myFlyes = new ArrayList <Flyes>();
ArrayList <BigFlyes> myBigBoys = new ArrayList <BigFlyes>();

void setup() {
  size(800, 600);
  frameRate(30);


}

void draw() {
  clear();
  background(255);
  
  for(BigFlyes b : myBigBoys){
  b.display();
  b.move();
  }
  
  for(Flyes f : myFlyes){
  f.display();
  f.move();
  }
  
/*    for(BigFlyes b : myFlyes){
  b.display();
  b.move();
  }*/
}




void mousePressed() {
  for ( int i=0; i <20; i++) {
myFlyes.add(new Flyes(mouseX + i, mouseY + i, random(-2, 1), (int)random(1, 255), (int)random(1, 255), (int)random(1, 255), random(1.10)));
myBigBoys.add(new BigFlyes(mouseX + i, mouseY + i, random(-2, 1), (int)random(1, 255), (int)random(1, 255), (int)random(1, 255), random(1.10)));
  }
}

void keyPressed() {
  for ( int i=0; i <20; i++) {
myFlyes.add(new Flyes(mouseX + i, mouseY + i, random(-2, 1), (int)random(1, 255), (int)random(1, 255), (int)random(1, 255), random(1.10)));
myBigBoys.add(new BigFlyes(mouseX + i, mouseY + i, random(-2, 1), (int)random(1, 255), (int)random(1, 255), (int)random(1, 255), random(1.10)));
  }
}
