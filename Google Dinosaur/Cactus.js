function Cactus() {

  this.height = random(40,65);
  this.x = width;
  this.y = 555 - this.height;
  this.xspeed = -speed;

this.show = function() {
  fill(255,5,50);
  rect(this.x , this.y, 30, this.height);
}


this.move = function() {
  this.xspeed = -speed;
  this.x += this.xspeed;
}

this.xcord = function() {
  return this.x;
}

this.ycord = function() {
  return this.y;
}


}
