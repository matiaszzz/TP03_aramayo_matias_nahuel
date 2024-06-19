class Tanque {
  private Transform transform;
  private ImageComponent imageComponent;
  private PVector velocidad;

  /*public Tanque(Transform transform, ImageComponent imageComponent) {
   this.transform=transform;
   this.imageComponent=imageComponent;
   }*/

  public Tanque(Transform transform, ImageComponent imageComponent, PVector velocidad) {
    this.transform=transform;
    this.imageComponent=imageComponent;
    this.velocidad=velocidad;
  }
  public void visualizar() {
    imageMode(CENTER);
    this.imageComponent.displayImage(transform.getPosicion(), 120, 70);
  }
  public void mover() {
    if (key == 'a' || keyCode == LEFT) {
      transform.getPosicion().x -= velocidad.x*Time.getDeltaTime(frameRate);
    } else if (key == 'd' || keyCode == RIGHT) {
      transform.getPosicion().x += velocidad.x*Time.getDeltaTime(frameRate);
    }
  }
}
