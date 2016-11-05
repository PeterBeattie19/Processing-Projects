int x=250;            // Horizontal position of ball
     int direction_x=2;    // Change in horizontal position each time draw() executed
     int y=150;            // Vertical position of ball
     int direction_y=2;    // Change in horizontal position each time draw() executed
     int lives=3;
     int score=0;
     
     
     void setup ()
    {
      size (450,400);              // Create a window 450x400 pixels
    }
    
    void draw()
    {
      background (255,255,255);    // Clear screen to white  
      fill(0,255,0);              // Set fill colour to green
      rect(0,mouseY-0,20,120); // Position rectangle using mouse
      
      fill(255,0,0);
      ellipse(x,y,20,20);         // Draw blue disk centred on x,y with diameter 20
      x=direction_x+x;            // changes the x position of the ball
      y=direction_y+y;            // changes the y position of the ball
      
      if(x>440)         direction_x=-direction_x;  // Reverse direction if the ball hits the right boundary
      if(y>(height-10)) direction_y=-direction_y;  // Reverse direction if the ball hits the bottom boundry 
   
     if(y>(mouseY) && y<(mouseY+120) && x<30) 
     { 
       direction_x=-direction_x;             //Reverse direction of the ball if it hits the rectangle(paddle),increase score by 1 and repositions the x position of the ball                  
      score++;    
       x=30;
    
    }   
    if(y<10) direction_y=-direction_y;           //Reverse direction if ball hits the top boundry 
   
     if(x<0){
      direction_x=-direction_x;              //if ball hits left boundry, reverse direction
      }
    
      if(x<0) {
     
        lives--;                   //if the ball hits the left boundry decrease your lives by 1 
        
      }       
      
      if(lives==0) exit();           //if lives equals zero, the program stops
      
        textSize(32);                
      fill(0,0,255);
      text(score, 10, 30);        // Display score
      text(lives,width-30, 30);   // Display lives
    
     
   }