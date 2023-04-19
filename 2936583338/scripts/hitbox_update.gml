if(attack == AT_DSPECIAL && hbox_num == 2 && hitbox_timer >= 1){
    if !(place_meeting(x, y+1, asset_get("par_block")) || place_meeting(x, y+1, asset_get("par_jumpthrough"))) { 
        destroyed = true;
    }
}

var refresh_time = 10; //change this number to change the amount of frames between hits

if (attack == AT_DSPECIAL && hbox_num == 2) {
  if (hitbox_timer % refresh_time == 0) for (var i = 1; i < 20; i++) {
     can_hit[i] = 1;
  }
}