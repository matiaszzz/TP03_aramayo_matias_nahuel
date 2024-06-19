class Muro {
  private Transform transform;
  private ImageComponent imageComponent;

  public Muro(Transform transform, ImageComponent imageComponent) {
    this.transform=transform;
    this.imageComponent=imageComponent;
  }

  public void visualizar() {
    imageMode(CENTER);
    this.imageComponent.displayImage(transform.getPosicion(), 120, 40);
  }
}
