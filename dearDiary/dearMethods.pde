// methods

void assignBeatAndAddons(float x, float y, int i) {
  //assign beat (photo or video)
  if (data[i][4].equals("photo")) {
    drawOneNote(x, y);
    //assign addons (taken by digicam or others)
    if (data[i][2].equals("digicam")) {
      drawNoteTail(x, y);
    }
    if (data[i][3].equals("others")) {
      drawDotBesideNote(x, y);
    }
  } else if (data[i][4].equals("video")) {
    drawTwoNote(x, y);
    //assign addons (taken by digicam or others)
    if (data[i][2].equals("digicam")) {
      drawNoteTail(x, y);
    }
    if (data[i][3].equals("others")) {
      drawDotBesideNote(x, y);
    }
  }
}

//assign note location based on type 
void assignNote(float x, float y, int i) {
  for (int n=0; n<9;n++){
    if (data[i][1].equals(types.get(n))){
      y=y+(n*7.5);
      assignBeatAndAddons(x, y, i);
    }
  }
}

void drawOneNote(float x, float y){
  fill(0);
  ellipse(x,y,20,10);
  strokeWeight(2);
  line(x+10, y, x+10, y-20);
}

void drawTwoNote(float x, float y){
  fill(255);
  ellipse(x,y,20,10);
  strokeWeight(2);
  line(x+10, y, x+10, y-20);
}

void drawNoteTail(float x, float y){
  fill(0);
  stroke(0);
  line(x+10,y-20,x+15,y-10);
}

void drawDotBesideNote(float x, float y){
  fill(0);
  stroke(0);
  circle(x+16,y,2);
}
