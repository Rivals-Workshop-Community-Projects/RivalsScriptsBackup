//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
last_window = window;
if jump_pressed_timer == 6 { flight_meter -= 10; flight_disabled_timer = 8; }


if attack == AT_DTILT || attack == AT_DSPECIAL_2 {
	hud_offset = -48;
}
if attack == AT_TAUNT {
	hud_offset = 16;
}

//flying

if flight_mode == 0 {
	able_to_glide = 1;
	if (attack != 48 && !(attack == AT_FSPECIAL) && !(attack == AT_USTRONG) && !(attack == AT_DSTRONG)) && flight_disabled_timer == 0{
		if right_down || left_down { 
			flight_meter -= 0.1;
			if flight_meter > 0{
				vsp = ease_circOut( ceil(flying_vsp), 0, flying_timer, 14 );
			}
		}

		if right_down || left_down { 
			flying = 1;
		} else { flying = 0; }
	}
}

if attack == AT_USPECIAL && window > 1 {
	move_cooldown[AT_USPECIAL] = 16;
	clear_button_buffer( PC_UP_HARD_PRESSED );
	clear_button_buffer( PC_SPECIAL_PRESSED );
	can_attack = 1;
	can_special = 1;
	can_strong = 1;
}

//airdash

if attack == 48 {
	vsp = 0.4;
	if dash_dir = -1 { sprite_index = sprite_get("backward_dash") }
	if (jump_pressed || tap_jump_pressed){ spr_dir = dash_dir; jump_from_dash = 1; }
	if window > 1 {
		has_hit = 0;
		can_attack = true;
		can_strong = true;
		can_ustrong = true;
		can_special = true;
		can_shield = true;
		can_jump = true;
		if !free {
			if spr_dir == 1 {
				if jump_pressed && joy_dir > 90 && joy_dir < 270 { spr_dir = -1; }
			} else {
				if jump_pressed && joy_dir < 90 && joy_dir > -90 { spr_dir = 1; }
			}
		}
	}
	if window == 1 { //dash
		if window_timer == 1 { 
		var word_land_dust = spawn_dust_fx( x-10*2*spr_dir, y+16, sprite_get("word_dash"), 16 );
		word_land_dust.spr_dir = 1; 
		flight_meter -= 10; sound_stop(asset_get("sfx_dash_start")); 
		var airdash_dust_fx = spawn_dust_fx( x, y-52, sprite_get("dust_fx_airdash"), 22 );
		airdash_dust_fx.dust_depth = 5;
		if dash_dir == 1 {
			airdash_dust_fx.spr_dir = 1;
		} else if dash_dir == -1 { airdash_dust_fx.spr_dir = -1; } 	
	}
		if window_timer == 4 {
			if free { // on air
				hsp = 8*dash_dir; 
			} else { hsp = 10*dash_dir } //on ground
		}
	}
	if window == 3 && window_timer == 4 { //dash stop
		if free { hsp = hsp - (2 * dash_dir); }
	}
}

if attack == AT_JAB {
	if has_hit { dashing = 0; }
} else { dashing = 1; }

//ice meteor

if attack == AT_NSPECIAL {
	if window == 1 {
		vsp = 0.4;
		grounded_dust_timer += 1.5;
		if window_timer == 1 {
			ice_meteor_article = instance_create( x + 16*spr_dir, y - 156, "obj_article1" );
			ice_meteor_article.article_id = 1;
		}
		if window_timer > 6 {
			if !special_down { 
				window = 2; window_timer = 0; 
			}
		}
	}
	if window == 2 { 
		if window_timer == 1 {
			var word_land_dust = spawn_dust_fx( x-20*2*spr_dir, y+32, sprite_get("word_dash"), 16 );
			word_land_dust.spr_dir = 1; 
			sound_stop( asset_get("sfx_ice_hammerstart") ); 
		}
	}
}

//ice bullet

if attack == AT_FSPECIAL {
	flying = false;
	if window == 2 { 
		if window_timer == 1 {
			var airdash_dust_fx = spawn_dust_fx( x, y-52, sprite_get("dust_fx_airdash"), 22 );
			airdash_dust_fx.dust_depth = 5;
			if hsp >= 0 {
				airdash_dust_fx.spr_dir = 1;
			} else { airdash_dust_fx.spr_dir = -1; }
		}
		if place_meeting(x + (4*spr_dir), y, asset_get("par_block")) {
			sound_stop( asset_get("sfx_bird_downspecial") );
			sound_play( asset_get("sfx_blow_heavy1") );
			window = 3;
			window_timer = 0;
		}
	if window == 3 { destroy_hitboxes(); }
	}
	if window == 4 {
		can_move = 0;
		if window_timer == 5 { hsp = -6 * spr_dir; }
	} else { can_move = 1; }
	if window == 5 && window_timer == 19 && has_hit == false { state = PS_PRATFALL; }
}

//frost missiles

