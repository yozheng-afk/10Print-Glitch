int x = 0;
int y = 0;
int spacing  = 20;

void setup() {
  size(400, 400);
  background(0);
}

void lines(){
  stroke(255);
  if (Math.random() > 0.5){
   line (x,y,x+random(spacing),y+random(spacing));// "\"
  }
  else {
   line (x,y+random(spacing) , x+random(spacing),y);// "/"
  }
  x = x+spacing;
  if (x > width){
  x = 0;
  y = y+spacing;
  }
}

void circles(){
  if(1/2 > Math.random()){
    circle(x,y,random(20,40));
  }
  x = x+spacing;
  if (x > width){
  x = 0;
  y = y+spacing;
  }
}

void draw() {
  circles();
}
