
float theta;//makes things jitter, 
float jitter;
float ellipseXposition=0;
float ellipseYposition=0;
float ellipsecolorR;
float ellipsecolorG;
float ellipsecolorB;
PImage bg;
void setup() {
  size(2736, 1824);//makes the canvas the size of my screen
  noStroke();//screw the borders of all the below shapes. 
  bg=loadImage("background.png");
    background(bg);
}

void draw() {
  //background(51);
  ellipsecolorB=map(ellipseXposition,0,1000,0,255);
ellipsecolorG=map(ellipseYposition,0,1000,0,255);
ellipsecolorR=map(ellipseXposition+ellipseYposition,0,2000,255,0);

  stroke(0,0,0,0);//sets the transparency of the outline to fully transparent, making it dissapear. part 2
   fill(100, 0, 255,5);
 if (second() % 2 == 0) {  
    jitter = random(-0.1, 0.1);
 }
  theta = theta+jitter;
  float c = cos(theta);
  translate(width/2, height/2);
  rotate(5*c);
  rectMode(CENTER);
  rect(ellipseXposition, ellipseYposition, 50+ellipseXposition, 50+ellipseYposition);  
     ellipseXposition=ellipseXposition+random(-100,100);//adds a random number to ellipseXposition, modified by m=sine(positionangle) so that the added number is either negative or positive 
   ellipseYposition=ellipseYposition+random(-100,100);//adds a random number to ellipseXposition, modified by m=sine(positionangle) so that the added number is either negative or positive 
    fill(ellipsecolorR, ellipsecolorG, ellipsecolorB,50);
   rect(ellipseXposition, ellipseYposition, 50, 50);  
    fill(ellipsecolorB, ellipsecolorG, ellipsecolorR,50);
    ellipse(ellipseYposition, ellipseXposition, 50, 50);
     fill(ellipsecolorR, ellipsecolorG, ellipsecolorB,5);
    ellipse(ellipseYposition, ellipseXposition,ellipseYposition+50, ellipseXposition+50);
    fill(ellipsecolorR, ellipsecolorG, ellipsecolorB,5);
   triangle(200, ellipseYposition+random(-50,+50), ellipseXposition+random(-50,+50), 50, ellipseXposition+random(-50,+50),50);
   fill(ellipsecolorG, ellipsecolorB, ellipsecolorR,50);
    triangle(ellipseXposition, 0, ellipseXposition+35, 65, ellipseXposition+75, 0);
    fill(ellipsecolorR, ellipsecolorB, ellipsecolorG,5);
    triangle(ellipseXposition,ellipseYposition,50+ellipseXposition,50+ellipseYposition,ellipseXposition+ellipseXposition,ellipseYposition+ellipseYposition);
   //println(ellipseYposition+random(15)*m);
   ellipseXposition = constrain(ellipseXposition, 0, 1000);
   ellipseYposition = constrain(ellipseYposition, 0, 1000);
}