/*
1.)Make the bike guy
2.)Make the back drop
3.)Make the obsticals
4.)Make Jumping
5.)Make Side scrolling
6.)


*/

float x=0;
float y=50;
float x1 = 1;
float y1 = 1;

void setup() {
  size(1000,1000);
  frameRate(60);
}
void draw (){
  background (255,55,55);
    
  fill(0,0,0);
  ellipseMode(CENTER);
  ellipse(150,50+y,50,50);
  ellipse(220,50+y,50,50);
}


void keyPressed(){
  if(key == ' '){
    y+=100;
    }
}