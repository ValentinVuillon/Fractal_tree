  PVector point_;
  PVector vector_;



void setup() {
  size(1440, 900);

}


float angle=0.5;
float ratio=0.5;
float basis_length=200;
float limit_branch_length=1;

void draw(){
  point_=new PVector(0,0);
  point_.x=mouseX;
  point_.y=mouseY;
  vector_=new PVector(0, -basis_length);
  background(0);
  stroke(255);
  draw_branches(point_, vector_, angle, ratio,limit_branch_length);
  
  if (keyPressed == true) {
    if (key == 'a') {
      angle=angle+0.01;
    }
    if (key=='z') {
      angle=angle-0.01;
    }
     if (key=='e') {
      ratio=ratio+0.01;
    }
    if (key == 'r') {
      ratio=ratio-0.01;
    }
     if (key=='t') {
      basis_length=basis_length+5;
    }
    if (key=='y') {
      basis_length=basis_length-5;
    }
     if (key=='u') {
      limit_branch_length=limit_branch_length+0.1;
    }
    if (key=='i') {  
      limit_branch_length=limit_branch_length-0.1;
      if( limit_branch_length<=0){
         limit_branch_length=0.01;
      }
    }
  }
  
}
