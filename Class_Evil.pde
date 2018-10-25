class Evil
{
 int r;
 int Xpos;
 int Ypos;
float speed;

Evil(int temp_Xpos, int temp_Ypos,int temp_r, float temp_speed){
  
  r=temp_r;
  Xpos=temp_Xpos;
  Ypos=temp_Ypos;
  speed=temp_speed;
}

void display(){
fill(0,0,255);  
    ellipse(Xpos, Ypos,r,r);
    
}
void move(){
  Ypos+=speed;
}

}
