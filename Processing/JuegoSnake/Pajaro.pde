class Pajaro extends Comida { 
  
  public Pajaro(PVector posicion, int tamanio) {
    super(posicion,tamanio);
    this.imagen=loadImage("bird.png");
  }

  public void display() {
    image(imagen, this.posicion.x, this.posicion.y, tamanio, tamanio);
  }
}
