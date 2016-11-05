  class Ball {
    

    
  void display()
  {
      fill(255,0,0);
      ellipse(x,y,20,20);         // Draw red disk centred on x,y with diameter 20

  }
  
  void move() {
      x=direction_x+x;            // changes the x position of the ball
      y=direction_y+y;            // changes the y position of the ball
          
  }
  
  void bounce() {
     if(x>440)   {     
       direction_x=-direction_x;   // Reverse direction if the ball hits the right boundary
    // exit(); 
     }
     
      if(y>(height-10)) direction_y=-direction_y;  // Reverse direction if the ball hits the bottom boundry 
      
    if(y<10) direction_y=-direction_y;           //Reverse direction if ball hits the top boundry 
   
     if(x<0){
      direction_x=-direction_x;              //if ball hits left boundry, reverse direction
      }
          
    
  }
  
  void hitPaddle_score() {
    
     if( (y<mouseY+60) && (x<30)  && (y>mouseY-60)) 
     { 
       direction_x=-direction_x;             //Reverse direction of the ball if it hits the rectangle(paddle),increase score by 1 and repositions the x position of the ball                  
      score++;    
       x=30;
     //  direction_x++;
       //direction_y++; 
    }   

            
      
        textSize(32);                
      fill(0,0,255);
      text(score, 10, 30);        // Display score
      text(lives,width-30, 30);   // Display lives
      
      if( (y<y2+60) && (x>x2-20)  && (y>y2-60)) 
     { 
       direction_x=-direction_x;             //Reverse direction of the ball if it hits the rectangle(paddle),increase score by 1 and repositions the x position of the ball                  
      score++;    
       x=420;
       lives++; 
     //  direction_x++;
       //direction_y++; 
    } 
      }
  
  
  
  }