void Movimiento() {
  
  //funciona al estar sobre mi dibujo
  if (interactivo == true && mouseX > 400) {
    float distanciaCentro = dist(mouseX, mouseY, 600, 200);//medir px entre cursor y centro

    grosor = calcularGrosor(distanciaCentro);

    separacion = map(mouseY, 0, height, 5, 14);

    if (separacion < 5) {
      separacion = 5;
    } else if (separacion > 14) {
      separacion = 14;
    }
  }
}

float calcularGrosor(float distanciaCentro) {
  float nuevoGrosor = map(distanciaCentro, 0, 280, 8, 1);

  if (nuevoGrosor < 1) {
    nuevoGrosor = 1;
  } else if (nuevoGrosor > 8) {
    nuevoGrosor = 8;
  }

  return nuevoGrosor;
}

void mouseMoved() {
  if (mouseX > 400) {
    interactivo = true;
  }
}

void mousePressed() {
  if (mouseX > 400) {
    invertir = !invertir;
    lineasInternas = int(random(3, 6));
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  } else if (key == 'i' || key == 'I') {
    angulo = angulo - 0.05;
  } else if (key == 'd' || key == 'D') {
    angulo = angulo + 0.05;
  }
}

void reiniciar() {
  invertir = false;
  interactivo = false;
  grosor = 3;
  separacion = 8;
  angulo = 0;
  lineasInternas = 4;
}
