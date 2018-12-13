float r = 0;
float theta = 0;
float noiseScale = noise(r)*10;

void setup() {
    size(800, 800);
    background(#FFFFFF);
for( int i = 0; i<=5000; i++){
    float x = r * cos(theta);
    float y = r * sin(theta);

    fill(cos(theta*100+160), cos(theta)*100+160,255);
    ellipse(x+width/2, y+height/2, noise(r)*10, noise(r)*10);

    r += 0.5;
    theta += 0.02;
    noLoop ();
}
}
//void draw (){
 

//}
