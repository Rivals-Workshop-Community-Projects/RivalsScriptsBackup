if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}
if (attack == AT_DSPECIAL){
    if(hbox_num == 1){
    if (hitstop > 0){
        hitstop--;
        if (hitstop == 0) in_hitpause = false;
    } else {
        proj_angle += 7 * -spr_dir;
    }
  }
}
if(attack == AT_DSPECIAL){
	if(hbox_num == 1){
		if(hitbox_timer == 59){
	   create_hitbox(AT_NSPECIAL, 2, x, y);
	   sound_play(sound_get("classic_hurt"));
      }
	}
}