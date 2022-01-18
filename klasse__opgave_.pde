// initiering af variablen f
Firkant f;
Cirkel c;
int q = 0;

void setup() {
  size (600, 400);
}

void draw() {
  background(0);
  frameRate(5);
  // initiering af objektet f
  f = new Firkant();
  c = new Cirkel();
  // kald metoden generate som laver en tilfældig x og y pos
  //f.generate();
  // tegner firkanten på canvas
  if(q == 0){
  f.drawFirkant();
  q++;
  }
  else{
  c.drawCirkel();
  q--;
  }
}
