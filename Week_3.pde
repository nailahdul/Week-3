float x, y;
float easing = 0.2;
int toolSelect = 0;
//print (toolSelection);

void setup () {
  size (600, 600);
  background(148, 148, 148);
  fill (249, 186, 255);
  ellipse (54, 44, 59, 60);
  //rect(11, 175 ,90, 30);
  fill (203, 256, 186);
  rect (11, 92, 89, 49, 1);
  strokeWeight (6);
  line( 100, 189, 14, 189);
}

void draw() {
  if (mouseX > 54 && mouseX < 90 && mouseY> 44 && mouseY < 104) { //circle 
    toolSelect =1;
  }
  else if(mouseX > 11 && mouseX < 100 && mouseY> 92 && mouseY < 141) { //rect
  toolSelect =2;
  }
  else if (mouseX > 11 && mouseX < 101 && mouseY> 175 && mouseY < 295) { //line
  toolSelect =3;
  }

  if (mousePressed) {
    if (toolSelect == 1) {//ellipse
      fill (249, 186, 255);
      strokeWeight (1);
      ellipse(mouseX, mouseY, 60, 60);
      
    } else if (toolSelect == 2) {//rect
      fill (203, 256, 186);
      strokeWeight (1);
      rect (mouseX-40, mouseY-20, 89, 49, 1);
      
    } else if (toolSelect == 3) {//line
      strokeWeight (6);
      line( mouseX, mouseY, pmouseX, pmouseY);
    }
  }
}