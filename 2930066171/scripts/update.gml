/*
with oPlayer {
	draw_indicator = false;
}
*/
//Portrait
if (get_synced_var(player)) {
	set_ui_element( UI_WIN_PORTRAIT, sprite_get( "alt_portrait" ));
	set_ui_element( UI_CHARSELECT, sprite_get( "alt_charselect" ));
	set_ui_element( UI_WIN_SIDEBAR, sprite_get( "alt_results_small" ));
} else {
	set_ui_element( UI_WIN_PORTRAIT, sprite_get( "portrait" ));
	set_ui_element( UI_CHARSELECT, sprite_get( "charselect" ));
	set_ui_element( UI_WIN_SIDEBAR, sprite_get( "results_small" ));
}
//
if !(instance_exists(nspecial_projectile_out) && nspecial_projectile_out.player == player) {
	nspecial_projectile_out = noone;
}

if (fspecial_proj != -4) {
	if (instance_exists(fspecial_proj)) {
		fspecial_proj.spr_dir = spr_dir;
		//fspecial_proj.x = x + spr_dir * 64 + hsp;
		//fspecial_proj.y = y - 40 + vsp;
		fspecial_proj.vsp = 0;
		fspecial_proj.hsp = 0;
		fspecial_proj.hitbox_timer = 0;
		fspecial_proj.active = false;
		fspecial_proj.player_id = id;
		for (i = 0; i < 20; i++) {
			fspecial_proj.can_hit[i] = 0;
		}
	}
}

if (fspecial_enemy != -4) {
	if (instance_exists(fspecial_enemy) && fspecial_enemy.state_cat == SC_HITSTUN) {
		fspecial_enemy.spr_dir = spr_dir;
		fspecial_enemy.depth = -100;
		switch(attack) {
			case AT_FTHROW: //Forward Throw
				fspecial_enemy.x = x + spr_dir * 64 + hsp;
				fspecial_enemy.y = y - 8 + vsp;
			break;
			case AT_NTHROW: //Back Throw
				fspecial_enemy.x = lerp(fspecial_enemy.x, x + spr_dir * -64 + hsp, grab_lerp_speed);
				fspecial_enemy.y = lerp(fspecial_enemy.y, y - 48 + vsp, grab_lerp_speed);
			break;
			case AT_DTHROW: //Down Throw
				if (window == 1 && window_timer < 12) {
					fspecial_enemy.x = lerp(fspecial_enemy.x, x + spr_dir * -24 + hsp, grab_lerp_speed);
					fspecial_enemy.y = lerp(fspecial_enemy.y, y - 80 + vsp, grab_lerp_speed);
				} else {
					fspecial_enemy.x = x + spr_dir * 48 + hsp;
					fspecial_enemy.y = y - 8 + vsp;
				}
			break;
			case AT_UTHROW: //Forward Throw
				if (window == 1 && window_timer <= 5) {
					fspecial_enemy.x = lerp(fspecial_enemy.x, x + spr_dir * 32 + hsp, grab_lerp_speed);
					fspecial_enemy.y = lerp(fspecial_enemy.y, y - 0 + vsp, grab_lerp_speed);
				} else {
					fspecial_enemy.x = x + spr_dir * -8 + hsp;
					fspecial_enemy.y = y - 80 + vsp;
				}
			break;
			default: //Grab
				fspecial_enemy.x = lerp(fspecial_enemy.x, x + spr_dir * 64 + hsp, grab_lerp_speed);
				fspecial_enemy.y = lerp(fspecial_enemy.y, y - 8 + vsp, grab_lerp_speed);
				with (fspecial_enemy) {
					if place_meeting(x, y, asset_get("par_block")) {
						while(place_meeting(x, y, asset_get("par_block"))) {
							x -= other.spr_dir;
						}
					}
				}
			break;
		}
		fspecial_enemy.hitpause = true;
		fspecial_enemy.hitstop = 3;
		fspecial_enemy.vsp = 0;
		fspecial_enemy.hsp = 0;
		fspecial_enemy.state = PS_HITSTUN;
		fspecial_enemy.can_tech = false;
		fspecial_enemy.can_wall_tech = false;
		fspecial_enemy.fall_through = true;
	} else {
		fspecial_enemy = -4;
	}
}

