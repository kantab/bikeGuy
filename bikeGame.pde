/*
1.)Make the bike guy
2.)Make the back drop
3.)Make the obsticals
4.)Make Jumping
5.)Make Side scrolling
6.)


*/
float centerRectX = 800;
float centerRectY = 180;
float centerRectWidth = 50;
float centerRectHeight = 50;

float mouseRectWidth = 50;
float mouseRectHeight = 50;

int x=0;
int x5=0;
int x6=0;
int x2=1250;
int y=300;
int y3 = 40;
int y2=10;
int yc= 120;
int xpos=-1000;
int startx =0;
int starty =0;
int score=0;
int speed2=100;
double diff= 5;
int obj1x=-1100;
int obj1y=-1100;
int obj2x=-1100;
int obj2y=-1100;
int obj3x=-1100;
int obj3y=-1100;
int amountsclick=0;
boolean isup = false;
boolean start = false;
boolean spot = false;
float speed=1;
float velocity=0;
PImage img;
PImage img2;
PImage img3;
PImage img4;

void setup() {
  size(800, 270);
  img  = loadImage("art (6).png");
  img2 = loadImage("art (5).png");
  img3 = loadImage("art (11).png");
  img4 = loadImage("art (14).png");
  
}


void draw() {
  background(0);
  
  image(img, 0, 0);
  image(img3, x+centerRectX, centerRectY, centerRectWidth, centerRectHeight);
  image(img3, x+800, 180);
  image(img3, x5+obj1x, obj1y, centerRectWidth, centerRectHeight);
  image(img3, x5+obj1x, 180);
  image(img3, x6+obj2x, obj2y, centerRectWidth, centerRectHeight);
  image(img3, x6+obj2x, 180);
  
  if(amountsclick==10){
    //obj1x=x5+1200;
    //obj1y=180;
    //isup=true;
  }
 // if(isup==true){
    
  //}
  if(amountsclick==20){
    //obj2x=x6+1600;
    //obj2y=180;
   // diff++;
  }
  if(amountsclick==30){
    diff++;
  }
  
  
  if(x==y){
    start = false;
    
    
  }
  if(start==false){
    startx=0;
    starty=0;
    x=0;
    x5=0;
    x6=0;
    amountsclick=0;
   // x=800;
    
    
  }
  if(start == true){
    startx=-1000;
    starty=-1000;
      x-=diff;
      
  }
  //if(start == true && amountsclick>=10){
   // x5-=5;
 // }
 // if(start == true && amountsclick>=20){
   // x6-=5;
  //}
    
    if(x <= xpos){
     x=0;
    
    }
    //if(x5 == xpos){
    // x5=0;
    
    //}
    //if(x6 == xpos){
    // x6=0;
    
    //}
 
  
  fill(255,0,0);
  ellipseMode(CENTER);
  image(img2, 50, y3+y, mouseRectWidth, mouseRectHeight);
  image(img2, 30, y2+y, 150, 150);
  //ellipse(30,50+y,50,50);
  if (30 + mouseRectWidth > x+centerRectX && 30 
  < x+centerRectX + centerRectWidth && y2+y + mouseRectHeight > 
  centerRectY && y2+y< centerRectY + centerRectHeight) {
    start= false;
    
  }
  
 // if (30 + mouseRectWidth > x+obj1x && 30 
  //< x+obj1x + centerRectWidth && y2+y + mouseRectHeight > 
  //obj1y && y2+y< obj1y + centerRectHeight) {
    //start= false;
    
  //}
  
 // if (30 + mouseRectWidth > x+centerRectX && 30 
  //< x+centerRectX + centerRectWidth && y2+y + mouseRectHeight > 
  //centerRectY && y2+y< centerRectY + centerRectHeight) {
    //start= false;
    
  //}
  
   speed+=velocity;
  y+=speed;
  if(y2==10){
    isup= false;
  }

  if (y>160) {
    y=160;
    speed=0;
  } else if (y<10) {
    velocity*=-1;
    speed*=-1;
  }
  if(x== 10){
    spot = true;
  }
  if(isup==false && spot == true){
    System.out.println("GAME OVER");
  }
  fill(0);
  textSize(100);
  text(amountsclick, 500, 100);
  image(img4, startx, starty, 810, 280);
  //System.out.println(score);
  
}

void mousePressed() {
  speed-=10;
  if(mousePressed == true){
    amountsclick++;
    start= true;
    isup= true;
    startx= -1000;
    starty= -1000;
  }
}

void keyPressed() {
  if(keyCode=='s'){
     if( key =='s'){
       startx= -1000;
       starty= -1000;
     }
  }
  }