Vakjes zee = new Vakjes();
Schip schepen = new Schip();

public void setup() {
  size (1600, 1000);
  frameRate (50);
  background (70);
  
  
}

public void draw() {
background(70);
zee.achtergrond();
zee.grid1();
zee.grid2();
zee.boot();
zee.tekst();
 schepen.arsenaal();
 schepen.aircraft();
 schepen.battleship();
 schepen.cruiser();
 schepen.destroyer1();
 schepen.destroyer2();
 schepen.submarine1();
 schepen.submarine2();
}