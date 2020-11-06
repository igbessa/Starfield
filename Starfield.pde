
Particle[] stark; 
OddballParticle[] spiritBomb;

int aColor = color(209, 189, 163);
void setup(){
  size(600,600);
  stark = new Particle[600];
  spiritBomb = new OddballParticle[1];
  for(int i = 0; i < stark.length; i++){
    stark[i] = new Particle();
    spiritBomb[0] = new OddballParticle();
  }
}

void draw(){
  background(0);
  for(int j = 0; j < stark.length; j++){
    stark[j].show();
    stark[j].move();
    spiritBomb[0].show();
    spiritBomb[0].move();
  }

}

class Particle{
  double myX, myY, mySpeed, myAngle;
  int myColor, mySize;
  Particle(){
    myX = (int)(Math.random()*25)+300;
    myY = (int)(Math.random()*25)+300;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    mySize = (int)(Math.random()*20)+10;
    myColor = color((int)(Math.random()*50),(int)(Math.random()*50),(int)(Math.random()*255)) ;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, mySize,mySize);
    if(mySpeed < 4){
      stroke(myColor);
      line((float)myX, (float)myY, mouseX, mouseY);
    }
  }
  void move(){
    myX = myX + Math.cos(mySpeed);
    myY = myY + Math.sin(myAngle);
  }
}

class OddballParticle extends Particle{ //inherits from Particle
  OddballParticle(){
    myX = 300;
    myY = 300; 
    myColor = color(82, 200, 255);
    mySize = 50;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((int)myX,(int)myY,mySize,mySize);
  }
  void move(){
    myX = mouseX;
    myY = mouseY;
  }
}
