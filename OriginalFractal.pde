void setup(){
  size(500,500);
  background(255);
  noLoop();
}

void draw() {
  fractal(250, 250, 500, 50, 255, 255, 255); 
}

void fractal(float x, float y, float len, int wid, int r, int g, int b){
  plus(x, y, len, wid, r, g, b);
  
  if (len <= 125 / 2){
    plus(x, y, len, 1, r, g, b);
  }
  else {
    fractal(x - len/4, y - len/4, len/2, wid / 2, 0, 0, 255);
    fractal(x + len/4, y - len/4, len/2, wid / 2, 255, 0, 0);
    fractal(x - len/4, y + len/4, len/2, wid / 2, 0, 255, 0);
    fractal(x + len/4, y + len/4, len/2, wid / 2, 255, 255, 0);
  }
}

int ranCol(){
  return (int)(Math.random() * 255);
}

void plus(float x, float y, float len, int wid, int r, int g, int b){
  strokeWeight(wid);
  line(x, y - len/2, x, y + len/2);
  line(x - len/2, y, x + len/2, y);
  fill(r, g, b);
  ellipse(x, y, len / 4, len / 4);
}
