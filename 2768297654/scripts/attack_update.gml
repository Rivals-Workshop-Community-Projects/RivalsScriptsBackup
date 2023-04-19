//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}
// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	case AT_DTILT:
		if window == 1 && window_timer == get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH)-1{ 
		spawn_base_dust(x + spr_dir * 50 , y, "dash_start", -spr_dir);
		}
		break;
	case AT_DATTACK:
	if window == 1 && window_timer == get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH)-1{ 
		spawn_base_dust(x + spr_dir * -10 , y, "dash_start", spr_dir);
		}		if window == 3 && window_timer == get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH)-1{
		spawn_base_dust(x + spr_dir * 50 , y, "dash_start", -spr_dir);
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH)-1{ 
		spawn_base_dust(x, y, "dash", spr_dir);
		spawn_base_dust(x, y, "dash", -spr_dir);
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == 2{ 
		spawn_base_dust(x + spr_dir * -10, y, "dash_start", spr_dir);
		}
		break;
	case AT_DSTRONG:
		if window == 2 && window_timer == 2{ 
		spawn_base_dust(x + spr_dir * -20, y, "dash_start", spr_dir);
		spawn_base_dust(x + spr_dir * 20, y, "dash_start", -spr_dir);
		}
		break;
	case AT_FTILT:
		if window == 1 && window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH)-1{ 
		spawn_base_dust(x + spr_dir * 80 , y, "dash_start", -spr_dir);
		}
		break;
	case AT_USTRONG:
		if window == 2 && window_timer == 2{ 
		spawn_base_dust(x + spr_dir * 20, y, "dash_start", -spr_dir);
		}
}

if(attack == AT_DATTACK){
	/*
	if(window == 2){
		soft_armor = 8;
	}	if(window == 3 || window == 4){
		soft_armor = 0;
	} */
	if(window == 1 && window_timer = 1){
		sound_play(asset_get("sfx_forsburn_cape_swipe"));
	}
}

if(attack == AT_FSTRONG){
	if(window == 2 && window_timer = 2){ 
		sound_play(asset_get("sfx_forsburn_consume_full"));
	}
}

if(attack == AT_DSTRONG){
	if(window == 2){
		hud_offset = 30;
	}
}

if(attack == AT_BAIR){
	if(window == 1 && window_timer = 1){ 
		sound_play(asset_get("sfx_forsburn_cape_swipe"));
	}
}
if(attack == AT_UAIR){
	if(window == 2){
		hud_offset = 30;
	}
}

if(attack == AT_NSPECIAL){
	trigger_wavebounce();
	if(window == 1 && window_timer = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)-1){ 
		move_cooldown[AT_NSPECIAL] = 120;
	}
}

if(attack == AT_FSPECIAL){
	can_fast_fall = false;
	if(window < 4){
	can_wall_jump = true;
	can_move = false;
	}else if(window > 3){
		hud_offset = 30;
	can_wall_jump = false;
	can_move = true;
	}
	if(window == 1 && window_timer = 1 && !hitpause){
		sound_play(sound_get("sfx_fspecialstart"), false, noone, 2.5);
	}if(window == 1 && window_timer = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)-1){
		sound_play(asset_get("sfx_swipe_medium2"));
	}if(window == 3){
		if(window_timer = get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)-1 && !has_hit_player){ 
		set_state(PS_PRATFALL);
		}
	}if(window == 2){
		if(window_timer % 2 == 0 && !hitpause){
    	var afterimage = spawn_hit_fx(x + spr_dir * -10, y - 45, fspecial_afterfx);
    	afterimage.depth = 1;	
		}if(!free){
		if(window_timer = get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)-1 && !has_hit_player){
		window = 7;
		window_timer = 0;
		}
		}
	}
	//ledge cancel
	if(window == 1 && window_timer = 1){ 
		fspecial_ledge_cancel = 0;
		moved_up = false;
	}if(window == 2 && !free && !has_hit && !was_parried){
		fspecial_ledge_cancel = 1;
	}	else {
		can_move = false;
	}
	
	// MOVE UP AT LEDGE
    if ((window == 2) && !moved_up && free && place_meeting(x+hsp,y,asset_get("par_block"))) {
        for (var i = 0; i < 40; i++){
            if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))) {
                y -= i;
                moved_up = true;
                break;
            }
        }
    }if(window == 7){
    hsp = clamp(hsp,-10,10);	
    }
}

