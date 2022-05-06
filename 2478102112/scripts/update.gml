/*if dance_timer_innitd = 0{
	dance_timer = other_player_id.dance_timer
	dance_timer_innitd = 1
}*/

if dair_type == 0{
	set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	
	set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 20);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .25);
    set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("present1"));
    set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, sprite_get("present1"));
    set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
    set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 143);
}

if dair_type == 1{
	set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 10);
	
	set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, -10);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .1);
	set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 15);
	set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("present2"));
	set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, sprite_get("present2"));
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_coin_capture"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 198);
}

if attack == AT_TAUNT_2 and window_timer >= 118{
	if taunt_down{
		attack = AT_TAUNT_2
		window_timer = 0;
	}
    if taunt_down == false{
    	state = PS_CROUCH
    	if down_down{
        state_timer = 4
    	}
    }
}

if attack == AT_USPECIAL and window == 3{
	air_max_speed = 3
	can_shield = true
	
}
else{
	air_max_speed = 5
}

if state != PS_AIR_DODGE and ufall == 1{
	state = PS_PRATFALL
	ufall = 0
}

with (oPlayer) { //run through every player
  if (id != other.id) { // if this player is NOT you
  if dt_fx > 49{
		dt_fx = 0;
	}
    if dance_timer > 0{
    	dance_timer -= 1;
    	if state != PS_WALK_TURN and state != PS_DEAD and state != PS_RESPAWN and free == false and dance_timer > 60 or state == PS_WALK_TURN and state_timer == walk_turn_time - 1 and dance_timer > 60 or state == PS_JUMPSQUAT and dance_timer > 60{ //and state_timer >= 1
    		state = PS_WALK_TURN;
    		spr_dir *= -1;
    		state_timer = 0;
    		hurtboxID.sprite_index = hurtbox_spr
    		clear_button_buffer(PC_LEFT_HARD_PRESSED);
			clear_button_buffer(PC_RIGHT_HARD_PRESSED);
			clear_button_buffer(PC_UP_HARD_PRESSED);
			clear_button_buffer(PC_DOWN_HARD_PRESSED);
			clear_button_buffer(PC_LEFT_STRONG_PRESSED);
			clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
			clear_button_buffer(PC_UP_STRONG_PRESSED);
			clear_button_buffer(PC_DOWN_STRONG_PRESSED);
			clear_button_buffer(PC_LEFT_STICK_PRESSED);
			clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			clear_button_buffer(PC_UP_STICK_PRESSED);
			clear_button_buffer(PC_DOWN_STICK_PRESSED);
			clear_button_buffer(PC_JUMP_PRESSED);
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_SHIELD_PRESSED);
			clear_button_buffer(PC_SPECIAL_PRESSED);
			clear_button_buffer(PC_STRONG_PRESSED);
			clear_button_buffer(PC_TAUNT_PRESSED);
			dt_fx += 1;
    	}
    }
   //if dance_timer == 0 and state == PS_WALK_TURN{
    	//state = PS_IDLE;
   // }
  }
}

if party_cooldown > 0{
	party_cooldown -= 1;
	pbc = 1;
}
else{
	pbc = 0;
}

if get_player_color(player) == 25{
	if window == 1 and window_timer == 0{
		set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_bugingi"));
	}
	if state == PS_WALK{
		beffect_timer +=1
	}
}

if beffect_timer >= 20{
	spawn_hit_fx(x, y, beffect)
	beffect_timer = 0 
}

if que_timer > 0{
	que_timer -= 1
	obj_article3.maxarticles = 10
}

if superTrue == 1 {
	print("cat")
	superTrue = 0
	attack = AT_NSPECIAL_2
	set_attack(AT_NSPECIAL_2)
	//vsp = 0
	window = 1
	window_timer = 1
	que_timer = 200
}
if attack == AT_NSPECIAL_2 and window == 3{
	que_count = 0
}
foodrng++
if foodrng >= 10{
	foodrng = 0
}