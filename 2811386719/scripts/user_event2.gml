//Pull

with oPlayer{
  
  // static_pull--;
  if(other != self and wally_static_enabled and static_pull > 0){
    
    // pulling = true;
    
    var pull_to_x = 0;
    var pull_to_y = 0;
    var str = 0
    var max_spd = 0
    switch(other.attack){
      case AT_USPECIAL_GROUND:
        pull_to_x = 55;
        pull_to_y = -115;
        str = 1.1
        max_spd = 10
        break;
      case AT_NSPECIAL:
        pull_to_x = 35;
        pull_to_y = -25;
        str = 1
        max_spd = 10
        break;
      case AT_JAB:
        pull_to_x = 60;
        pull_to_y = -55;
        str = 1.1
        max_spd = 12
        break;
    }
    
    other.pull_dir_x = other.x + pull_to_x*other.spr_dir;
    other.pull_dir_y = other.y + pull_to_y;
    
    var dir = point_direction(x, y, other.pull_dir_x, other.pull_dir_y);
    var dist = point_distance(x, y, other.pull_dir_x, other.pull_dir_y);
    
    //Sine wave falloff
    var max_range = 1000;
    dist = clamp(dist, 0, max_range);
    var limits = (dist+1)/max_range;
    
    var falloff = (sin(limits*pi*1.5) + 1)/2;
    
    var dir_cose = dcos(dir);
    var dir_sine = -dsin(dir);
    
    var dp = dot_product(dir_cose, dir_sine, hsp, vsp)
    var mult = str*(falloff);
    
    //OFfstage falloff
    var dist_threshold = 35
    if(other.distance_from_ledge > dist_threshold) mult = mult*1/((other.distance_from_ledge - dist_threshold)*0.03 + 1);
    
    // mult = clamp(mult, 0, 2)
    // print(dist)
    // print(mult)
    
    pull_strength = mult;
    
    
    // var vp = point_distance(0,0, hsp/11, vsp/15 )
    // if !(dp >= 0 and vp > 1){
    var acc_h = (dir_cose + 0.97*frict*sign(dir_cose))*mult;
    var acc_v = ((dir_sine - grav/1.1)*free)*mult;
    if(state == PS_DASH){
      if !(abs(saved_hsp+hsp) > 8 and dir_cose*saved_hsp >= 0) {
        saved_hsp += acc_h*2 ;
      //saved_hsp = clamp(saved_hsp, -6, 10);
      
      }
      x += saved_hsp;
    }else{
      saved_hsp = 0;
    }
    
    if(dp > 0){
      var aa = point_distance(0,0, hsp + acc_h, vsp + acc_v)
      // print(aa)
      if(aa <= max_spd){
        hsp += acc_h
        vsp += acc_v
      }else{
        var drr = point_direction(0,0, hsp + acc_h, vsp + acc_v)
        var a = point_distance(0,0, hsp, vsp)
        hsp = lengthdir_x(a, drr)
        vsp = lengthdir_y(a, drr)
      }
    }else{
      var aa = point_distance(0,0, hsp + acc_h, vsp + acc_v)
      hsp += acc_h
      vsp += acc_v
    }
    // print(hsp)
    // } 
    
    
    // if !(abs(vsp) > 15 and vsp*dir_sine >= 0) 

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
  if("bubble" in self and bubble and !was_parried){
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
    
    other.pull_dir_x = other.x + pull_to_x*other.spr_dir;
    other.pull_dir_y = other.y + pull_to_y;
    
    var dir = point_direction(x, y, other.pull_dir_x, other.pull_dir_y);
    var dist = point_distance(x, y, other.pull_dir_x, other.pull_dir_y);
    
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
    if !(abs(vsp) > 11 and vsp*dir_sine >= 0) vsp += (dir_sine*mult - (mult)*grav/1.05) *free;
    
    if(point_distance(0,0,hsp,vsp) > 16){
      hsp *= 0.95;
      vsp *= 0.95;
    }
    
    if(other.magnet_timer%4 == 1){
      sound_play(asset_get("sfx_absa_dattack"), false, noone, 0.35, 1.7);
    }
  }
}