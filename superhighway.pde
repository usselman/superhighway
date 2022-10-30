// pattern 0001
// fjenett 20100523

float w8, h8;  // width, height div 8
float angle; 
float angleVel;
boolean rec = false;
float numSquares = 256.0;

void setup ()
{
  size(750, 750, P3D);
  background(225);
  //frameCount = 10;

  smooth();

  w8 = width / numSquares;
  h8 = height / numSquares;
}

void draw ()
{
  background(0);
  //rotateY(mouseX);
  //background(250);
  textSize(125);
  fill(225);
  text("GEIST", width/2, height/2);
  noFill();
  translate(width/2, height/2);
  
  for ( int ix = 0; 
    ix < numSquares; 
    ix++ )
  {
    //strokeWeight(.25 * second()%2);
    strokeWeight(1);
    
    rotateX(second() * 180/PI);
    rotateZ(second() * 360/PI/2);
    for ( int iy = 0; iy < numSquares; iy++ )
    {
      //fill(ix / second()%3);
      stroke(3*ix);
      

      int choice = int(random(3));

      switch ( choice )
      {
      case 0:
        rect( ix*w8, iy*h8, w8, h8 );
        //fill(0);
        //noStroke();
        ellipse(-ix*w8, -iy*h8, w8, h8);
        //noFill();
        break;
      case 1:
        //line( ix*w8, iy*h8+h8, ix*w8+w8, iy*h8 );
        break;
      case 2:
        for ( int i = 0; i < 32; i++ )
        {
          //line((ix*w8), iy*h8+i*w8/8, ix*w8+w8, iy*h8+i*w8/8);
          //ellipse((ix*w8), iy*h8+i*w8/8, 10, 10);
        }
        
      }
    }
  }
  if(rec) {
    saveFrame("frames#/####.png");
  }
}

void mousePressed ()
{
  rec = true;
}
