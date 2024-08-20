//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
	case AT_TAUNT:
		if (state_timer == 1) taunt_num = random_func(1, 6, true);
		if (window == 3 && window_timer == 6){
		    	sound_play(sound_get("qoedil_test"),false,noone,1.0,1.3);
		}
		if (window == 3 && window_timer == 12){
		    	sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1.0,0.8);
		}
		if (window == 5 && window_timer == 6){
		    	sound_play(asset_get("sfx_syl_dspecial_plantaway"));
		}
	break;
	case AT_DATTACK:
	if (window == 1 && window_timer == 1){
		sound_play(sound_get("qoedil_test"),false,noone,0.8,1.3);
	}
	if (window == 2 && window_timer == 6) and !hitpause{
		    	spawn_base_dust(x +10*spr_dir,y,"dash_start",1* spr_dir)
		    	spawn_base_dust(x +40*spr_dir,y,"dash_start",-1* spr_dir)
	}
	break;
	 case AT_FTILT:
	 	if (window == 1 && window_timer == 6) && !hitpause{
		    	sound_play(asset_get("sfx_swish_medium"));
		}
		if (window == 2 && window_timer == 2) && !hitpause{
		    	sound_play(asset_get("sfx_swipe_heavy1"));
		}
	break;
	case AT_UTILT:
	 	if (window == 1 && window_timer == 6) && !hitpause{
		    	sound_play(asset_get("sfx_ice_dspecial_ground"),false,noone,0.8);
		    	sound_play(asset_get("sfx_bite"));
		}
	break;
		case AT_DTILT:
	 	if (window == 1 && window_timer == 1) && !hitpause{
		    	sound_play(sound_get("qoedil_ruuugh"),false,noone,0.4,1.2);
		}
	break;
	case AT_FSTRONG:
	 	if (window == 1 && window_timer == 1) && !hitpause{
		    	sound_play(asset_get("sfx_swish_medium"),false,noone,0.6);
		}
		if (window == 3 && window_timer == 1) && !hitpause{
		    	sound_play(sound_get("qoedil_ruuugh"),false,noone,0.6,1.0);
		}
	break;
	case AT_USTRONG:
	 	if (window == 1 && window_timer == 1) && !hitpause{
			sound_play(asset_get("sfx_syl_fspecial_bite"),false,noone,1.0,0.9);
		}
	break;
	case AT_FAIR:
	 	if (window == 1 && window_timer == 1) && !hitpause{
		    	sound_play(asset_get("sfx_syl_fspecial_bite"),false,noone,1.0, 1.05);
		}
		if (window == 2 && window_timer == 1) && !hitpause{
		    	sound_play(asset_get("sfx_swish_medium"));
		}
	break;
	case AT_BAIR:
		if (window == 1 && window_timer == 1){
				move_cooldown[AT_BAIR] = 40;
		}
		if (window == 1 && window_timer == 10){
		    	sound_play(asset_get("sfx_bird_upspecial"),false,noone,1.0, 0.8);
		}
	 	if (window == 2 && window_timer == 4) && !hitpause{
		    	spawn_hit_fx( x, y, bair_vfx );
		}
	break;
	case AT_DAIR:
	 	if (window == 1 && window_timer == 9) && !hitpause{
		    	sound_play(sound_get("qoedil_grunt"),false,noone,0.7, 1.0);
		}
	break;

    case AT_NSPECIAL:
    	can_move = false;
    	can_fast_fall = false;
    	hsp = lerp(hsp, 0, .05)
    	move_cooldown[AT_NSPECIAL] = 80;
    	if ((window == 2) && (window_timer == 3)) {
    		// Delete old hitbox if necessary
    		with (asset_get("pHitBox")) {
    			// Identify the ones that belong to us
    			if ((attack == AT_NSPECIAL)
    				&& (hbox_num == 1)
    				&& (orig_player_id == other))
    			{
    				destroyed = true;
    			}
    		}
    	}
    break;

    case AT_FSPECIAL:
    	can_wall_jump = 1;
	    if (free && (window == 3 || window == 4)){ 
        vsp -= vsp*1;
    }
    
    if (window == 2 && window_timer == 1 && !hitpause){ //Invincible on startup
    	spawn_base_dust(x -10*spr_dir,y,"dash_start",-1* spr_dir)
        move_cooldown[AT_FSPECIAL] = 60;
        invincible = 1;
        invince_time = 10;
    }
    if (window == 3 && window_timer == 8){
    	sound_play(sound_get("qoedil_swoosh"),false,noone,0.7);
    }
        if (window == 4 && !hitpause){
        	if (window_timer == 1){ 
    			spawn_base_dust(x +10*spr_dir,y,"dash_start",1* spr_dir)
        	}
        	if (window_timer == 3){ 
    			spawn_base_dust(x +10*spr_dir,y,"dash",1* spr_dir)
        	}
        	if (window_timer == 5){ 
    			spawn_base_dust(x +10*spr_dir,y,"dash",1* spr_dir)
        	}
    }
    //if (window < 4){ //Cannot walljump until they start moving forward
        //can_wall_jump = 0;
    //} else {
        //can_wall_jump = 1;
    //}
    if (window < 6){ //Cannot fastfall until end of the move
        can_fast_fall = 0;
    } else {
        can_fast_fall = 1;
    }
    if (window == 5 && free && !has_hit){
        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 7);
    }
    if (window == 5 && !free || has_hit){
        set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
    }
    break;

    case AT_USPECIAL:
    	can_move = false;
        can_wall_jump = true;
        if (window == 1 && window_timer == 4) && !hitpause{
		    	sound_play(sound_get("qoedil_test"),false,noone,1.0,1.2);
		}
        if (window == 2 && free && !has_hit){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
    	}
    	if (window == 2 && !free || has_hit){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
    	}
    	if (window == 2 && has_hit && !special_down){
    		destroy_hitboxes();
    		window = 3;
    		window_timer = 0;
    	}
    break;
	case AT_DSPECIAL:
	//Funny Feint Code
		if (window == 1){
			spider_trigger = 0;
			if(window_timer == 2){
		    	spawn_base_dust(x +1 *spr_dir,y,"dash_start",1* spr_dir)
			}
			if(window_timer == 8){
		    	spawn_base_dust(x +1 *spr_dir,y,"dash",1* spr_dir)
			}
		}
		if (window == 2){
			if(window_timer == 6){
		    	spawn_base_dust(x -4 *spr_dir,y,"dash",1* -spr_dir)
			}
			if(window_timer == 12){
		    	spawn_base_dust(x -4 *spr_dir,y,"dash",1* -spr_dir)
			}
			if(window_timer == 18){
		    	spawn_base_dust(x -4 *spr_dir,y,"dash",1* -spr_dir)
			}
			if(window_timer == 24){
		    	spawn_base_dust(x -4 *spr_dir,y,"dash",1* -spr_dir)
			}
		}
		if window == 3 && spider_trigger == 1{
    		super_armor = true;
    	}
		if (window == 3 && window_timer == 8) && !hitpause{
		    	//spawn_hit_fx( x, y, dspecial_vfx );
		    	if spider_trigger == 1{
		    		attack_end(); //call this when you cancel an attack, it resets hitboxes!
					set_attack(AT_DTHROW);
					hurtboxID.sprite_index = sprite_get("dthrow_hurt");
					window_timer = 0;
		    	}
		}
	//Feint code end
		if (window == 5 && window_timer == 1) && !hitpause{
		    	move_cooldown[AT_DSPECIAL] = 60;
		}
			if (window > 1 || window < 5){
			draw_indicator = false
		}
		else{
			draw_indicator = true
		}
	break;
    case AT_DSPECIAL_AIR:
    //Funny Feint Code
    	if window == 4 && has_hit{
    		super_armor = true;
    	}
		if (window == 4 && window_timer == 8) && !hitpause{
		    	spawn_hit_fx( x, y, dspecial_air_vfx );
		    	if has_hit{
		    		attack_end(); //call this when you cancel an attack, it resets hitboxes!
					set_attack(AT_DTHROW);
					hurtboxID.sprite_index = sprite_get("dthrow_hurt");
					window_timer = 0;
		    	}
		}
	//Feint code end
		if window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) {
			if special_down{
				spr_dir *= -1;	
			}
		}
		if (window == 6 && window_timer == 1) && !hitpause{
		    	move_cooldown[AT_DSPECIAL_AIR] = 60;
		}
			if (window > 1 || window < 5){
			draw_indicator = false
		}
		else{
			draw_indicator = true
		}
    break;
    case AT_DTHROW:
    	if (window == 1) {
    	super_armor = true;
    		if (window_timer == 5 && !hitpause){
    			sound_play(sound_get("qoedil_grunt"),false,noone,0.6, 0.8);
    		}
    	}
    	if (window == 3) {
    	super_armor = false;
    	}
    	if (has_hit && (window == 4 || window == 6) && !was_parried) can_jump = true;
    	if (window == 4 && window_timer == 8) && !hitpause{
		    	spawn_hit_fx( x, y, dthrow_vfx );
    	}
    	if (window == 5 && window_timer == 3) && !hitpause{
		    	move_cooldown[AT_DSPECIAL] = 60;
		    	move_cooldown[AT_DSPECIAL_AIR] = 60;
		}
    break;
    
}

#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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