void dibujarReplica() {
  if (invertir == true) {
    fill(0);
    stroke(255);
  } else {
    fill(255);
    stroke(0);
  }

//fondo
  rect(400, 0, 400, 400);

  strokeWeight(grosor);
  noFill();

//grilla
  int cantidad = 6;
  float tam = 400 / cantidad;
  
//dibujar cuadrados
  for (int fila = 0; fila < cantidad; fila++) {
    for (int columna = 0; columna < cantidad; columna++) {

      //calcular coordenadas X e Y en cada celda
      float x = 400 + columna * tam;
      float y = fila * tam;

//recibe coordenadas
      dibujarModulo(x, y, tam);
    }
  }
}

void dibujarModulo(float x, float y, float tam) {
  pushMatrix();

//mover el punto a la esquina donde va el cuadrado
  translate(x, y);
  rotate(angulo);

  rect(0, 0, tam, tam);//en el nuevo 0 0 cuadrado principal


//lineas de adentro
  for (int i = 1; i <= lineasInternas; i++) {
    
    //multiplico para distancia
    float distancia = i * separacion;

//resto distancia por vuelta para vertice
    float esquinaX = tam - distancia;
    float esquinaY = tam - distancia;

//usando el punto anterior
    line(esquinaX, esquinaY, esquinaX, 0);
    line(esquinaX, esquinaY, 0, esquinaY);
  }

  popMatrix();
}
