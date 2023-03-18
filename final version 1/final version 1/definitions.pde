
void draw_branches(PVector point, PVector vector, float angle, float ratio, float limit_branch_length){

  PVector reduced_size_vector;
  reduced_size_vector=new PVector(0,0);
  PVector rotated_reduced_size_vector_1;
  rotated_reduced_size_vector_1=new PVector(0,0);
  PVector rotated_reduced_size_vector_2;
  rotated_reduced_size_vector_2=new PVector(0,0);
  PVector new_point;
  new_point=new PVector(0,0);


  new_point=add_vectors(point, vector);

  line(point.x, point.y, new_point.x, new_point.y);
  
  reduced_size_vector=scale(vector, ratio);
 
  rotated_reduced_size_vector_1=rotate(reduced_size_vector, angle);
  rotated_reduced_size_vector_2=rotate(reduced_size_vector, -angle);

  if(reduced_size_vector.mag()>limit_branch_length){
    draw_branches(new_point, rotated_reduced_size_vector_1, angle, ratio, limit_branch_length);
    draw_branches(new_point, rotated_reduced_size_vector_2, angle, ratio, limit_branch_length);
  }
 
}

PVector add_vectors(PVector v1, PVector v2){
  PVector result;
  result=new PVector(0,0);
  
  result.x=v1.x+v2.x;
  result.y=v1.y+v2.y;
  
  return result;
}

PVector scale(PVector v, float ratio){
  PVector v_scaled;
  v_scaled=new PVector(0,0);
  
  v_scaled.x=v.x*ratio;
  v_scaled.y=v.y*ratio;
  
  return v_scaled;
}

PVector rotate(PVector v, float angle){
  PVector v_rotated;
  v_rotated=new PVector(0,0);
   
  v_rotated.x=cos(angle)*v.x-sin(angle)*v.y;
  v_rotated.y=sin(angle)*v.x+cos(angle)*v.y;
  
  return v_rotated;
}
