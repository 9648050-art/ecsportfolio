// Mariama Sidibe | 26 Feb 2026 | Timeline
void setup() {
  size(950,400);
}
void draw() {
  background(#D5604C);
  drawRef();
  histEvent(150,200, "March 17, 1990", true, "Hozier was born in Bray, County Wicklow, Ireland.");
  histEvent(250,300, "September 2009", false, "He attended Trinity College Dublin to study music \n and became involved in the Trinity Orchestra, helping him grow as a songwriter and performer.");
  histEvent(350,200, "September 2013",true,  "He released the song Take Me to Church online, which went \n viral and quickly gained international attention for its powerful lyrics ");
  histEvent(450,300, "September 19, 2014",false,  "He released his debut self-titled album Hozier, which included \n Take Me to Church and established him as a major new artist worldwide.");
  histEvent(550,200, "February 2015",true,  "Take Me to Church was nominated for Song of the Year at the Grammy Awards, \n marking his first Grammy nomination.");
  histEvent(650,300, "September 6, 2018",false,  "He released the EP Nina Cried Power, featuring Mavis Staples,\n highlighting themes of protest, activism, and musical history.");
  histEvent(750,200, "March 1, 2019",true, "He released his second album Wasteland, Baby which debuted at No. 1 on the Billboard 200,\n showing his continued commercial success.");
  histEvent(850,300, "August 18, 2023",false,  "He released his third studio album Unreal Unearth, inspired by Dantes Inferno,\n showing artistic growth and deeper literary influence in his music.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(38);
  fill(#000000);
  text("Hozier:Timeline",width/2,65);
  textSize(18);
  text("By Mariama Sidibe",width/2,85);
  strokeWeight(3);
  line(50,250,900,250); // timeline
  line(50,245,50,255); // left tick mark
  line(900,245,900,255);
  line(450,245,450,255);
  line(250,245,250,255);
  line(650,245,650,255);
  textSize(13);
  strokeWeight(2);
  text("1980",50,270);
  text("2024",900,270);
  text("2014",450,240);
  text("2010",250,240);
  text("2018",650,240);
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
  line(x,y,x-15,y+50);
  } else {
  line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  fill(#805E58);
  rect(x,y,110,30,10);
  fill(#000000);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    textSize(14);
    text(detail,width/2,350);
  }
}
