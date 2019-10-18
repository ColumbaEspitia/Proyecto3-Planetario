int Pant;
PImage inicio;
PImage instruccion;
PImage planeta1;
PImage planeta2;
PImage planeta3;
PImage estrella;

planeta Uno;
dos Dos;
tres Tre;
cuatro Cua;

void setup(){
  size(600,600);
  Uno = new planeta();
  Dos = new dos();
  Tre = new tres();
  Cua = new cuatro();
  inicio = loadImage("inicio3.png");
  instruccion = loadImage("insNeg.png");
  planeta1 = loadImage("planeta1.png");
  planeta2 = loadImage("planeta2.png");
  planeta3 = loadImage("planeta3.png");
  estrella = loadImage("estrella.png");
}

void draw(){
  switch(Pant){
    case 0:
    noStroke();
    fill(#041348);
    image(inicio,0,0,width,height);
    textSize(30);
    fill(255);
    text("Haz click para continuar",130,550);
    if(mousePressed){
      Pant = 1;
    }
    break;
    
    case 1:
    noStroke();
    fill(#002195);
    image(instruccion,0,0,width,height);
    textSize(30);
    fill(255);
    text("Presiona enter para continuar",90,550);
    if(key == ENTER){
      Pant = 2;
    }
    break;
    
    case 2:
    noStroke();
    fill(#950500,2);
    rect(0,0,width,height);
    textSize(30);
    fill(255);
    text("Pulsa espacio para capturar",90,50);
    if(key == ' '){
      save("Columba.jpg");
      exit();
    }
    
    Uno.display();
    Dos.display();
    Tre.display();
    Cua.display();
    
    Uno.movimiento();
    Dos.movimiento();
    Tre.movimiento();
    
    Uno.rebota();
    Dos.rebota();
    Tre.rebota();
    break;
  }
}
