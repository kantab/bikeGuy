/*
1.)Make the bike guy
2.)Make the back drop
3.)Make the obsticals
4.)Make Jumping
5.)Make Side scrolling
6.)


*/

int x=20;
int y=300;
int xpos=-1500;
boolean start = false;
float speed=1;
float velocity=0;
PImage img;

void setup() {
  size(800, 400);
  img = loadImage("art.png");
}


void draw() {
  background(0);
  image(img, x, 150);
  if(start == true){
    
      x-=5;
  }
    
    if(x == xpos){
      x=20;
    }
  
 
  
  fill(255,0,0);
  ellipseMode(CENTER);
  ellipse(30,50+y,50,50);
  
   speed+=velocity;
  y+=speed;

  if (y>300) {
    y=300;
    speed=0;
  } else if (y<10) {
    velocity*=-1;
    speed*=-1;
  }
}

void mousePressed() {
  speed-=10;
  if(mousePressed == true){
    start= true;
  }
}

void keyPressed() {
  if(keyCode==UP){
     speed-=20;
  }
}