class Snake {
  private PVector posicion;
  private PVector velocidad;
  private ArrayList<PVector> cuerpo = new ArrayList<PVector>();
  private int lado, score;

  public Snake(PVector posicion, PVector velocidad, int lado) {
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.lado=lado;
    this.score=0;
    cuerpo.add(new PVector(posicion.x, posicion.y));
  }

  public void display() {
    fill(#2649D1);
    for (PVector c : cuerpo) {
      rectMode(CENTER);
      rect(c.x+lado/2, c.y+lado/2, lado, lado);
    }
  }

  public void mover() {
    if (keyCode == UP || key == 'w') {
      this.posicion.y -= this.velocidad.y*lado*Time.getDeltaTime(frameRate);
    } else if (keyCode == DOWN || key == 's') {
      this.posicion.y += this.velocidad.y*lado*Time.getDeltaTime(frameRate);
    } else if (keyCode == LEFT || key == 'a') {
      this.posicion.x -= this.velocidad.x*lado*Time.getDeltaTime(frameRate);
    } else if (keyCode == RIGHT || key == 'd') {
      this.posicion.x += this.velocidad.x*lado*Time.getDeltaTime(frameRate);
    }
    cuerpo.add(new PVector(posicion.x, posicion.y));
    cuerpo.remove(0);
  }
  public boolean comer(PVector comida){
    PVector cabeza = cuerpo.get(cuerpo.size() - 1); 
    float d = dist(cabeza.x, cabeza.y, comida.x, comida.y); 
    if (d <20){
      return true;
    }else{
      return false;
    }
  }
  public void crecer() {
    cuerpo.add(new PVector (this.posicion.x, this.posicion.y));
    score++;
  }

  public int getScore() {
    return this.score;
  }
}
