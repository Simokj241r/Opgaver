int x = 25;
int i = 1;
void setup() {
  size(1000, 1000);
  noStroke();
  frameRate(60);
}

void draw() {

  x = x+i;
  if (x >= width-25 || x <= 0+25) {

    i *= -1;
  }
  background(255);
  //map(value, start1, slut1, start2, slut2)
  //value = vores værdi som skal ændres
  //start1 = mindste værdi for vores value, 
  //slut1 = største værdi for vores value,
  //start2 = den mindste værdi som vores value skal passes ind på, 
  //slut2 = største værdi som den skal mappes ind på
  
  //mapper vores mouse, så den passer ind på vores canvas.
  //Hvis vi ændrer den bagerste værdi, kan vi lave en bokse som den vil bevæge sig i.
  float  mousey = map(mouseY, 0, height, 200, 400); //nu har den en boks i koordinaterne 200,400
  float  mousex = map(mouseX, 0, width, 200, 400);
  //vi tegner cirklen med vores mappede værdier
  ellipse(mousex, mousey, 50, 50);



  pushMatrix();
  noFill();
  stroke(50);
  translate(x, 100);
  rotate(map(x, 0+25, width-25, 0, 2*PI));
  println(x, map(x, 0, width, 0, 2*PI));
  rect(0-25, -25, 50, 50);
  popMatrix();



  pushMatrix();
  noFill();
  stroke(50);
  translate(x, height/2);
  rotate(map(mouseX, 0+25, width-25, 0, 2*PI));
  rect(0-25, -25, 50, 50);
  delay(50);
  popMatrix();
}
