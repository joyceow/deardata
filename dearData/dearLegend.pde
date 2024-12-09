//draw legend

void drawLegend() {
  fill(100, 30);
  noStroke();
  rect(width/2, 75, 550, 200, 25);
  textAlign(CENTER);
  fill(100, 100);
  text("Legend", 970, 70);

  //what the notes mean
  textSize(15);
  fill(0);
  text("type of photo/video taken: ", 795, 157);
  float legend=100;
  for (int i=0; i<9; i++) {
    int x=735+(i*60);
    drawOneNote(x, legend);
    legend=legend+7.5;
    textSize(13);
    text(types.get(i), x, legend+10);
  }
  int xPos=820;
  int yPos=230;
  stroke(0);
  drawOneNote(xPos, yPos);
  text("photo", xPos, yPos+25);
  drawTwoNote(xPos+100, yPos);
  fill(0);
  text("video", xPos+100, yPos+25);

  //draw two hypothetical notes
  fill(190);
  stroke(190);
  ellipse(xPos+200, yPos, 20, 10);
  ellipse(xPos+300, yPos, 20, 10);
  strokeWeight(2);
  line(xPos+200+10, yPos, xPos+200+10, yPos-20);
  line(xPos+300+10, yPos, xPos+300+10, yPos-20);
  drawNoteTail(xPos+200, yPos);
  text("taken by digicam", xPos+200, yPos+25);
  drawDotBesideNote(xPos+300, yPos);
  text("taken by others", xPos+300, yPos+25);
}
