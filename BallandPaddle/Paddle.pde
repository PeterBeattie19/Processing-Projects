class Paddle {


void display() 
{
      rectMode(CENTER); 

      fill(0,255,0);  // Set fill colour to green
      
      rect(10,mouseY-0,20,120); // Draws paddle and changes position on the y axis according to mouseY
      rect(x2,y2,20,120); 
      
   }
   
   void move() {
 
    
     
     if(direction_x>0) {
   while(y2 != y) {
   
   if(y2<y) {
   y2 = y2 +3; 
   }
   
   if(y2>y) {
   y2--;
   }
   
   }
   
     }
   }
   

}