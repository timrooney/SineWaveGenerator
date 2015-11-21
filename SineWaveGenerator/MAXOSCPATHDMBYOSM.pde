
import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;
float value;
float value1;
float value2;
float value3;
float value4;
float value5;

float px, py, px2, py2;
float angle, angle2;
float radius = 50;
float frequency = 10;
float frequency2 = 10;
float x, x2;

float cx,cy,cx2, cy2;
float angleC, angleC2;
float frequencyC = 10;
float frequencyC2 = 10;
float Cx, Cx2;

float ax,ay,ax2, ay2;
float angleA, angleA2;
float frequencyA = 10;
float frequencyA2 = 10;
float Ax, Ax2;

float bx,by,bx2, by2;
float angleB, angleB2;
float frequencyB = 10;
float frequencyB2 = 10;
float Bx, Bx2;

float dx,dy,dx2, dy2;
float angleD, angleD2;
float frequencyD = 10;
float frequencyD2 = 10;
float Dx, Dx2;

float ex,ey,ex2, ey2;
float angleE, angleE2;
float frequencyE = 10;
float frequencyE2 = 10;
float Ex, Ex2;

float aa = 970;
float ab = 300;
float ba = 370;
float bb = 800;
float ca = 1550 ;

float q = 55;

int h = 1;
int j = 1;

void setup() {
  size(displayWidth,displayHeight);
  frameRate(25);
  oscP5 = new OscP5(this,12000);
  myRemoteLocation = new NetAddress("10.1.79.196",12001);
}

void draw() { 
  smooth(8);
  background(0);
  noFill();
  stroke(255,255,255);
  strokeWeight(5);
  ellipse(aa,ab,value1*q,value1*q); 
  ellipse(ba,ab,value*q,value*q); 
  ellipse(ca,ab,value4*q,value4*q); 

  ellipse(aa,bb,value3*q,value3*q); 
  ellipse(ba,bb,value2*q,value2*q); 
  ellipse(ca,bb,value5*q,value5*q); 
  
  px = aa + cos(radians(angle))*(value3*q/2);
  py = bb + sin(radians(angle))*(value3*q/2);
  
  cx = ba + cos(radians(angleC))*(value2*q/2);
  cy = bb + sin(radians(angleC))*(value2*q/2);
  
  ax = ba + cos(radians(angleA))*(value*q/2);
  ay = ab + sin(radians(angleA))*(value*q/2);
  
  bx = aa + cos(radians(angleB))*(value1*q/2);
  by = ab + sin(radians(angleB))*(value1*q/2);
  
  dx = ca + cos(radians(angleD))*(value4*q/2);
  dy = ab + sin(radians(angleD))*(value4*q/2);
  
  ex = ca + cos(radians(angleE))*(value5*q/2);
  ey = bb + sin(radians(angleE))*(value5*q/2);

  
  fill(13,240,100);
  noStroke();
  ellipse(px,py,25,25);
  fill(240,50,100);
  ellipse(cx,cy,25,25);
  fill(50,13,240);
  ellipse(ax,ay,25,25);
  fill(90,200,80  );
  ellipse(bx,by,25,25);
  fill(180,200,90);
  ellipse(dx,dy,25,25);
  fill(150,150,140);
  ellipse(ex,ey,25,25);
 
  angle2 = 0;
  angleC2 = 0;
  angleA2 = 0;
  angleB2 = 0;
  angleD2 = 0;
  angleE2 = 0;

  for (int i = 0; i< width; i++){
    angle2 -= frequency2;
    angleC2 -= frequencyC2;
    angleA2 -= frequencyA2;
    angleB2 -= frequencyB2;
    angleD2 -= frequencyB2;
    angleE2 -= frequencyB2;
}
 angle -= frequency;
   x+=1;
 angleC -= frequencyC;
  Cx+=1;
 angleA -= frequencyA;
  Ax+=1;
 angleB -= frequencyB;
  Bx+=1;
 angleD -= frequencyD;
  Dx+=1;
 angleE -= frequencyD;
  Dx+=1;
}

void oscEvent(OscMessage theOscMessage) {
 
  if(theOscMessage.checkAddrPattern("/a0")==true)
  {
    value = theOscMessage.get(0).floatValue();
   // print(value);
    
  }
    if(theOscMessage.checkAddrPattern("/a1")==true)
  {
    value1 = theOscMessage.get(0).floatValue();
   // print(value1);
    
  }
      if(theOscMessage.checkAddrPattern("/a2")==true)
  {
    value2 = theOscMessage.get(0).floatValue();
   // print(value2);
    
  }
      if(theOscMessage.checkAddrPattern("/a3")==true)
  {
    value3 = theOscMessage.get(0).floatValue();
    //print(value3);
    
  }
      if(theOscMessage.checkAddrPattern("/a4")==true)
  {
    value4 = theOscMessage.get(0).floatValue();
    //print(value4);
    
  }
      if(theOscMessage.checkAddrPattern("/a5")==true)
  {
    value5 = theOscMessage.get(0).floatValue();
    //print(value5);
    
  }
      if(theOscMessage.checkAddrPattern("/f0")==true)
  {

    frequencyA = theOscMessage.get(0).floatValue();
   // print(f0); 
  }
         if(theOscMessage.checkAddrPattern("/f1")==true)
  {

    frequencyB = theOscMessage.get(0).floatValue();
   // print(f1); 
 }
        if(theOscMessage.checkAddrPattern("/f2")==true)
  {

    frequencyC = theOscMessage.get(0).floatValue();
   // print(f2); 
  }
         if(theOscMessage.checkAddrPattern("/f3")==true)
  {

    frequency = theOscMessage.get(0).floatValue();
   // print(f3); 
  }
         if(theOscMessage.checkAddrPattern("/f4")==true)
  {

   frequencyD = theOscMessage.get(0).floatValue();
   // print(f4); 
  }
        if(theOscMessage.checkAddrPattern("/f5")==true)
  {

    frequencyE = theOscMessage.get(0).floatValue();
   // print(f5); 
  }

}