if attack == AT_DSPECIAL {
	if window == 2 {
		switch(window_timer){
			case 1:
				sound_play(asset_get("sfx_ice_burst_up"));
				spawn_hit_fx( x+4*spr_dir, y-16, ice_form_vfx );
				create_hitbox( AT_DSPECIAL, 1, x, y );
			break;
			case 2:
				frost_missile_offset++;
				spawn_hit_fx( x, y-96, ice_form_vfx );
				create_hitbox( AT_DSPECIAL, 1, x, y );
			break;
			case 3:
				frost_missile_offset++;
				sound_play(asset_get("sfx_ice_burst_up"));
				spawn_hit_fx( x-20*spr_dir, y-120, ice_form_vfx );
				create_hitbox( AT_DSPECIAL, 1, x, y );
			break;
			case 4:
				frost_missile_offset++;
				spawn_hit_fx( x-40*spr_dir, y-46, ice_form_vfx );
				create_hitbox( AT_DSPECIAL, 1, x, y );
			break;
			case 5:
				frost_missile_offset++;
				sound_play(asset_get("sfx_ice_burst_up"), 0, noone, 1, 1.2 );
				spawn_hit_fx( x+40*spr_dir, y-64, ice_form_vfx );
				create_hitbox( AT_DSPECIAL, 1, x, y );
			break;
			case 6:
				frost_missile_offset++;
				spawn_hit_fx( x+32, y-40, ice_form_vfx );
				create_hitbox( AT_DSPECIAL, 1, x, y );
				move_cooldown[AT_DSPECIAL] = 100;
			break;
		}
	}
}

if attack == AT_BAIR {
	if window == 2 {
		switch(window_timer){
			case 1:
				var ice_shard = spawn_hit_fx( x-16*2*spr_dir, y-20*2, ice_form_vfx );
				ice_shard.depth = -5;
			break;
			case 2:
				var ice_shard = spawn_hit_fx( x-6*2*spr_dir, y-32*2, ice_form_vfx );
				ice_shard.depth = -5;
			break;
			case 5:
				var ice_shard = spawn_hit_fx( x, y-6*2, ice_form_vfx );
				ice_shard.depth = -5;
			break;
		}
	}
}

if attack == AT_DAIR {
	if window == 2 {
		switch(window_timer){
			case 1:
				var ice_shard = spawn_hit_fx( x-14*2*spr_dir, y-24*2, ice_form_vfx );
				ice_shard.depth = -5;
			break;
			case 2:
				var ice_shard = spawn_hit_fx( x+6*2*spr_dir, y-28*2, ice_form_vfx );
				ice_shard.depth = -5;
			break;
			case 5:
				var ice_shard = spawn_hit_fx( x+4*2, y-2*2, ice_form_vfx );
				ice_shard.depth = -5;
			break;
		}
	}
}

//giga frost barrage

if strong_charge > 0 { grounded_dust_timer += 1.5; }

if attack == AT_FSTRONG {
	if window == 3 {
		if window_timer == 1 { shake_camera(1, 30); }
		if window_timer % 6 == 0 { hsp -= 4*spr_dir; if flight_mode == 1 {flight_meter -= 0.2;}  create_hitbox( AT_FSTRONG, 1, x+14*2*spr_dir, y-32*2 ); var ice_shard = spawn_hit_fx( x+14*2*spr_dir, y-32*2, ice_form_vfx ); ice_shard.depth = -5;}
		if window_timer % 6 == 3 { hsp = 0; if flight_mode == 1 {flight_meter -= 0.2;} create_hitbox( AT_FSTRONG, 1, x -16*2*spr_dir, y-18*2 ); var ice_shard = spawn_hit_fx( x-16*2*spr_dir, y-18*2, ice_form_vfx ); ice_shard.depth = -5;}
	}
	if window == 4 {
		if window_timer == 1 { shake_camera(8, 4); if flight_mode == 1 {flight_meter -= 0.2;} var ice_shard = spawn_hit_fx( x+8*2*spr_dir, y-24*2, ice_form_vfx ); ice_shard.depth = -5;}
	}
}

if attack == AT_USTRONG {
	if window == 1 && strong_charge > 1 { hsp = 0; }
	if window == 2 && window_timer == 2 {
		if strong_charge == 60 { vsp = -15; } else { vsp = -12; }
	}
}

//ice lance

if attack == AT_DSPECIAL_2 {
	if ice_lance_cancel == 1 && !hitpause { can_jump = 1; }
	if window == 1 {
		if window_timer == 1 {
			ice_lance_ledge_article = instance_create( x + 72*spr_dir, y, "obj_article1" );
			ice_lance_ledge_article.article_id = 2;
		}
		if window_timer == 8 {
			ice_lance_article = instance_create( ice_lance_ledge_article.x, y, "obj_article1" );
			ice_lance_article.article_id = 3;
		}
	}
	if window == 3 {
		if window_timer == 12 && down_down { destroy_hitboxes(); attack_end(); set_state(PS_CROUCH); state_timer = 4; hurtboxID.sprite_index = sprite_get("petshop_crouchbox");}
	}
}

//sfx

