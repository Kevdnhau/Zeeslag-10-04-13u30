class Vakjes {
  int x = 0;
  int y = 0;
  int spatie = 50;
  int grid1x = 75;
  int grid1y = 75;
  int grid2x = 1075;
  int grid2y = 75;
  int grid1grootte = 451;
  int bootbreedte = 25;
  int bootlengte = 200;
  float bootSW;
  float[] xboot = {grid1x + 12.5, grid1x + 60.5 };
  float[] yboot = {grid1y + 12.5, grid1y + 60 };
  int aantalboten = 2; 
  int points = 14;

  Vakjes() {
    bootSW = random(0, 5);
  }


  void tekst() {
    textSize(32);
    fill(0, 255, 0);
    text("Zeeslag ingenieursproject groep: " + points, 520, 55);
    if (aantalboten == 0) {
      textSize(50);
      fill(0, 50, 255);
      text("Game Over!", 160, 250);
    }
  }

  void achtergrond() {
    fill (0, 100, 200);
    rect (grid1x, grid2y, 450, 450);
    rect (grid2x, grid2y, grid1grootte, grid1grootte);
    fill (200, 20, 20);
  }
  void boot() {

    fill (200, 20, 20);
    strokeWeight(bootSW);

    for (int i = 0; i < aantalboten; i++) {
      if (xboot[i] >= 0) {
        rect(xboot[i], yboot[i], 80, 25);
      } else {
        ellipse(500, 250+i*100, 20, 20);
      }
      if (xboot[i] == -100 && yboot[i] == -100) {
        textSize(120);
        fill(55, 24, 33);
        text("RAAAAAAAK!!!!!!", 250, 500);
      }
    }
  }
  void grid1() {
    stroke (255);
    strokeWeight (2);
    //grid1
    for (int i = 75; i < grid1x + grid1grootte; i = i + spatie) 
    {
      line (grid1x, i, grid1x + grid1grootte, i );
    }
    for (int i = 75; i < grid1y + grid1grootte; i = i + spatie) 
    {
      line (i, grid1y, i, grid1x + grid1grootte );
    }
  }
  void grid2() {
    stroke (255);
    strokeWeight (2);
    //grid2
    for (int j = 75; j < grid2y + grid1grootte; j = j + spatie) 
    {
      line (grid2x, j, grid2x + grid1grootte, j );
    }
    for (int j = 1075; j < grid2x + grid1grootte; j = j + spatie) 
    {
      line (j, grid2y, j, grid2y + grid1grootte );
    }
  }
  public void mousePressed() {
    //wiskundige formule voor middelpunt boot

    for (int i = 0; i < aantalboten; i++) {
      float dist = sqrt((xboot[i] - mouseX) * (xboot[i] - mouseX) + (yboot[i] - mouseY) * (yboot[i] - mouseY));
      if (dist <= 100) {
        xboot[i] = -100;
        yboot[i] = -100;
        break;
      }
    }
  }
}