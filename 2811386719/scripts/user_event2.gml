//Pull

with oPlayer{
  
  // static_pull--;
  if(other != self and static_pull > 0){
    
    // pulling = true;
    
    var pull_to_x = 0;
    var pull_to_y = 0;
    switch(other.attack){
      case AT_USPECIAL_GROUND:
        pull_to_x = 55;
        pull_to_y = -115;
        
        break;
      case AT_NSPECIAL:
        pull_to_x = 35;
        pull_to_y = -25;
        
        break;
      case AT_JAB:
        pull_to_x = 60;
        pull_to_y = -55;
        
        break;
    }
    
    other.pull_dir_x = other.x + pull_to_x*other.spr_dir;
    other.pull_dir_y = other.y + pull_to_y;
    
    var dir = point_direction(x, y, other.pull_dir_x, other.pull_dir_y);
    var dist = point_distance(x, y, other.pull_dir_x, other.pull_dir_y);
    
    var max_range = 900;
    dist = clamp(dist, 0, max_range);
    var limits = (dist+1)/max_range;
    
    var cose = (sin(limits*pi*1.5) + 1)/2;
    
    var dir_cose = dcos(dir);
    var dir_sine = -dsin(dir);
    
    var mult_one = (cose)*(1 + (((hsp*dir_cose + vsp*dir_sine) <= 0)));
    var mult = mult_one*(1);
    
    // mult = clamp(mult, 0, 2)
    // print(dist)
    // print(mult)
    
    pull_strength = mult;
    
    
    if !(abs(hsp) > 11 and hsp*dir_cose >= 0){
      
      if(state == PS_DASH){
        if !(abs(saved_hsp+hsp) > 8 and dir_cose*saved_hsp >= 0) {
          saved_hsp += 0.97*frict*sign(dir_cose)*(mult)*3 ;
        //saved_hsp = clamp(saved_hsp, -6, 10);
        
        }
        x += saved_hsp;
      }else{
        saved_hsp = 0;
      }
      hsp += dir_cose*mult + 0.97*frict*sign(dir_cose)*(mult);
    } 
    
    
    if !(abs(vsp) > 16 and vsp*dir_sine >= 0) vsp += (dir_sine*mult - (mult)*grav/1.2) *free;
    
    
    //if(state == PS_HITSTUN) hitstun;
    // switch(attack){
    //   case AT_USPECIAL_GROUND:
        
        
    //     break;
    //   case AT_NSPECIAL:
    //     vsp += free ? -dsin(dir)*mult - grav/3 : 0;
        
    // }
    // print(grav)
    // grav = grav/3;
    // print(grav)
    // print(dir);
  }

}
with pHitBox{
  if("bubble" in self and bubble){
    var pull_to_x = 0;
    var pull_to_y = 0;
    switch(other.attack){
      case AT_USPECIAL_GROUND:
        pull_to_x = 55;
        pull_to_y = -115;
        
        break;
      case AT_NSPECIAL:
        pull_to_x = 35;
        pull_to_y = -25;
        
        break;
    }
    
    pull_dir_x = other.x + pull_to_x*other.spr_dir;
    pull_dir_y = other.y + pull_to_y;
    
    var dir = point_direction(x, y, pull_dir_x, pull_dir_y);
    var dist = point_distance(x, y, pull_dir_x, pull_dir_y);
    
    var max_range = 2000;
    dist = clamp(dist, 0, max_range);
    var limits = (dist+1)/max_range;
    
    var cose = (sin(limits*pi*1.5) + 1)/2;
    
    
    var mult_one = (cose)*0.9;
    var mult = mult_one;
    
    mult = clamp(mult, 0, 2)
    
    pull_strength = mult;
    
    var dir_cose = dcos(dir);
    if !(abs(hsp) > 9 and hsp*dir_cose >= 0){
      hsp += dir_cose*mult;
    }
    
    var dir_sine = -dsin(dir);
    if !(abs(vsp) > 16 and vsp*dir_sine >= 0) vsp += (dir_sine*mult - (mult)*grav/1.05) *free;
    
    if(point_distance(0,0,hsp,vsp) > 16){
      hsp *= 0.95;
      vsp *= 0.95;
    }
  }
}