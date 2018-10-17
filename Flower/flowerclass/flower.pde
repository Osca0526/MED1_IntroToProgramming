class Flower {
  float r;
  int n_petals;
  float x;
  float y;
  float petalColor;

float stepX=5;
float stepY=5;
  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
    r=temp_r;
    n_petals=temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
  }
  void display () {

    float ballX= random(width);
    float ballY= random(height);

    //fill(#FFA005);

    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      fill(#81EDA6);
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(200, 0, 0);
    ellipse(x, y, r*1.2, r*1.2);
  }
  void move() {

    x=x+stepX;
    y=y+stepY;
  }

  void bounce() {

    if (x>width)
    {
     
      stepX=-stepX;
      stepX=stepX*1.2;
    }
    else if (x<0) {
      stepX=-stepX;
    }
    if(y>height){
      stepY=-stepY;
      stepY=stepY*1.2;
    }
    else if(y<0) {
      stepY=-stepY;
    }
  }
}
