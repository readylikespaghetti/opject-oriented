//readylikespaghetti
//Lab 1(B), 02/02/18
//Colaborated with no one, used Processing.org, the book, and the lab handout for suggestions. 


//this is the warm up


float randomadd=0;
float positionangle=0;
float ellipseXposition=500;
float ellipseYposition=500;
float m;
float ellipsecolorR;
float ellipsecolorG;
float ellipsecolorB;
void setup(){
   size(1000, 1000);
   background(150);
   frameRate(60);
}

void draw(){
ellipsecolorR=map(ellipseXposition,0,1000,0,255);
ellipsecolorG=map(ellipseYposition,0,1000,0,255);
ellipsecolorB=map(ellipseXposition+ellipseYposition,0,2000,255,0);
m=sin(positionangle);
  //background(150);
  stroke(0,0,0,0);//sets the transparency of the outline to fully transparent, making it dissapear. this is part 2
   fill(ellipsecolorR, ellipsecolorG, ellipsecolorB,70);

 //  ellipse(random(width), random(height), 5+randomadd%40, 5+randomadd%40); //this is part 3
    
    ellipse(ellipseXposition,ellipseYposition,150, 150);  
    ellipse(ellipseXposition,ellipseYposition,150, 150); 
   randomadd=randomadd+random(40);//changes the angle randomangle which will create a positive or negative number randomly, 
   positionangle=positionangle+random(50);//changes the angle randomangle by some random amount around the unit circle, outputting a positive or negative number. 
  
   ellipseXposition=ellipseXposition+random(100)*m;//adds a random number to ellipseXposition, modified by m=sine(positionangle) so that the added number is either negative or positive 
   ellipseYposition=ellipseYposition+random(100)*m;//adds a random number to ellipseXposition, modified by m=sine(positionangle) so that the added number is either negative or positive 
   
  // println(ellipseYposition+random(15)*m);//for troubleshooting
   ellipseXposition = constrain(ellipseXposition, 0, 1000);//constrains the x to be the canvas, same as the next line
   ellipseYposition = constrain(ellipseYposition, 0, 1000);
   
}

void keyPressed() { //sets the background to 150 gray, if any key is pressed. this is part 1
background(150); 
}

void mousePressed() {//this code block sets the position of the circle to the mouses coordinates, this is part 6
ellipseXposition=mouseX;
ellipseYposition=mouseY;
}