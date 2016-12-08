Snake s; 
Food f; 
int grid = 20;      //determines size of the grid the snake should move on 
boolean check = true; 
int count = 0; 
int frame = 6; 

int total = 0;
ArrayList<PVector> tail = new ArrayList<PVector>();    //list of for the tail (by Danuel Shiffman) 

void setup() {

  size(400,400); 
  s = new Snake();
  f = new Food(); 
   f.location();    //sets the first location of teh food object 
}


void draw() {
    frameRate(frame);   //reduces the frame rate since I am moving the snake by the grid value(20) every time through draw 

background(60); 

if(check) {
   s.display();   //draws snake 
   s.move();      //moves snake
   s.intersection(); 
   f.display();   //displays food object 
   
   if(f.xcord() == s.xcord() && f.ycord() == s.ycord()) {        //if the co ordinates of the food object match up with the co ordinates
   f.location();                                                 // of the snake then create a new location for the food onject 
   total++;               //increase length by one if the snake eats a piece of food 
   frame += 1; 
   }

fill(0, 255, 153);
textSize(32);
text("Score: "+total, 10, 30); 

}

else if(check==false) {
  count++; 
          fill(0, 255, 153);
textSize(50);
text("Game Over!", 70, 200);

if(count==5) exit(); 
println(count); 
}

}


void keyPressed(){         //this function controls what direction the snake moves in, using the arrow keys 
                           // this function was based on a a version of snake written by Katherine Quinlivan(link to her code in the accompannied document)  
                           //but instead of using a string I used a function that takes in arguments that sets the direction. 
  if(key==CODED) {

  if(keyCode==RIGHT) {
     s.setDirection(grid,0); 
  }
  
  else if(keyCode==LEFT) {
  s.setDirection(-grid,0); 
  }
  
    else if(keyCode==UP) {
  s.setDirection(0,-grid); 
  }
  
    else if(keyCode==DOWN) {
  s.setDirection(0,grid); 
  }
  
  }

}