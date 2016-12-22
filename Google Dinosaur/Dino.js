function Dino() {
  this.ground = height-115;
  this.x = 100;
  this.y = this.ground-15;
  this.vel = 0;
  this.g = 0;



//draws the dinosaur on the screen
  this.show = function() {
    fill(50,50,255);
    ellipse(this.x,this.y,30,30);
  }



//moves the dinosaur
  this.move = function() {

    this.vel += this.g;
    this.y += this.vel;

    if(this.vel>0 && this.y>this.ground-15) {
      this.vel = 0;
      this.y = this.ground-15;
      check = true;

    }

  }


  //makes the dinosaur jump 

  this.jump = function() {
    this.g = 1.5;
    this.vel = -20;

  }




  this.xcord = function() {
    return this.x;
  }




  this.ycord = function() {
    return this.y;
  }


}
