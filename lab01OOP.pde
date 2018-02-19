//readylikespaghetti
//Lab 1(B), 02/02/18
//Colaborated with no one, used Processing.org, the book, and the lab handout for suggestions. 

/*
The below program will be a way to create interesting looking computer screen 
backgrounds, so it should be large enough to fill a screen, use soft colors,
and allow the user to control some aspect about the looks/asthetic of the canvas.
*/

float theXposition=0; //is the var used for my x positions in most of my shapes
float theYposition=0; //is the var used for my y positions is most of my shapes
float colorR;//going to be used to define the red in my fill functions
float colorG;//going to be used to define the green in my fill functions
float colorB;//going to be used to define the blue in my fill functions
int intencity=1; //shall be used for waiting for a keypress to set all the intencities to 0, so the image looks like it stopped drawing. 
//PImage bg; //this would be used to call an image from outside the program, i have it in my program folder in order for it to work
 float m; //going to be used for my map fuction, so i can set the intencity of the little shapes, 
void setup() {
  size(2736, 1824);//makes the canvas the size of my screen
  noStroke();//screw the borders of all the below shapes. 
 // bg=loadImage("background.png"); //sets bg to be the image i want, so I don't need to keep typing it all the time.
    background(0/*bg*/);//sets the background to black, also you have the option to load the image of your choice, just make sure its in the same folder as your program
    frameRate(30);//makes the drawing not draw as fast, this should be set to your personal preference, 
}

void draw() {

  colorB=map(theXposition,0,1000,0,255); //makes sure the color red tracks the x position of our shapes
  colorG=map(theYposition,0,1000,0,255); //makes sure the color green tracks he y position of our shapes
  colorR=map(theXposition+theYposition,0,2000,255,0); //makes sure the color blue inversly tracks the combined x,y of our shapes
  m=map(mouseX*intencity,0,2736,0,255);//this allows us to use m in our fill functions to change the intencity of our shapes based on left right position of the mouse
  stroke(0,0,0,0);//sets the transparency of the outline to fully transparent, making it dissapear


  translate(width/2, height/2);//this puts all shapes centered along the x,y, in the screen 
  rotate(mouseX+mouseY);//rotates all shapes by the position of the mouse, intented to look random, but actually be user controlled  
  
  rectMode(CENTER);//makes rectangles not be wonky
     fill(colorR, colorG, colorB,5*intencity);//colors the below shape a set low intencity, random color
  rect(theXposition, theYposition, 50+theXposition, 50+theYposition);//makes a rectangle, enitially of sidelength 50, but random afterwards  

    fill(colorR, colorG, colorB,m*intencity);//user controlled intencity, random color
   rect(theXposition, theYposition, 50, 50);//set size of rectangle, semi random position  
  
    fill(colorB, colorG, colorR,m*intencity);//user controlled intencity, random color
    ellipse(theYposition, theXposition, 50, 50);//set size of circle, random color
    
     fill(colorR, colorG, colorB,5*intencity);//random color, set intencity
    ellipse(theYposition, theXposition,theYposition+50, theXposition+50);//random sized ellipses
    
    fill(colorR, colorG, colorB,5*intencity);//set intencity, random color,
   triangle(200, theYposition+random(-50,+50), theXposition+random(-50,+50), 50, theXposition+random(-50,+50),50);//random sized triangles
   
   fill(colorG, colorB, colorR,m*intencity);//random color, user controlled intencity
    triangle(theXposition, 0, theXposition+35, 65, theXposition+75, 0);//set size triangles
   
   
   
   theXposition=theXposition+random(-100,100);//adds a random number to ellipseXposition, modified by a random number so that the added number is either negative or positive 
   theYposition=theYposition+random(-100,100);//adds a random number to ellipseXposition, modified by a random number so that the added number is either negative or positive 
   theXposition = constrain(theXposition, 0, 1000);//constrained the x position to remaine mostly inside the canvas
   theYposition = constrain(theYposition, 0, 1000);//constrained the y position to remaine mostly inside the canvas
}

void keyPressed() {
 intencity=0;//makes it so the all intencities of all fills are set to 0, so the drawing appears stopped. 
}
