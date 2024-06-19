class Bala {
  private PVector velocidad;
  private Transform transform;

  public Bala(PVector velocidad, Transform transform) {
    this.velocidad=velocidad;
    this.transform=transform;
  }

  public void display() {
    fill(255, 155, 100);
    ellipse(transform.getPosicion().x,transform.getPosicion().y ,20, 20);
  }

  public void mover() {
    transform.getPosicion().y += velocidad.y*Time.getDeltaTime(frameRate);
  }
}
