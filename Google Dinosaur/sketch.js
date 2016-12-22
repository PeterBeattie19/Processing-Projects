var d;
var c = [];
var check = true;
var death = false;
var speed = 4;
function setup() {
  createCanvas(windowWidth,windowHeight);
  d = new Dino();
  c.push(new Cactus());
}

function draw() {

  if(death==false) {

  background(0);
//console.log(d.ycord());

stroke(255);
line(0, d.ground, width, d.ground);

  d.show();
  d.move();

  for(var i = 0; i<c.length; i++) {
    c[i].show();
    c[i].move();

  }

  if(frameCount%50==0) {
    c.push(new Cactus());
  }

   if(frameCount%1000==0) speed+=2;


   for(var i = 0; i<c.length; i++) {
if(d.xcord() > c[i].xcord() && d.xcord() < c[i].xcord()+30 && d.ycord() > c[i].ycord() ) {
  console.log("Death");
  death = true;
}
   }

 }

 else {
   textSize(32);
text("Game Over", width/2, height/2);
 }

 textSize(25);
 text("replay", 50, 50);
 fill(255);

if(mouseX>25 && mouseX<120 && mouseY>25 && mouseY<75 && mouseIsPressed ) {
  death = false;
}
}

function keyPressed() {
  if(check) {
  if(key = ' ') {
    check = false;
    d.jump();
  }
}
}
