class Food {

  int x;
  int y; 
  
void location() {
 
 int  temp1 = (int)(random(1,grid));    // creates a random location for the food object when the function when called 
  int  temp2 = (int)(random(1,grid));   // (int) gets rid of the decimal places since random returns a float 
 x = temp1*grid;                      // I am multiplying the the random number by the grid size so the food object stays on the grid 
 y = temp2*grid;                      // therefore the random number cannot be a number with a decimal place 
 //println(temp); 

}
 
void display() {            //this function draws the food object 
fill(100,0,130); 
rect(x,y,20,20); 
}

int xcord() {           // this function returns the x co ordinate of the food
return x; 
}

int ycord() {
return y; 
}




}