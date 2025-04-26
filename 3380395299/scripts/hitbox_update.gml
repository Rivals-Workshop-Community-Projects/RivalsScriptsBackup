//hitbox_update

if (attack == AT_NSPECIAL) {
	if hbox_num != 5 {
		if !free {
			if bounce > 0 {
				with player_id sound_play(sound_get("beep5"), false, noone, .5, .9+other.bounce/10);
				bounce--;
				vsp = -4;
				if hbox_num == 3 {
					hsp *= -.75;
				} else {
					hsp *= .75;
				}
			}
			if bounce == 1 {
				y -= 2;
				has_hit = true;
			}
		}
		
		if hbox_num == 4 && hitbox_timer == length-1 {
			sound_play(asset_get("sfx_ell_fist_explode"));
			with player_id create_hitbox(AT_NSPECIAL, 5, other.x, other.y);		
			shake_camera(4, 6);
		}
		
		if has_hit {
			img_spd = 0;
			hsp = 0;
			vsp = 0;
			grav = 0;
			air_friction = 0;
			frict = 0;
			walls = 2;
			grounds = 1;
			image_xscale = 0;
			image_yscale = 0;	
			if hitbox_timer mod 10 >= 8 {
				visible = false;
			} else {visible = true; }
		}
	}
	if hbox_num == 5 {
		with (asset_get("pHitBox")) {
			if (attack == AT_NSPECIAL && hbox_num == 4) {
				other.player = player;
				other.spr_dir = spr_dir;
			}
		}
	}
}

if attack == AT_DTILT && hbox_num == 2 {
	draw_xscale = spr_dir;
	if hitbox_timer mod 9 == 3 {
		if !free hsp = 32*spr_dir;	
		if free { 
			if jumping { vsp = -32;	} 
			else vsp = 32;
		}
	} else {
		hsp = 0;
		vsp = 0;
	}
	if hitbox_timer mod 9 == 4 { 
		with player_id sound_play(sound_get("beep1"), false, noone, .5, 1.2);
		image_index++;
	}
	
	if jumping {
		proj_angle = 90*spr_dir;
		kb_angle = 90;
		projectile_parry_stun = 1;
	}
	
	with player_id move_cooldown[AT_DTILT] = 10;
	
	if hittimer > 0 {
		hittimer--;
	}
	
	if hittimer == 1 {
		for(var i = 0; i < 20; i++) can_hit[i] = true;
	}
}


if attack == AT_DAIR && hbox_num == 1 {
	if hitbox_timer mod 9 == 3 {
		if was_parried {
			vsp = -32;
			proj_angle = -180;
		} else {
			vsp = 32;
		}
	} else {
		vsp = 0;
	}
	if hitbox_timer mod 9 == 4 { 
		with player_id sound_play(sound_get("beep2"), false, noone, .5, .9);
	}
	
	if !free {
		destroyed = true;
	}
	
	if hitbox_timer == 3 { 
		kb_angle = 45;
		kb_scale = .75;
	}
	
	with player_id move_cooldown[AT_DAIR] = 10;
}