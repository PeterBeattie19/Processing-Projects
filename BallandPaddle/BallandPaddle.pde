    Ball b;
    Paddle p; 
    
 
     int y2 = 0;
     int x2 = 440;
     int x=250;            // Horizontal position of ball
     int direction_x=2;    // Change in horizontal position each time draw() executed
     int y=350;            // Vertical position of ball
     int direction_y=2;    // Change in horizontal position each time draw() executed
     int lives=0;
     int score=0;
     
     void setup ()
    {
      size (450,400);              // Create a window 450x400 pixels
       p = new Paddle(); 
       b = new Ball(); 
    }
    
    void draw()
    {

      background (255,255,255);    // Clear screen to white  
      
      b.display();
      b.move(); 
      b.bounce(); 
      b.hitPaddle_score(); 
      
      p.display(); 
      p.move();
     
      

   
     
   }     