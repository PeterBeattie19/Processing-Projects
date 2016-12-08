class Snake {
  int x = 200;
  int y = 200;
  int xspeed = 0;
  int yspeed = 0; 
 

void display() {
  fill(100,100,255); 
  
  if(total>0) {
    
   for (PVector v : tail) {          //enhanced for loop, for every tail in the array it creates a vector and draws it as a recttangle on the grid  
      rect(v.x, v.y, grid, grid);  // vector stores both a y and x position/value  (By Daniel Shiffman).
      
    }
    
  }
  
  rect(x,y,20,20);      //snake head 

}

void setDirection(int x1, int y1) {     // this function takes in parameters that sets the speed 
  xspeed= x1;                           // I use this function along with the keyPressed function 
  yspeed = y1;                          // so that it can set the direction using negative or positive values     
}

void move() {
  
  if (total > 0) {    
    
    if (total == tail.size() && !tail.isEmpty()) {        //if there is something in the tail array 
      tail.remove(0);                                 //removes the last part of the snake, this creates the slithering effect 
    }
    tail.add(new PVector(x, y));               //this adds a new vector into the array    (By Daniel Shiffman). 
  }
  
  x += xspeed; 
  y += yspeed;


 
 if(x==0) x=width-20; 
  if(x==width) x=0;
 if(y==0) y=height-20;
 if(y==height) y=0; 

}
 
      int xcord() {               //function that returns the x location 
    return x; 
    }
    
    int ycord() {
    return y; 
    }
    
    void intersection() {
    
    for(int  i = 0; i<total; i++) {
    PVector tailPosition = tail.get(i); 
    
    if(xcord()==tailPosition.x && ycord()==tailPosition.y) {
                   check = false; 
          tail.clear(); 
          total=0; 
          

      
    }
    }
    
    }

}