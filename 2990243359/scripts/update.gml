//Float Code
{
//Gliding (instances you can glide)
if ((state == PS_FIRST_JUMP && state_timer > 20)
|| (state == PS_FIRST_JUMP && state_timer > 7 && (down_down || down_pressed))
|| (state == PS_IDLE_AIR && state_timer > 7 && (down_down || down_pressed))
|| (state == PS_IDLE_AIR && prev_state == PS_DOUBLE_JUMP)
|| (state == PS_DOUBLE_JUMP && state_timer > 20)
|| (state == PS_DOUBLE_JUMP && state_timer > 7 && (down_down || down_pressed))
|| (state == PS_WALL_JUMP && state_timer > 7 && (down_down || down_pressed))){
    can_glide = true;
    //Makes so it doesn't use the Djump
    if ((down_down || down_pressed) && glide_off == false){
        max_djumps = 0;
    }
    else {
        max_djumps = 1;
    }
}
else {
    if (im_gliding == false){
        can_glide = false;
    }
}

//Actual gliding
if (can_glide == true && jump_down && glide_off == false && im_gliding_cont < 90 &&  //used to be 90
(state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP
|| state == PS_ATTACK_AIR)){
    im_gliding = true;
    vsp = 1;
//    glide_used = true;
}
else {
    im_gliding = false;
}

//Already glided once
if (!jump_down && glide_used){
    glide_off = true;
}

//Resets the glide variables
if (!free){
    glide_used = false;
    glide_off = false;
    im_gliding_cont = 0;
    max_djumps = 1;
}

//Gives you the djumps if you're not gliding
if ((down_down || down_pressed) && glide_off == false){
    land_sound = asset_get("sfx_land_light");
}
else {
    max_djumps = 1;
}

//Actual gliding again
if (im_gliding == true && jump_down && im_gliding_cont < 90){
    im_gliding = true;
    im_gliding_cont++;
    vsp = 1;
    if (im_gliding_cont >= 10){
        glide_used = true;
    }
}
}

if (trident_opponent && trident_opponent.trident_stuck == true && instance_exists(trident)){
	if (trident.state != 7){
		trident_opponent.trident_stuck = false;
	}
	if (trident_opponent.state == PS_RESPAWN){
		trident_opponent.trident_stuck = false;
    	instance_destroy(trident);
	}
}

if (state != PS_ATTACK_AIR){
	mask_index = asset_get("ex_guy_collision_mask");
}

if (state == PS_RESPAWN){
    i_died = true;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_RESPAWN){
    i_died = false;
    sound_stop(sound_get("ww_laugh1"));
	sound_stop(sound_get("ww_laugh2"));
	sound_stop(sound_get("ww_laugh3"));
}

//DSpecial hitpause timer
if (has_hit){
    lighting_stun = get_player_damage(hit_player_obj.player)/1.75;
}
print(move_cooldown[AT_FSPECIAL_AIR])
//Trident Version
if (!instance_exists(trident) && move_cooldown[AT_NSPECIAL] == 0 && window == 1 && window_timer == 0){
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair2"));
	set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));
	set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
	set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
	set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 2);
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("swing_heavy2"));
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 12);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
	
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair2"));
	set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair2_hurt"));
	set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
	set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 10);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);
	
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong2"));
	set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
	set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 4);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 49);
	
	set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong2"));
	set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong2_hurt"));
	set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 10, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 11, HG_LIFETIME, 2);
	set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("ustrong_swing"));
	set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 16);
	
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong2"));
	set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));
}

//Tridentless Version
if (instance_exists(trident) || move_cooldown[AT_NSPECIAL] != 0){
	set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
	set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
	set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
	set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
	set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 0);
	set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 0);
	set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 0);
	set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 0);
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 9);
	set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
	
	set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
	set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
	set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 0);
	set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 0);
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);
	set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
	
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
	set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
	set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 0);
	set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 0);
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 40);
	
	set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
	set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
	set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 2);
	set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 10, HG_LIFETIME, 0);
	set_hitbox_value(AT_USTRONG, 11, HG_LIFETIME, 0);
	set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 0);
	set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 13);
	
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
	set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
}

if (!free || state == PS_WALL_JUMP || state == PS_HITSTUN){
	move_cooldown[AT_FSPECIAL_AIR] = 0;
	move_cooldown[AT_FSPECIAL_2_AIR] = 0;
}