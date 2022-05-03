//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DTILT){
	if (window == 2 || window == 3) && !hitpause {
		if window_timer == 1 || window_timer mod 3 == 0 {
			spawn_base_dust(x+10*spr_dir, y, "dash");
		}
	}
	if has_hit && !hitpause && !was_parried {
		destroy_hitboxes();
		attack_end();
		set_attack(AT_EXTRA_2);
		vsp = -9;
		hsp = -1*spr_dir;
	}
}

if (attack == AT_FSTRONG){
	if (window == 2 && window_timer == 5) && !hitpause {
		sound_play(asset_get("sfx_zetter_downb"), false, noone, .7, 1.1);
		spawn_base_dust(x+34*spr_dir, y, "land");
	}
}

if (attack == AT_USTRONG){
	if (window == 2 && window_timer == 3) && !hitpause {
		spawn_base_dust(x, y, "jump");
		sound_play(sound_get("sfx_jump2"));
	}
	
	if (window == 3 && window_timer == 1) && !hitpause {
		sound_play(sound_get("sfx_sword_thrust2"), false, noone, 1, 1.1);
	}
	
	if (window == 8 && window_timer == 9 && has_hit) || (window == 8 && window_timer == 14 && !has_hit) {
		spawn_base_dust(x, y, "land");		
		sound_play(asset_get("sfx_land"));
		sound_play(sound_get("sfx_land"));
	}
}

if (attack == AT_DAIR){
	if (window == 1) && !hitpause {
	vsp = clamp(vsp, -4, 1);
	}
	
	if (window == 2 || window == 3) && !hitpause {
		can_wall_jump = true;
		hsp = 6*spr_dir;
		vsp = 13;
		
		if window == 3 {
			if window_timer > 17{
				can_jump = true;
				can_shield = true;
			}
			
			if window_timer == 30{
				window_timer = 25;
			}
		}
		
		if !free {
			destroy_hitboxes();
			window = 4;
			window_timer = 0;
			spawn_base_dust(x+10*spr_dir, y, "land");
		}
	}
}

if (attack == AT_NSPECIAL){
    if (window == 2){
        if window_timer == 5 {
			sound_play(sound_get("sfx_cutter_spin4"));
			move_cooldown[AT_NSPECIAL] = 96;
		}
	}
}

if (attack == AT_NSPECIAL_2) && !was_parried {
    can_attack = true;
	can_jump = true;
	can_shield = true;
	can_move = true;
}

if !(get_player_color( player ) == 0) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial_projbig"));
}

if (attack == AT_FSPECIAL){
    can_fast_fall = false;
	can_move = false;
	
	if window > 5 && has_hit && !hitpause && !was_parried {
		can_jump = true;
	}
	
	if window == 2 || window == 3 {
		hsp = clamp(hsp, -2, 2);
	}
    if (5 > window){
		vsp = clamp(vsp, -100, 1);
    }
    if (window == 5 || window == 6) && !hitpause{
		if window_timer mod 4 == 0 {
			spawn_base_dust(x+10*spr_dir, y, "dash");
		}
		
		if window_timer mod 8 == 0 {
			sound_play(sound_get("sfx_step"));
		}	
		
		vsp = clamp(vsp, -82, 4);
		if (spr_dir == 1 && (place_meeting(x + 12, y, asset_get("par_block"))) || spr_dir == -1 && (place_meeting(x - 12, y, asset_get("par_block"))) ) {
			destroy_hitboxes();
			attack_end();
			set_attack(AT_EXTRA_1);
			hsp = -7*spr_dir;
			vsp = -2;
			move_cooldown[AT_FSPECIAL] = 60;
			spawn_hit_fx(x+26*spr_dir, y-6, 301);
			sound_play(asset_get("sfx_blow_weak1"));
		}
    }
	if (window == 4){	
		if window_timer == 2 {
			spawn_base_dust(x+10*spr_dir, y, "dash_start");
		}
	}
	
    if (window == 5){		
		if spr_dir == 1 && 12 > hsp {
			hsp++;
		}
		if spr_dir == -1 && hsp > -12 {
			hsp--;
		}
    }
	
    if (window == 8){		
		move_cooldown[AT_FSPECIAL] = 70;
    }
}

if (attack == AT_USPECIAL) {
	can_fast_fall = false;
	
	if window > 2 {
		can_wall_jump = true;
	}
	hsp = clamp(hsp, -4, 4);
	
	if window == 2 {
		if window_timer == 5 {
		spawn_base_dust(x, y, "jump");
		}
	}
		
	if !hitpause {
		if window == 3 || window == 4 || window == 5 {
			vsp+= .5;
			vsp = clamp(vsp, -200, 0);
		}
		
		if window == 5 && window_timer == 6 && shield_down {
			attack_end();
			set_state(PS_PRATFALL);
		}
		if window == 6 {
			vsp = clamp(vsp, -200, 0);
		}
		if window == 7 {
			if 18 > vsp {
			vsp += 2;
			}
			if window_timer == 12 {
				window_timer = 3;
			}
			if !free {
				destroy_hitboxes();
				window = 8;
				window_timer = 0;
				spawn_base_dust(x+10*spr_dir, y, "land");
			}
		}	
		if window == 8 {
			if window_timer == 6 {
				window = 9;
				window_timer = 0;
				move_cooldown[AT_USPECIAL] = 50;
			}
		}
	}
}

if (attack == AT_JAB){
	if window >= 7 {
		if has_hit && special_pressed {
			hsp = 2*spr_dir;
			set_attack(AT_USPECIAL);
		}
	}
}

if (attack == AT_DSPECIAL){
	can_wall_jump = true;
    can_fast_fall = false;
	hsp = clamp(hsp, -6, 6);
	
	if 3 > window {
	hsp = clamp(hsp, -2, 2);	
	}
	
	if window == 2 && window_timer == 2 {
		spawn_base_dust(x, y, "land");
	}
	
	if (window == 3 || window == 4 || window == 5 || window == 6) && !hitpause {
		if risestopstupid {
			vsp = clamp(vsp, -200, 83);	
		} else {
			vsp = clamp(vsp, -200, 2);			
		}
		if window_timer mod 5 == 0 {
			attack_end();
			create_hitbox(AT_DSPECIAL, 1, x, y-22);
		}
		if right_down {
		hsp += .3;
		}
		if left_down {
		hsp -= .3;
		}
		if special_down && risestopstupid == 0 {
		vsp = clamp(vsp, -200, -1.5);
		}

	}
	
	if 7 > window {
		vsp = clamp(vsp, -100, 3);
	}
	if window == 8 {
		risestopstupid = 1;
		move_cooldown[AT_DSPECIAL] = 50;
	}
}




#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


