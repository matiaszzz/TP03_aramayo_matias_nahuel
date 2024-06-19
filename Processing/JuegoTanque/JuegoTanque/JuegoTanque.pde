private Tanque t;
private Muro m;

void setup() {
  size(800, 800);
  generarTanque();
  frameRate(90);
  generarMuro();
}

void draw() {
  background(#07390D);
  t.visualizar();
  t.mover();
  m.visualizar();
}

void generarTanque() {
  Transform transformTanque = new Transform(new PVector(width/2, 760));
  ImageComponent imageTanque = new ImageComponent("tanque.png");
  t = new Tanque(transformTanque, imageTanque, new PVector(80, 80));
}
void generarMuro() {
  Transform transformMuro = new Transform(new PVector(int(random(800)), int(random(100))));
  ImageComponent imageMuro = new ImageComponent("muro.jpg");
  m = new Muro(transformMuro, imageMuro);
}
