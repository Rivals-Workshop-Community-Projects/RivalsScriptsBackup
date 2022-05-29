//Float

with oPlayer{
  
  if(other != self and static_pull){
    
        
      var pull_to_x = 0;
      var pull_to_y = 0;
      switch(other.attack){
        case AT_USPECIAL_GROUND:
          pull_to_x = 55;
          pull_to_y = -85;
          
          break;
        case AT_NSPECIAL:
          pull_to_x = 35;
          pull_to_y = 0;
          
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
      
      
      var mult = (cose)*1;
      
      mult = clamp(mult, 0, 2)

      
      var dir_sine = -dsin(dir);
      // vsp += -((mult)*grav/1.8) * free;
      // vsp *= vsp > 0 ? .99 : 0.98;
      
      var dir_cose = dcos(dir);
      if !free and abs(hsp) > 0{
        var temp_hsp = hsp;
        hsp += (frict - 0.18)*sign(hsp);
        if(temp_hsp*hsp < 0) hsp = 0;
      }
      saved_hsp = 0;
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