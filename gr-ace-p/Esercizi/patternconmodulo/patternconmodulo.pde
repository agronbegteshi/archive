void setup(){

  size(500,500);
  
}

void draw(){

  background(#3979FF);
  
  rectMode(CENTER);
  //ellipseMode(CENTER);
  ellipseMode(CORNER);
  
  // draw background pattern
  for(int r=0;r<=width;r+=50){
  
    for(int c=0;c<=height;c+=50){
     
      frameRate(10);
     strokeWeight(2);
     stroke(0);
     fill(random(0,255), random (0,0), random (0,255));;
  
    ellipse(c,r,(frameCount% 10) * 10, 50);
    rect(c,r,50, (frameCount% 10) * 5);
   
      
      
    
    //ellipse(c,r,(frameCount% 50) * 10, 50);
   // rect(c,r,50, (frameCount% 50) * 5);
   
    //rect(c,r,50,50);
  
    }
  }
  
 
  
}
