class Schip
{
  float aircx;
  float aircy;
  float aircraftX = 100;
  float aircraftY = 650;  
  boolean mousePressedAircraft = false;
  
  float batx;
  float baty;
  float battleshipX = 175;
  float battleshipY = 700;
  boolean mousePressedBattleship = false;
    
  float crux;
  float cruy;
  float destrx;
  float destry;
  float subx;
  float suby;
  int br = 25;
  int aircraftl = 200;
  int battleshipl = 175;
  int cruiserl = 125;
  int destroyerl = 80;
  int submarinel = 40;
  boolean overBox = false;
  boolean locked = false;
  float xOffset = 0.0;
  float yOffset = 0.0;



  void arsenaal() {
    //blauw vakje met palet boten  
    fill(0, 102, 255);
    stroke(34, 0, 255);
    strokeWeight(10);
    rect(75, 600, 451, 300);
  }

  //aircraft is rood
  void aircraft () {
    aircx = 100;
    aircy = 650;
    if (mouseX > aircx && mouseX < aircx+br && mouseY > aircy && mouseY < aircy+aircraftl) {
      overBox = true;
      if (!locked) {
        stroke(255);
        strokeWeight(2);
        fill(161, 15, 15);
      }
      if (mousePressed) {
        mousePressedAircraft = true;
      }
    } else {
      stroke(0);
      strokeWeight(2);
      fill(255, 0, 0);
      overBox = false;
    }
    if (mousePressedAircraft == true && mousePressed) {
      rect(mouseX, mouseY, br, aircraftl);
      if (mousePressed) {
        aircraftX = mouseX;
        aircraftY = mouseY;
      }
    }
    if (keyPressed) {
      if (key == 'p' || key == 'P') {
        mousePressedAircraft = false;
      }      
    }
    rect(aircraftX, aircraftY, br, aircraftl);
  }


  //battleship is groen
  void battleship () {
    batx = 150;
    baty = 650;
    if (mouseX > batx && mouseX < batx+battleshipl && mouseY > baty && mouseY < baty+br) {
      overBox = true;
      if (!locked) {
        stroke(255);
        strokeWeight(2);
        fill(13, 131, 9);
      }
    } else {
      fill(0, 255, 0);
      stroke(0);
      strokeWeight(2);
      overBox = false;
    }
    rect(batx, baty, battleshipl, br);
  }
  
  //cruiser is blauw
  void cruiser () {
    crux = 175;
    cruy = 700;
    if (mouseX > crux && mouseX < crux+br && mouseY > cruy && mouseY < cruy+cruiserl) {
      overBox = true;
      if (!locked) {
        stroke(255);
        strokeWeight(2);
        fill(11, 19, 100);
      }
    } else {
      fill(0, 0, 255);
      stroke(0);
      strokeWeight(2);
      overBox = false;
    }
    rect(crux, cruy, br, cruiserl);
  }
  //destroyer is geel
  void destroyer1() {
    destrx = 250;
    destry = 700;
    if (mouseX > destrx && mouseX < destrx+destroyerl && mouseY > destry && mouseY < destry+br) {
      overBox = true;
      if (!locked) {
        stroke(255);
        strokeWeight(2);
        fill(245, 245, 20);
      }
    } else {
      fill(255, 255, 0);
      stroke(0);
      strokeWeight(2);
      overBox = false;
    }
    rect(250, 700, destroyerl, br);
  }
  void destroyer2() {
    destrx = 250;
    destry = 750;
    if (mouseX > destrx && mouseX < destrx+destroyerl && mouseY > destry && mouseY < destry+br) {
      overBox = true;
      if (!locked) {
        stroke(255);
        strokeWeight(2);
        fill(245, 245, 20);
      }
    } else {
      fill(255, 255, 0);
      stroke(0);
      strokeWeight(2);
      overBox = false;
    }
    rect(250, 750, destroyerl, br);
  }
  //submarine is paars
  void submarine1() {
    subx = 250;
    suby = 790;
    if (mouseX > subx && mouseX < subx+br && mouseY > suby && mouseY < suby+submarinel) {
      overBox = true;
      if (!locked) {
        stroke(255);
        strokeWeight(2);
        fill(138, 12, 121);
      }
    } else {
      fill(255, 0, 255);
      stroke(0);        
      strokeWeight(2);
      overBox = false;
    }
    rect(250, 790, br, submarinel);
  }
  void submarine2() {
    subx = 290;
    suby = 790;
    fill(255, 0, 255);
    stroke(0);
    strokeWeight(2);
    if (mouseX > subx && mouseX < subx+br && mouseY > suby && mouseY < suby+submarinel) {
      overBox = true;
      if (!locked) {
        stroke(255);
        strokeWeight(2);
        fill(138, 12, 121);
      }
    } else {
      fill(255, 0, 255);
      stroke(0);
      strokeWeight(2);
      overBox = false;
    }
    rect(290, 790, br, submarinel);
  }
}