if attack == AT_JAB || attack == AT_NAIR {
 if window == 1 && window_timer == 1 { sound_play( asset_get("sfx_ice_back_air"), 0, noone, 1, 1.2 ); }
}
if attack == AT_FTILT || attack == AT_FAIR {
 if window == 1 && window_timer == 1 { sound_play( asset_get("sfx_ice_back_air"), 0, noone, 1, .85 ); }
}
if attack == AT_DTILT {
 if window == 1 && window_timer == 7 { sound_play( asset_get("sfx_ice_ftilt"), 0, noone, .6, 1 ); }
}
if attack == AT_DSPECIAL_2 {
 if window == 1 && window_timer == 11 { sound_play( asset_get("sfx_ice_back_air"), 0, noone, 1, .8 ); }
}
if attack == AT_NSPECIAL {
	if window == 2 && window_timer == 1 { 
		sound_play( asset_get("sfx_ice_burst_up"), 0, noone, 1, 1 ); 
		sound_play( asset_get("sfx_ice_burst_up"), 0, noone, 1, 1 );
	}
}
if attack == AT_USPECIAL {
	can_uspecial = false;
	if window == 1 && window_timer == 1 {
		if flight_mode == 0 {
			var word_land_dust = spawn_dust_fx( x, y + 10, sprite_get("word_screech_low"), 10 );
			word_land_dust.spr_dir = 1; 
			sound_play( sound_get("screech_low") );
		} else {
			var word_land_dust = spawn_dust_fx( x, y, sprite_get("word_screech"), 20 );
			word_land_dust.spr_dir = 1; 
			sound_play( sound_get("screech_high"), 0, noone, .5);
		}
	}
}

//taunt

if attack == AT_TAUNT {
	if window == 1 {
	switch(window_timer){
		case 8:
			sound_play( asset_get("sfx_waveland_wra") );
		break;
		case 13:
			sound_play( asset_get("sfx_waveland_wra") );
		break;
		case 20:
			sound_play( asset_get("sfx_waveland_wra") );
		break;
		case 28:
			sound_play( asset_get("sfx_waveland_fors") );
		break;
		case 40:
			sound_play( sound_get("screech_tiny") );
		break;
		case 44:
			sound_play( asset_get("sfx_waveland_wra") );
			var word_land_dust = spawn_dust_fx( x, y, sprite_get("word_screech"), 20 );
			word_land_dust.spr_dir = 1; 
			spawn_hit_fx( x+48*2*spr_dir, y-48*2, taunt_panel );
		break;
	}
	}
}
//ice particles
if has_hit == false {
	switch(attack){
		case AT_JAB:
			if window == 3 && window_timer == 4 {
				spawn_dust_fx( x+40*spr_dir, y-8, sprite_get("jab_ice"), 16 );
			}
		break;
		case AT_NAIR:
			if window == 3 && window_timer == 4 {
				spawn_dust_fx( x+40*spr_dir, y-8, sprite_get("jab_ice"), 16 );
			}
		break;
		case AT_FTILT:
			if window == 3 && window_timer == 5 {
				spawn_dust_fx( x+62*spr_dir, y-64, sprite_get("ftilt_ice"), 20 );
			}
		break;
		case AT_FAIR:
			if window == 3 && window_timer == 5 {
				spawn_dust_fx( x+58*spr_dir, y-64, sprite_get("ftilt_ice"), 20 );
			}
		break;
		case AT_UTILT:
			if window == 3 && window_timer == 6 {
				spawn_dust_fx( x+26*2*spr_dir, y-35*2, sprite_get("utilt_ice"), 20 );
			}
		break;
		case AT_UAIR:
			if window == 3 && window_timer == 6 {
				spawn_dust_fx( x+26*2*spr_dir, y-51*2, sprite_get("utilt_ice"), 20 );
			}
		break;
	}
} else {
	switch(attack){
		case AT_JAB:
			if window == 3 && window_timer == 3 {
				spawn_dust_fx( x+40*spr_dir, y-8, sprite_get("jab_ice"), 16 );
			}
		break;
		case AT_NAIR:
			if window == 3 && window_timer == 3 {
				spawn_dust_fx( x+40*spr_dir, y-8, sprite_get("jab_ice"), 16 );
			}
		break;
		case AT_FTILT:
			if window == 3 && window_timer == 3 {
				spawn_dust_fx( x+62*spr_dir, y-64, sprite_get("ftilt_ice"), 20 );
			}
		break;
		case AT_FAIR:
			if window == 3 && window_timer == 3 {
				spawn_dust_fx( x+58*spr_dir, y-64, sprite_get("ftilt_ice"), 20 );
			}
		break;
		case AT_UTILT:
			if window == 3 && window_timer == 4 {
				spawn_dust_fx( x+26*2*spr_dir, y-35*2, sprite_get("utilt_ice"), 20 );
			}
		break;
		case AT_UAIR:
			if window == 3 && window_timer == 4 {
				spawn_dust_fx( x+26*2*spr_dir, y-51*2, sprite_get("utilt_ice"), 20 );
			}
		break;
	}
}