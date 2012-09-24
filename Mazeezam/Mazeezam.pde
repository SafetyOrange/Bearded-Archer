int level;
PImage levelMap;

int p1Width;
int p1Height;

int xPos;
int yPos;

float playerSpeed;

int fieldBuffer;

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
  
  playerSpeed=2.2;
  
  fieldBuffer=5;

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

  for (int l=yPos;l<(yPos+p1Height);l++) {
    color colorL=get(xPos-fieldBuffer, l);

    if ( colorL==#000000) {
      leftPressed=false;
    }
  }

  for (int r=yPos;r<(yPos+p1Height);r++) {
    color colorR=get(xPos+p1Width+fieldBuffer, r);

    if ( colorR==#000000) {
      rightPressed=false;
    }
  }
  
    for (int u=xPos;u<(xPos+p1Width);u++) {
    color colorU=get(u, yPos-fieldBuffer);

    if ( colorU==#000000) {
      upPressed=false;
    }
  }
  
    for (int d=xPos;d<(xPos+p1Width);d++) {
    color colorD=get(d, yPos+p1Height+fieldBuffer);

    if ( colorD==#000000) {
      downPressed=false;
    }
  }







  //--------------------


  if (upPressed==true) {
    yPos-=playerSpeed;
  }
  if (downPressed==true) {
    yPos+=playerSpeed;
  }

  if (leftPressed==true) {
    xPos-=playerSpeed;
  }
  if (rightPressed==true) {
    xPos+=playerSpeed;
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

