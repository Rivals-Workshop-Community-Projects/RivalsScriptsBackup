


with (asset_get("pHitBox")){
    if (self.attack == AT_DATTACK && other.has_hit_player){
        other.hsp = 0;
    }
}


if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num = 1){
    if  (hit_player_obj.state_cat = SC_HITSTUN){
    window = 8;
    nspecial_grabbedplayer = hit_player_obj;
    }
}


if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num = 1){
 with (hit_player_obj){
        other.grabbed_player_damage = get_player_damage( player );
 }
 if (grabbed_player_damage >= 120){
   sound_play(sound_get("bonby_fspecial_grab_highdamage"));  
  set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("bonby_fspecial_jump_highdamage")); 
 }
 if (grabbed_player_damage < 120){
   sound_play(sound_get("dstronggrab"));       
  set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("dstrongjump")); 
 } 
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num = 1){
    
    if (frog_exists = 1 && my_hitboxID.enemies = 0){
        frog.state = PS_IDLE_AIR;
        frog.state_timer = 0;
        frog.hsp = -4 * frog.spr_dir;
        frog.vsp = -8;
    }
}


if (my_hitboxID.attack == 39 && my_hitboxID.hbox_num = 1){
    if  (hit_player_obj.state_cat = SC_HITSTUN){
    detached_cooldown = 90;
    frog.grabbedplayer = hit_player_obj;
    frog.state = PS_WRAPPED;
    }
}


if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num = 1){
    final_hitsprite = hit_player;
    window = 3;
}