if ((attack != AT_FSPECIAL) && fspecial_proj != -4) {
	if (instance_exists(fspecial_proj)) {
		/*
		switch(attack) {
			case AT_FTHROW: //Forward Throw
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed ,get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
			case AT_NTHROW: //Back Throw
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
			case AT_DTHROW: //Down Throw
				fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
				fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			break;
		}
		*/
		fspecial_proj.spr_dir = spr_dir;
		switch(attack) {
			case AT_FTHROW: //Forward Throw
				fspecial_proj.x = x + spr_dir * 64 + hsp;
				fspecial_proj.y = y - 48 + vsp;
			break;
			case AT_NTHROW: //Back Throw
				fspecial_proj.x = lerp(fspecial_proj.x, x + spr_dir * -64 + hsp, grab_lerp_speed);
				fspecial_proj.y = lerp(fspecial_proj.y, y - 88 + vsp, grab_lerp_speed);
			break;
			case AT_DTHROW: //Down Throw
				if (window == 1 && window_timer <= 11) {
					fspecial_proj.x = lerp(fspecial_proj.x, x + spr_dir * -24 + hsp, grab_lerp_speed);
					fspecial_proj.y = lerp(fspecial_proj.y, y - 120 + vsp, grab_lerp_speed);
				} else {
					fspecial_proj.x = x + spr_dir * 48 + hsp;
					fspecial_proj.y = y - 48 + vsp;
				}
			break;
			case AT_UTHROW: //Forward Throw
				if (window == 1 && window_timer <= 5) {
					fspecial_proj.x = lerp(fspecial_proj.x, x + spr_dir * 32 + hsp, grab_lerp_speed);
					fspecial_proj.y = lerp(fspecial_proj.y, y - 40 + vsp, grab_lerp_speed);
				} else {
					fspecial_proj.x = x + spr_dir * -8 + hsp;
					fspecial_proj.y = y - 80 + vsp;
				}
			break;
			case AT_UTILT: //Forward Throw
				fspecial_proj.x = lerp(fspecial_proj.x, x + hsp, grab_lerp_speed);
				fspecial_proj.y = lerp(fspecial_proj.y, y - 80 + vsp, grab_lerp_speed);
			break;
			default: //Grab
				fspecial_proj.x = lerp(fspecial_proj.x, x + spr_dir * 64 + hsp, grab_lerp_speed);
				fspecial_proj.y = lerp(fspecial_proj.y, y - 48 + vsp, grab_lerp_speed);
				with (fspecial_proj) {
					if place_meeting(x, y, asset_get("par_block")) {
						while(place_meeting(x, y, asset_get("par_block"))) {
							x -= other.spr_dir;
						}
					}
				}
			break;
		}
		if ((attack == AT_FTHROW || attack = AT_UTHROW || attack == AT_DTHROW || attack == AT_NTHROW) && window == 2) || (attack == AT_UTILT && window == 6) {
			sound_play(asset_get("sfx_shovel_swing_light1"))
			fspecial_proj.hsp = lengthdir_x(spr_dir * proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			fspecial_proj.vsp = lengthdir_y(proj_throw_speed , get_hitbox_value( attack, 1, HG_ANGLE ));
			fspecial_proj.hitbox_timer = 0;
			if ("chad_dumb" in fspecial_proj) { //Dumbell catch
				fspecial_proj.grounds = 2;
				fspecial_proj.grav = 0;
				fspecial_proj.active = true;
				for (i = 0; i < 20; i++) {
					fspecial_proj.can_hit[i] = 1;
				}
				with fspecial_proj { //Bounce Check
					spawn_hit_fx( x, y, 301);
					if ((place_meeting(x, y + vsp, asset_get("par_block")) || place_meeting(x, y + vsp, asset_get("par_jumpthrough"))) && active && vsp > 0) {
						grounds = 0;
						hsp = 0;
						vsp = -4;
						grav = unactive_grav;
						hitbox_timer = 0;
						active = false;
						sound_play(asset_get("sfx_tow_anchor_land"));
						spawn_hit_fx(x, y, 301);
						for (i = 0; i < 20; i++) {
							can_hit[i] = 0;
						}
					}
				}
			}
			fspecial_proj = -4 
		}
	}
}

if !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	grabbed_player = -4;
	fspecial_enemy = -4;
	fspecial_proj = -4;
}

if (state == PS_WALL_JUMP || !free || state_cat == SC_HITSTUN) {
	move_cooldown[AT_NSPECIAL] = 0;
}
