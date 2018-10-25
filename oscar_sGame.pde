smiley happy;
//Evil enemy;
//Evil[] multiEnemy = new Evil[7];
ArrayList<Evil> evils;
int evilNumber = 8;

int[] headcirkel = {400, 400, 100, 100};
int[] eyeOnecirkel = {375, 390, 20, 30};
int[] eyeTwocirkel = {423, 390, 20, 30};
int[] mouthcirkel = {400, 430, 20, 20};
int enemyCounter;
int evilRadius =40;
float pointcounter = 0;
int[] pointcounterPos ={ 700, 700};

boolean keyUp = false, 
  keyDown = false, 
  keyLeft = false, 
  keyRight = false, 
  dead = false;
void setup()
{
  size(800, 800);
  happy = new smiley(headcirkel[0], headcirkel[1], headcirkel[2], headcirkel[3], 
    eyeOnecirkel[0], eyeOnecirkel[1], eyeOnecirkel[2], eyeOnecirkel[3], 
    eyeTwocirkel[0], eyeTwocirkel[1], eyeTwocirkel[2], eyeTwocirkel[3], 
    mouthcirkel[0], mouthcirkel[1], mouthcirkel[2], mouthcirkel[3]);
  evils = new ArrayList<Evil>();
}

void draw()
{
  background(#0A9014);
  if (evils.size() < evilNumber) {
    evils.add(new Evil(int(random(width)), 0, evilRadius, (random(5, 15))));
  }
  if (dead != true) {
    happy.display();
    happy.move();
  }
  fill(#4150D1);
  text("Points: "+ pointcounter, pointcounterPos[0], pointcounterPos[1]);



  for (int i = 0; i < evils.size(); i++)
  {
    evils.get(i).display();
    evils.get(i).move();
    
    if (evils.get(i).Ypos > height) {
      pointcounter++;
      evils.remove(i);
    }
    if (dead != true && dist(evils.get(i).Xpos, evils.get(i).Ypos, happy.tempheadX, happy.tempheadY) <= ((evils.get(i).r + happy.tempheadHR) / 2)) {
      dead = true;
      evils.remove(i);
      pointcounter = 0;
    }
  }
}

void keyPressed() {
  if (keyCode == UP) {
    keyUp = true;
  }
  if (keyCode == DOWN) {
    keyDown = true;
  }
  if (keyCode == LEFT) {
    keyLeft = true;
  }
  if (keyCode == RIGHT) {
    keyRight = true;
  }
  if (key == 'r') {
    dead = false;
    pointcounter= 0+1;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    keyUp = false;
  }
  if (keyCode == DOWN) {
    keyDown = false;
  }
  if (keyCode == LEFT) {
    keyLeft = false;
  }
  if (keyCode == RIGHT) {
    keyRight = false;
  }
}
