int level;
PImage levelMap;

int p1Width;
int p1Height;

int xPos;
int yPos;

//DEBUG MATS
boolean upPressed;
boolean downPressed;
boolean leftPressed;
boolean rightPressed;

float fieldHeight;
float fieldWidth;


void setup() {
  imageMode(CENTER);
  size (700, 700);
  
  
  xPos=0;
  yPos=0;
  
  p1Width=20;
  p1Height=20;
  
  level=1;
  levelMap=loadImage("Untitled-1.png");
}

void draw() {
  background(255);
  image(levelMap, width/2, height/2);

  noStroke();
  fill(255, 0, 0);
  rect(xPos, yPos, 20, 20);
  
  //THE FIELDS-----------

for(int l=yPos;l<(yPos+p1Height);l++){
  color colorL=get(xPos-10,l);
  
  if ( colorL==#000000){
   leftPressed=false;
  }
  
}  
  //--------------------

//  for (int i=0;i<width;i++) {
//    for (int j=0;i<height;i++) {
//
//      color c=get(i, j);
//    }
//  }



  if (upPressed==true) {
    yPos-=2.2;
  }
  if (downPressed==true) {
    yPos+=2.2;
  }

  if (leftPressed==true) {
    xPos-=2.2;
  }
  if (rightPressed==true) {
    xPos+=2.2;
  }
}

void keyPressed() {
  if (keyCode == UP) {
    upPressed=true;
  }

  if (keyCode== DOWN) {
    downPressed=true;
  }
  if (keyCode == LEFT) {
    leftPressed=true;
  }

  if (keyCode== RIGHT) {
    rightPressed=true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed=false;
  }

  if (keyCode== DOWN) {
    downPressed=false;
  }
  if (keyCode == LEFT) {
    leftPressed=false;
  }

  if (keyCode== RIGHT) {
    rightPressed=false;
  }
}

