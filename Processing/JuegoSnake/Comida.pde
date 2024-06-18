abstract class Comida {
  protected PVector posicion;
  protected PImage imagen;
  protected int tamanio;

  public Comida(PVector posicion, int tamanio) {
    this.posicion=posicion;
    this.tamanio=tamanio;
  }

  public abstract void display();
  
  public PVector getPosicion() {
    return this.posicion;
  }
  public int getTamanio(){
    return this.tamanio;
  }
}
