//update
if get_gameplay_time() == 1 set_attack(AT_TAUNT_2);

attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);

if "cam_frozen" in self && cam_frozen {
    set_view_position(cam_pos[0],cam_pos[1]);
}

// State checker
switch (state) {
	case PS_DASH:
		set_attack(AT_EXTRA_2);
		break;
}

if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
	used_uspec = false;
} 

if (used_uspec) {
	move_cooldown[AT_USPECIAL] = 2;
}

if (!attacking) {
	scanlines = false;
	v_scanlines = false;
	u_scanlines = false;
}

if (cam_freeze_timer > 0) {
	if ((cam_freeze_timer < cam_freeze_time - cam_break_time) && cam_frozen) {
		cam_frozen = false;
	} 
	/*if (cam_frozen) {
		if (cam_freeze_timer < cam_freeze_time - cam_break_time) {
			cam_pos = [(view_get_xview()+view_get_wview()/2 + cam_pos[0])/2,(view_get_yview()+view_get_hview()/2 + cam_pos[1])/2];
		}
		if (cam_freeze_timer < cam_freeze_time) cam_frozen = false;
	}*/
	if (cam_freeze_timer == 1) {
		sound_play(sound_get("snap1"));
	}
	cam_freeze_timer--;
}

with (oPlayer) if (self != other) {
	if ("tamat_is_coming" in self) {
		if (!other.tamats_are_coming) {
			other.tamats_are_coming = true;
		}
		if (ds_list_size(edge_statics) > 0) {
			for (i = 0; i < ds_list_size(edge_statics); i++) {
				if (ds_list_find_value(edge_statics, i).cd == edge_static_timer) {
					ds_list_set(other.edge_statics, i, ds_list_find_value(edge_statics, i));
	                ds_list_set(other.edge_static_labels, i, ds_list_find_value(edge_static_labels, i));
				} else if (ds_list_find_value(edge_statics, i).cd == static_death) {
					ds_list_find_value(other.edge_statics, i).cd = static_death;
				}
			}
		}
	}
}

if dtilt_end && (state != PS_ATTACK_GROUND || attack != AT_DTILT || window == 1) {
    x += spr_dir_prev*dtilt_offset[0];
    y -= dtilt_offset[1];
    set_state(PS_IDLE_AIR);
    dtilt_end = false;
}

if (state != 5 && state != 6) || (attack != AT_NAIR) sound_stop(asset_get("sfx_ell_propeller_loop_light"));

if spr_dir_prev != spr_dir spr_dir_prev = spr_dir;

if state == PS_CROUCH ground_friction = ground_friction_crouch;
else ground_friction = ground_friction_init;

if (state == PS_DASH || state == PS_DASH_TURN || (attacking && attack == AT_EXTRA_2)) {
    if state_timer == 1 sound_play(sound_get("crackling"),true);
} else sound_stop(sound_get("crackling"));

if state == PS_PARRY {
	if state_timer == 1 char_height = dspec_char_height; 
	if state_timer == 24 char_height = char_heigh_orig;
}

post_paused = false;