if(attack == AT_USPECIAL){
	hsp = clamp(hsp,-4,4);
	hud_offset = 110;
	can_fast_fall = false;
	can_wall_jump = true;
	if(window == 1 && window_timer = 1){ 
		fly_length = 100;
	}
	if(window > 3 && window != 7){
		fly_length--;
	}if(window == 4 && window_timer = get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)-1){
		if(fly_length > 70){
			window_timer = 0;
		}
	}if(window == 6 && window_timer = get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)-1){
			if(fly_length > 1){
			window_timer = 0;	
			}
	}if(window > 3 && window != 7){
		vsp = clamp(vsp,-2,2);
		if(special_pressed || shield_pressed || down_pressed){
			window = 7;
			window_timer = 0;
		}
	}if(window == 2 && window_timer = 5){
		spawn_hit_fx(x,y - 35, uspec_effect);
	}if(window == 6 && fly_length < 0){
		window = 7;
		window_timer = 0;
	}
	
	if(!free && window > 3){
		create_hitbox(AT_USPECIAL, 2, x, y - 110);
		set_state(PS_LANDING_LAG);
	} if(was_parried){
		create_hitbox(AT_USPECIAL, 2, x, y - 110);
			set_state(PS_PRATFALL);
	}
}

if(attack == AT_DSPECIAL){
	if(window = 1 && window_timer = 1){ 
	if(bomb_state = true){
		set_state(PS_IDLE);
		}
	}
	if(window == 2 && window_timer = 1){ 
		bomb_state = false;
		bomb_missfire = false;
		if(!hitpause){
		sound_play(sound_get("se_younglink_special_N04"));
		}
		vfx = spawn_hit_fx(x + spr_dir * -8,y - 45, spark_effect);
		vfx.depth = 10;
	}if(window == 2 && window_timer = 4){
		bomb_state = true;
		bomb_timer = 240;
	}
}

if(attack == AT_FTHROW){
	if(window == 1 && window_timer = get_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH)-1 && !hitpause){
		sound_play(sound_get("se_item_item_throw"));
		sound_play(asset_get("sfx_swipe_medium2"));
		bomb_missfire = false;
	}if(window == 1 && window_timer = get_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH)-1){
		bomb_timer = 0;
		bomb_state = false;
		move_cooldown[AT_DSPECIAL] = 330;
	}
}if(attack == AT_DTHROW){
	if(window == 1 && window_timer = get_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH)-1 && !hitpause){
		sound_play(sound_get("se_item_item_throw"));
		sound_play(asset_get("sfx_swipe_medium2"));
		bomb_missfire = false;
	}if(window == 1 && window_timer = get_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH)-1){
		bomb_timer = 0;
		bomb_state = false;
		move_cooldown[AT_DSPECIAL] = 330;
	}
}if(attack == AT_UTHROW){
	if(window == 1 && window_timer = get_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH)-1 && !hitpause){
		sound_play(sound_get("se_item_item_throw"));
		sound_play(asset_get("sfx_swipe_medium2"));
		bomb_missfire = false;
	}if(window == 1 && window_timer = get_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH)-1){
		bomb_timer = 0;
		bomb_state = false;
		move_cooldown[AT_DSPECIAL] = 330;
	}
}if(attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	if(window == 1 && window_timer = get_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH)-1){
		bomb_timer = 0;
		bomb_state = false;
		move_cooldown[AT_DSPECIAL] = 330;		
	}
}

if (attack == AT_TAUNT && down_down){
	if(window == 1 && window_timer = 1){
    attack = AT_TAUNT_2;
    window = 1;
    window_timer = 0;
    /*
    if(practice_mode){
if(combo_cooldown > 0){
    if(hud_combo_num = 0){
    combo_cooldown = 15;
    hud_combo_cooldown = 285;
    }
}
    	combo_num = 15;
    	combo_timer = 420;
    }
    */
	}
}
///The better taunt
if (attack == AT_TAUNT_2){
	suppress_stage_music();
  	if (down_pressed || right_pressed || left_pressed || up_pressed){
  	    window_timer = 800;
  	    sound_stop(sound_get("taunt2"));
  	}
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
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

#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}
