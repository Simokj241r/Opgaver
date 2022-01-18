// initiering af variablen f
Firkant f;
int q = 0;

void setup() {
  size (600, 400);
}

void draw() {
  background(0);
  frameRate(random(1000));
  // initiering af objektet f
  f = new Firkant();
  // kald metoden generate som laver en tilfældig x og y pos
  //f.generate();
  // tegner firkanten på canvas
  if(q == 0){
  f.drawFirkant();
  q++;
  }
  else{
  f.drawCirkel();
  q--;
  }
}
