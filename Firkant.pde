class Firkant {
  // klassens attributter/ tilstand
  
  float x,y;
  float a = random(255);
  float b = random(255);
  float c = random(255);
  
  //konstroktøren
  Firkant() {
    this.x = random(width-100);
    this.y = random(height-100);
  }

  // klassens metoder
  
  // find to tilfældige værdier inden for canvas størrelsen
  /*void generate() {
    this.x = random(600);
    this.y = random(400);
  }*/
  
  // tegn firkant på canvas
  void drawFirkant() {
    fill(this.a,this.b,this.c);
    square(x, y, 100);
  }
  

}
