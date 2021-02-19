//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if is_gravity_cancel and window = 1 and window_timer = 1 window_timer = 3

if attack == AT_NSPECIAL and window = 3 and window_timer = 8 {
	if myscarecrow {
	myscarecrow.state = 2
	myscarecrow.state_timer = 0
	myscarecrow.image_index = 0
	myscarecrow.sprite_index = sprite_get("scarecrow_die")
	}
	myscarecrow = instance_create(x+(spr_dir*30),y,"obj_article1")
}

if attack == AT_FSPECIAL_AIR and window = 2 {
	move_cooldown[AT_FSPECIAL_AIR] = 30
	if !free {
	hurtboxID.sprite_index = sprite_get("fspecial_ground_hurt") 
	attack = AT_FSPECIAL
	}
}

if attack == AT_NSPECIAL_AIR {
	if window = 2 move_cooldown[AT_NSPECIAL_AIR] = 50
	if window = 1 and !free attack = AT_NSPECIAL
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
	can_wall_jump = true;
	if window == 1 {
		can_move = false;
		if window_timer == 3 {
			if !free set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
			else { if is_gravity_cancel {
				reset_gc = 1 
				set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
				}
				else  set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
			}
		}
	}
}

if attack == AT_DTILT {
	if window = 3 and has_hit and window_timer = 1 {
	vsp = -9
	hsp = -3*spr_dir
	if is_gravity_cancel { //Reset_gc doesnt work here for some reason idk
	        is_gravity_cancel = false;
        	gravity_speed = orig_gravity_speed
        	air_accel = orig_air_accel
        	air_friction = orig_air_friction
		}
	}
	if window = 2 and has_hit {
	window = 3
	window_timer = 0
	} 

}

if attack = AT_DATTACK {
	if window = 1 and window_timer = 1 gatling = 0
	if has_hit and window_timer < 12 {
	gatling = 1
	can_ustrong = 1
	}
}
if attack = AT_USTRONG and gatling {
	gatling = 0
	old_hsp *= 1.5
	hsp *= 1.5
}

if attack == AT_UTILT {
	can_fast_fall = 0
	if window = 1 and window_timer = 8 and is_gravity_cancel {
	reset_gc = 1
	}
}

if attack == AT_DSPECIAL {
	can_move = 0
	can_wall_jump= 1
	if window = 1 and window_timer = 1 and sfxon sound_play(asset_get("sfx_bird_sidespecial_start"))
	if window = 1 and window_timer = 13 and sfxon {
	sound_play(asset_get("sfx_bird_sidespecial"))
	spawn_hit_fx( x+(spr_dir*10), y-20, 194);
	}
	if window = 2 and window_timer = 1 {
		if djumps > 0 djumps -= 1
	}
}

if attack == AT_DSPECIAL_AIR {
	can_move = 0
	can_wall_jump = 1
	if window = 1 and window_timer = 1 and sfxon sound_play(asset_get("sfx_bird_sidespecial_start"))
	if window = 1 and window_timer = 13 and sfxon {
	sound_play(asset_get("sfx_bird_sidespecial"))
	spawn_hit_fx( x+(spr_dir*10), y-20, 194);
	}
	if window = 2 {
		if window_timer = 1 and djumps > 0 djumps -= 1
		if window_timer = 20 {
		window = 4
		window_timer = 0
		move_cooldown[AT_DSPECIAL_AIR] = 20
		}
	}
	if window = 3 and window_timer = 0 {
	window_timer = 1
	if sfxon sound_play(asset_get("sfx_bird_downspecial_end"))
	set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 0);
	}
}

if attack = AT_TAUNT {
if window_timer = 30 or window_timer = 48 or window_timer = 66 or window_timer = 72 sound_play(asset_get("sfx_land_light"))
if window_timer = 12 or window_timer = 42 or window_timer = 72 sound_play(asset_get("sfx_birdflap"))
if taunt_down and !free and window_timer = 71 window_timer = 6
}