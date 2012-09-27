int gameState;
PImage levelMap;

int p1Width, p2Width;
int p1Height, p2Height;

int xPos1, xPos2;
int yPos1, yPos2;

float playerSpeed;

int fieldBuffer;

boolean upPressed1;
boolean downPressed1;
boolean leftPressed1;
boolean rightPressed1;

boolean upPressed2;
boolean downPressed2;
boolean leftPressed2;
boolean rightPressed2;

void setup() {
  imageMode(CENTER);
  size (700, 700);

  playerSpeed=2.6;

  fieldBuffer=5;

  gameState=1;
}

void draw() {

  //Gamestates

  if (gameState==1) {
    setup1();
    gameState++;
  }
  //   if(gameState==3){
  //    setup2();
  //    gameState++;
  //  }



  background(255);
  image(levelMap, width/2, height/2);

  stroke(0);
  fill(255, 0, 0);
  rect(xPos1, yPos1, p1Width, p1Height);
  
  stroke(0);
  fill(0,0,255);
  rect(xPos2, yPos2, p2Width, p2Height);

  //THE  COLLISION FIELDS-----------

  for (int l=yPos1;l<(yPos1+p1Height);l++) {
    color colorL=get(xPos1-fieldBuffer, l);

    if ( colorL==#000000) {
      leftPressed1=false;
    }
  }

  for (int r=yPos1;r<(yPos1+p1Height);r++) {
    color colorR=get(xPos1+p1Width+fieldBuffer, r);

    if ( colorR==#000000) {
      rightPressed1=false;
    }
  }

  for (int u=xPos1;u<(xPos1+p1Width);u++) {
    color colorU=get(u, yPos1-fieldBuffer);

    if ( colorU==#000000) {
      upPressed1=false;
    }
  }

  for (int d=xPos1;d<(xPos1+p1Width);d++) {
    color colorD=get(d, yPos1+p1Height+fieldBuffer);

    if ( colorD==#000000) {
      downPressed1=false;
    }
  }

  //--------------------


  //DEBUG 

  if (dist(mouseX, mouseY, xPos1, yPos1) < 10) {
    println(xPos1);
    println(yPos1);
  }


  if (upPressed1==true) {
    yPos1-=playerSpeed;
    yPos2+=playerSpeed;
  }
  if (downPressed1==true) {
    yPos1+=playerSpeed;
    yPos2-=playerSpeed;
  }

  if (leftPressed1==true) {
    xPos1-=playerSpeed;
    xPos2-=playerSpeed;
  }
  if (rightPressed1==true) {
    xPos1+=playerSpeed;
    xPos2+=playerSpeed;
  }
}

void keyPressed() {
  if (keyCode == UP) {
    upPressed1=true;
    upPressed2=true;
  }

  if (keyCode== DOWN) {
    downPressed1=true;
    downPressed2=true;
  }
  if (keyCode == LEFT) {
    leftPressed1=true;
    leftPressed2=true;
  }

  if (keyCode== RIGHT) {
    rightPressed1=true;
    rightPressed2=true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed1=false;
    upPressed2=false;
  }

  if (keyCode== DOWN) {
    downPressed1=false;
    downPressed2=false;
  }
  if (keyCode == LEFT) {
    leftPressed1=false;
    leftPressed2=false;
  }

  if (keyCode== RIGHT) {
    rightPressed1=false;
    rightPressed2=false;
  }
}

void setup1() {

  levelMap=loadImage("Untitled-1.png");

  p1Width=p2Width=20;
  p1Height=p2Height=20;

  xPos1=127;
  yPos1=357;
  
  xPos2=127;
  yPos2=300;
}

//void setup2() {

