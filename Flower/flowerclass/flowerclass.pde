Flower myFlower;
void setup() {
  size(600,400);
  background(#C953C9);
  
  
  int _r1=40;
  int _petals=8;
  float _x=width/2;
  float _y=height/2;
  int _petalColor=#00FF00;
  
  myFlower= new Flower(_r1,_petals,_x,_y,_petalColor);
  myFlower.display();
  myFlower.move();
}

void draw(){
  background(#C953C9);
   myFlower.display();
  myFlower.move();
  myFlower.bounce();
  
}
