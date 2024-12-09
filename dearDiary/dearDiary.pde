String [] diaryData;
String [][] data;
String [] dates = { "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"};
StringList types = new StringList ("interesting", "food", "building", "school", "friends", "lights", "nature", "random", "cute");

//add sounds
import processing.sound.*;
SoundFile do1, re1, mi, fa, so, la, ti, do2, re2;

void setup() {
  size(1400, 800);
  
  //initialise sounds
  re2=new SoundFile(this, "re2.mp3");
  do2=new SoundFile(this, "do2.mp3");
  ti=new SoundFile(this, "ti.mp3");
  la=new SoundFile(this, "la.mp3");
  so=new SoundFile(this, "so.mp3");
  fa=new SoundFile(this, "fa.mp3");
  mi=new SoundFile(this, "mi.mp3");
  re1=new SoundFile(this, "re1.mp3");
  do1=new SoundFile(this, "do1.mp3");
}

void draw() {
  
  //load data
  diaryData=loadStrings("deardiarydata.csv");
  data=new String [diaryData.length][];
  for (int i=0; i<diaryData.length; i++) {
    String[]dataItems=split(diaryData[i], ",");
    data[i]=new String [dataItems.length];
    for (int n=0; n<dataItems.length; n++) {
      data[i][n]=dataItems[n];
    }
  }

  background(255);
  //draw musical lines
  for (int i=0; i<7; i++) {
    for (int n=0; n<5; n++) {
      int x=15;
      strokeWeight(1.10);
      line(100, 100+(x*n), 1300, 100+(x*n));
    }
    translate(0, 100);
  }

  translate(0, -700);
  //insert date text
  for (int i=0; i<dates.length; i++) {
    int x=100;
    textSize(20);
    fill(0);
    text(dates[i], 60, 140+(i*x));
  }

  //shuffle types when mousePressed
  if (mousePressed==true) {
    types.shuffle();
  }

  //draw in legend
  drawLegend();

  //draw notes in by days 
  for (int i=0; i<data.length; i++) {
    if (data[i][0].equals("Mon")) {
      float x=120+(i*40);
      float y=100;
      assignNote(x, y, i);
    }
  }

  int a=0;
  for (int i=0; i<data.length; i++) {
    if (data[i][0].equals("Tue")) {
      float x=120+(a*40);
      float y=200;
      assignNote(x, y, i);
      a++;
    }
  }

  int b=0;
  for (int i=0; i<data.length; i++) {
    if (data[i][0].equals("Wed")) {
      float x=120+(b*40);
      float y=300;
      assignNote(x, y, i);
      b++;
    }
  }

  int c=0;
  for (int i=0; i<data.length; i++) {
    if (data[i][0].equals("Thu")) {
      float x=120+(c*40);
      float y=400;
      assignNote(x, y, i);
      c++;
    }
  }

  int d=0;
  for (int i=0; i<data.length; i++) {
    if (data[i][0].equals("Fri")) {
      float x=120+(d*40);
      float y=500;
      assignNote(x, y, i);
      d++;
    }
  }

  int e=0;
  for (int i=0; i<data.length; i++) {
    if (data[i][0].equals("Sat")) {
      float x=120+(e*40);
      float y=600;
      assignNote(x, y, i);
      e++;
    }
  }

  int f=0;
  for (int i=0; i<data.length; i++) {
    if (data[i][0].equals("Sun")) {
      float x=120+(f*40);
      float y=700;
      assignNote(x, y, i);
      f++;
    }
  }
}

//build a keyboard piano
void keyPressed(){
  if (key=='1'){
    re2.play(); 
  } else if (key=='2'){
    do2.play(); 
  } else if (key=='3'){
    ti.play(); 
  } else if (key=='4'){
    la.play(); 
  } else if (key=='5'){
    so.play(); 
  } else if (key=='6'){
    fa.play(); 
  } else if (key=='7'){
    mi.play(); 
  } else if (key=='8'){
    re1.play(); 
  } else if (key=='9'){
    do1.play(); 
  } 
}
