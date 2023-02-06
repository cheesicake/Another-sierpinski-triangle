public void setup(){
  size(1000, 1000);
  background(51);
}

public void draw(){
  sierpinskiTriangle(800, 800, 750);
}

public void sierpinskiTriangle(int x, int y, int extent){
  if(extent <= 15){
    triangle(x-(extent/2), y-extent, x, y, x-extent ,y);
  }else{
    sierpinskiTriangle(x, y, extent/2);
    sierpinskiTriangle(x-(extent/2), y, extent/2);
    sierpinskiTriangle(x-(extent/4), y-(extent/2), extent/2);
  }
}
