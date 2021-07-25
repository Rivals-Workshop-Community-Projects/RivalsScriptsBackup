//hitbox_update

// NSpecial Damage Scaling With Distance

if ((attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR) && orig_player == player) {
  if (hitbox_timer > 15) {
    damage = 1
  }
}

if (attack == AT_FSPECIAL){
  if (hsp == 0){ //Wall behavior
    if (!player_id.hitpause && !player_id.plasma_pause && player_id.state_cat != SC_HITSTUN && player_id.tp_death_cd == 0){ //Teleport if not in hitpause/stun/death
      sound_play(sound_get("snd_save"));
      player_id.x = x;
      player_id.y = y;
      player_id.vsp = -4;
      player_id.hsp = 0;
    }
    else{
      sound_play(sound_get("snd_save_erase"));
      destroyed = true;
    }
    
  }
  if (vsp < -2){ //Destroy hitbox on ground hit
    sound_play(sound_get("snd_save_erase"));
    destroyed = true;
  }
  
}