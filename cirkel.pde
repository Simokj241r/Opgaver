class Cirkel {
  // klassens attributter/ tilstand
  float x, y;

  float a = random(255);
  float b = random(255);
  float c = random(255);

  //konstroktøren
  Cirkel() {
    x = random(width-100);
    y = random(height-100);
  }

  // klassens metoder

  // find to tilfældige værdier inden for canvas størrelsen
  /*void generate() {
   this.x = random(600);
   this.y = random(400);
   }*/

  // tegn cirkel på canvas

  void drawCirkel() {
    fill(this.a, this.b, this.c);
    circle(x+50, y+50, 100);
  }
}
