//variables imagenes
PImage portada;
PImage principitop2;
PImage estrellasp2;
PImage avionp3;
PImage estrellasp3;
PImage aviadorp4;
PImage zorrop5;
PImage finalp6;

//variables fuentes
PFont fuenteTitulo;
PFont fuenteCuerpo;

//variable pantalla
int pantalla;

//variable boton play
float xBoton;
float yBoton;
float anchoBoton;
float altoBoton;

//transicion texto pantalla 2
float opacidad;

//transicion texto e imagen pantalla 3
float avion;
float texto3;

//tiempo de pantallas
int tiempo;

//avion y texto
float texto3Y;
float avionX;

//texto pantalla 4
float opacidad2;

//texto pantalla 5
float texto5X;

//texto pantalla 6
float texto6tam;

//pantalla 6
boolean mostrarBotonReplay;

//boton replay
float xBotonReplay;
float yBotonReplay;
float anchoBotonReplay;
float altoBotonReplay;



void setup() {
  size(640, 480);
  
  //imagenes
  portada = loadImage("principio.png");
  principitop2 = loadImage("principitop2.png");
  estrellasp2 = loadImage("estrellasp2.png");
  avionp3 = loadImage("avionp3.png");
  estrellasp3 = loadImage("estrellasp3.png");
  aviadorp4 = loadImage("aviadorp4.png");
  zorrop5 = loadImage("zorrop5.png");
  finalp6 = loadImage("finalp6.png");
  
  //fuentes
  fuenteTitulo   = loadFont("fuentetitulo.vlw");
  fuenteCuerpo   = loadFont("fuentecuerpo.vlw");
  
  //primer pantalla
 pantalla = 1;
 
 //boton play
  anchoBoton = 150;
  altoBoton = 50;
  xBoton = 157;
  yBoton = 98;
  
  //texto pantalla 2
 opacidad = 0;
 
 //texto e imagen pantalla 3
 avion = 0;
 texto3 = 481;
 
 //tiempo de pantallas
 tiempo = 0;
 
 //avion y texto
 texto3Y = 480;
avionX = 640;

//texto pantalla 4
opacidad2 = 255;

//texto pantalla 5
texto5X = -25;

//texto pantalla 6
texto6tam = 5;

//boton replay
anchoBotonReplay = 150;
altoBotonReplay = 50;
xBotonReplay = 245;
yBotonReplay = 400;
 
}

void draw() {
  background(1);
  
 if (pantalla == 1) {
  image(portada, 0, 0, 640, 480);

  fill(255, 255, 255);
  textAlign(LEFT, TOP);
  textFont(fuenteTitulo, 25);
  text("El Principito", 149, 70);

  botonInicio();
}

  if (pantalla == 2) { //principito
  
//duracion
tiempo = tiempo + 1;
if (tiempo > 300) {
  pantalla = 3;
  tiempo = 0;
  opacidad = 0;
}
  
  //imagen
image(estrellasp2, 0, 0, 640, 480);
image(principitop2, 0, 0, 640, 480);

  //texto
opacidad = opacidad + 2;
fill(44, 47, 113, opacidad);
textAlign(CENTER, CENTER);
textFont(fuenteCuerpo, 22);
text("El Principito vive en su\n pequeño asteroide llamado\n B-612, cuidando sus\n volcanes y a su querida rosa.", 320, 320);
    
  }
  if (pantalla == 3) { // viaje
  
  //fondo
 image(estrellasp3, 0, 0, 640, 480);

// avion 
avionX = avionX - 3;
image(avionp3, avionX, 120, 280, 230);

// texto
if (texto3Y > 380) {
  texto3Y = texto3Y - 1;
}
fill(255, 255, 255);
textAlign(CENTER, CENTER);
textFont(fuenteCuerpo, 25);
text("Un dia decide visitar varios planetas\ndonde conoce a adultos que no entienden\nlo que realmente importa.", 320, texto3Y);

// duracion
tiempo = tiempo + 1;
if (avionX < -300 || tiempo > 300) {
  pantalla = 4;
  tiempo = 0;
  texto3Y = 480;
  avionX = 640;
}
}
 
  if (pantalla == 4) { // aviador
    
    //imagen
    image(aviadorp4, 0, 0, 640, 480);

//texto
opacidad2 = opacidad2 - 0.7;
fill(88, 81, 59, opacidad2);
textAlign(CENTER, CENTER);
textFont(fuenteCuerpo, 25);
text("Hasta que llega a la Tierra y conoce\na un aviador con su avión roto.\nSe hacen amigos y comparten sus aventuras.", 320, 80);

//duracion
tiempo = tiempo + 1;
if (tiempo > 360) {
  pantalla = 5;
  tiempo = 0;
  opacidad2 = 255;
}
  }
  if (pantalla == 5) { // zorro
  
  //imagen
  image(zorrop5, 0, 0, 640, 480);
  
  //texto
if (texto5X < 320) {
  texto5X = texto5X + 2;
}
fill(0, 0, 0);
textAlign(CENTER, CENTER);
textFont(fuenteCuerpo, 20);
text("Tambien conoce a un zorro\nque le enseña que lo esencial es invisible a los ojos.\nEl Principito comprende cuánto extraña a su rosa.", texto5X, 100);


//duracion
tiempo = tiempo + 1;
if (tiempo > 400) {
  pantalla = 6;
  tiempo = 0;
  texto5X = -400;
}
  
  }
 if (pantalla == 6) { //fin y reinicio
  
  //imagen
  image(finalp6, 0, 0, 640, 480);
  
  //texto
if (texto6tam < 25) {
  texto6tam = texto6tam + 0.2;
}

fill(255, 255, 255);
textAlign(CENTER, CENTER);
textFont(fuenteCuerpo, texto6tam);
text("El Principito se despide del aviador\ny regresa a su planeta a cuidar a su rosa.\nEl aviador queda mirando las estrellas,\nsabiendo que su amigo está allá arriba.", 320, 100);
tiempo = tiempo + 1;

//boton replay
if (tiempo > 150) {
  mostrarBotonReplay = true;
}
if (mostrarBotonReplay == true) {
  fill(255, 200, 0);
  rect(xBotonReplay, yBotonReplay, anchoBotonReplay, altoBotonReplay);
  fill(0);
  textFont(fuenteTitulo, 25);
  text("Reiniciar", 320, 425);
}
  
  }
}

//boton inicio
void mousePressed() {
  if (pantalla == 1) {
    if (mouseX > xBoton && mouseX < xBoton + anchoBoton && mouseY > yBoton && mouseY < yBoton + altoBoton) {
      pantalla = 2;
    }
  }
  
  //boton replay
 if (pantalla == 6 && mostrarBotonReplay == true) {
  if (mouseX > xBotonReplay && mouseX < xBotonReplay + anchoBotonReplay && mouseY > yBotonReplay && mouseY < yBotonReplay + altoBotonReplay) {
    pantalla = 1;
    tiempo = 0;
    opacidad = 0;
    opacidad2 = 255;
    texto3Y = 480;
    avionX = 640;
    texto5X = -25;
    texto6tam = 5;
    mostrarBotonReplay = false;
  }
}
    }
  void botonInicio() {
  fill(255, 200, 0);
  rect(xBoton, yBoton, anchoBoton, altoBoton);
  fill(0);
  textAlign(CENTER, CENTER);
  textFont(fuenteTitulo, 25);
  text("Iniciar", 230, 125);
}
