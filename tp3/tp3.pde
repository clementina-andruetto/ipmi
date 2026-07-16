//https://youtu.be/VaDsiPoBwFs?si=L8qLZZipMWZRUog5

PImage referencia;

boolean invertir = false;
boolean interactivo = false;

float grosor = 3;
float separacion = 8;
float angulo = 0;

int lineasInternas = 4;

void setup() {
  size(800, 400);
  referencia = loadImage("obra10.jpeg");
  noFill();
}

void draw() {
  background(255);

  image(referencia, 0, 0, 400, 400);

  Movimiento();
  dibujarReplica();

  stroke(0);
  strokeWeight(2);
  line(400, 0, 400, height);
}
