//set state

///#args state

if (prev_state == PS_PARRY) && (parry_doors_closed){
	parry_doors_closed = false;
	var parry_door = spawn_hit_fx(x, y, parry_dooropen);
	parry_door.depth = depth;
	if (!parry_dooropen_sfx){
		sound_play(sound_get("parry_dooropen"));
	}
}

if (prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && (attack == AT_USPECIAL){
	spr_angle = 0;
	sprite_change_offset("uspecial", 64, 79, true);
	draw_y = 0;
}


if (state_cat != PS_HITSTUN){
	i_exploded = false;
}

if (state == PS_AIR_DODGE && has_scrap && joy_pad_idle){
	is_zdropping = true;
	var zscrap = create_hitbox(AT_DSPECIAL_2, 1 + current_scrap.size, x, y - 30);
	zscrap.hsp = 0;
	zscrap.vsp = 0;
	zscrap.init = false;
	clear_button_buffer( PC_SHIELD_PRESSED );
	clear_button_buffer( PC_JUMP_PRESSED );
	state = PS_IDLE_AIR;
	state_timer = 0;
	hsp = zdrop_hsp;
	vsp = zdrop_vsp;
	sound_play(asset_get("sfx_bubblepop"), false, noone, 0.6, 0.8);
	if (current_scrap.index == 30){
		sound_play(sound_get("scrap_diy_cork"), false, noone, 0.8, 1);
		var cork = spawn_hit_fx(x + 26*spr_dir, y - 48, flashbang_cork);
    	cork.spr_dir = spr_dir;
    	cork.hsp = 1*cork.spr_dir;;
    	cork.vsp = -2;
    	cork.grav = 0.5;
    	cork.depth = depth-1;
	}
	sound_stop(asset_get("sfx_quick_dodge"));
}