if (state == PS_SPAWN) {
    if (introTimer < 10 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
	if (state_timer == 15) {
        sound_play(sound_get("sfx_intro"));
    }
	if (state_timer == 65){
	sound_stop(sound_get("sfx_intro"));
	}
}

if (state == PS_ATTACK_AIR && attack == AT_USPECIAL && window > 2 && window < 5){
    if (soft_armor > 0){
        sprite_index = sprite_get("uspecial_armor");
    }
    else {
        sprite_index = sprite_get("uspecial");
    }
}

if (state == PS_DASH_STOP) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_dashstop"));
    }
}

if (state == PS_PARRY) {
    if (state_timer == 0) {
        sound_play(sound_get("sfx_parry"));
    }
}

if (state == PS_ROLL_BACKWARD) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_roll"));
    }
}

if (state == PS_ROLL_FORWARD) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_roll"));
    }
}

if (state == PS_TECH_GROUND) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_tech"));
    }
}

if (state == PS_TECH_FORWARD) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_tech"));
    }
}

if (state == PS_TECH_BACKWARD) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_tech"));
    }
}

if (state == PS_WALL_TECH) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_tech"));
    }
}

if (state == PS_WALL_JUMP) {
    if (state_timer == 1) {
        sound_play(sound_get("sfx_jump"));
    }
}

if (get_player_color( player ) == 5) {
  if (state == PS_WALK && (state_timer % 50 == 20 || state_timer % 50 == 45)){
    sound_play(sound_get("sfx_metal"));
  }
  else if(state == PS_DASH && (state_timer % 40 == 7 || state_timer % 40 == 27)){
    sound_play(sound_get("sfx_metal"));
  }
}