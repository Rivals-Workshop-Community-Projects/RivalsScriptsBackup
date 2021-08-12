
if (my_hitboxID.attack == AT_JAB) {
    parry_lag = 0;
}  

if esave > 1 {
      esave = 0
	sound_play(sound_get("ting"))
	
    spawn_hit_fx(esavex,esavey + 10, 302)
    spawn_hit_fx(esaveid.x,esaveid.y + 10, 302)
  
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.type == 2) {
    
    my_hitboxID.hitbox_timer = 0;
    parry_lag = 0;
    
    with (asset_get("pHitBox")) {
    if player_id == other.id {	
     if attack == AT_FSPECIAL{
         hsp *= -1
         spr_dir *= -1
         can_hit_self = true
     }   
        
    }
    }

}

if (my_hitboxID.attack == AT_USPECIAL ) {
     with (asset_get("pHitBox")) {
        if player_id == other.id && attack == AT_USPECIAL {
          destroyed = true;
        }
    }
}
     dmgmul = 0
attackbar = 0