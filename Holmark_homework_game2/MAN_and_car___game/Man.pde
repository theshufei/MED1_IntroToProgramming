class MAN {

  PImage img;
  int x;
  int y;
  int w;
  int h;

  MAN() {

    img = loadImage("MAN.png");
    image(img, x, y, w, h);
    x = 20;
    y = 20;
    w = width/12;
    h = height/9;
  }


  void displayMan() {
    image(img, x, y, w, h);
  }

  void moveMan() { //moving the man
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == UP) {
          y = y - 5;
        }
      }
    }
    if (keyPressed) {      
      if (key == CODED) {
        if (keyCode == DOWN) {
          y = y + 5;
        }
      }
    }
    if (keyPressed) {      
      if (key == CODED) {
        if (keyCode == RIGHT) {
          x = x + 5;
        }
      }
    }
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          x = x - 5;
        }
      }
    }
  }


  void colorChange() {
    if (y > height/3.5) {
      background(#FFFF95);//yellow
    }
    if (y > height/2.5) {
      background(#FFBCBC);//rød
    }
    if (y > height/2.4) {
      background(#BFFF03);//gul grøn
    }
    if (y > height/2.3) {
      background(#03FF00);//green
    }
    if (y > height/2.2) {
      background(#03C6FF);//blå
    }
    if (y > height/2.1) {
      background(#FAFF03);
    } 
    if (y > height/2) {
      background(#FF039A);//rød pink
    }
    if (y > height/1.9) {
      background(#05C5FC);//blå
    }
    if (y > height/1.8) {
      background(#FA00FF);//pink
    }
    if (y > height/1.6) {
      background(#FFEA00);//gul
    }
    if (y > height/1.5) {
      background(#D3FFE5);//green
    }
  }

  void win() {
    if ((walk.x > rectX) && (walk.y > rectY)) {
      fill(255);
      textSize(200);
      text("WIN", width/3, height/2);
      
    }
  }
}
