class planeta{
  float x, y, t, dx, dy;
  color c;
  
  planeta(){
    this.x = 100;
    this.y = 100;
    this.t = 50;
    this.dx = random(-2,2);
    this.dy = random(-2,2);
  }
  
  void display(){
    pushMatrix();
    image(planeta1,x,y,t,t);
    popMatrix();
  }
  
  void movimiento(){
    x += dx;
    y += dy;
  }
  
  void rebota(){
    if (x > width){
      x = width;
      dx= dx* -1;
    }
    if (x<0){
      x = 0;
      dx= dx* -1;
    }
    if (y<0){
      y = 0;
      dy*= -1;
    }
    if (y>height){
      y = height;
      dy*= -1;
    }
  }
  
}

class dos extends planeta{
  dos(){
    this.x = 300;
    this.y = 300;
    this.t = 70;
    this.dx = random(-2,2);
    this.dy = random(-2,2);
  }
  
  void display(){
    pushMatrix();
    image(planeta2,x,y,t,t);
    popMatrix();
  }
}

class tres extends planeta{
  tres(){
    this.x = 500;
    this.y = 500;
    this.t = 30;
    this.dx = random(-2,2);
    this.dy = random(-2,2);
  }
  
  void display(){
    pushMatrix();
    image(planeta3,x,y,t,t);
    popMatrix();
  }
}

class cuatro extends planeta{
  cuatro(){
    this.x = mouseX;
    this.y = mouseY;
    this.t = 30;
    this.dx = random(-2,2);
    this.dy = random(-2,2);
  }
  
  void display(){
    pushMatrix();
    image(estrella,mouseX,mouseY,t,t);
    popMatrix();
  }
}
