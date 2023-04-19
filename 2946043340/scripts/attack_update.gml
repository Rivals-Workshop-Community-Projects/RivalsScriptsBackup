//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
	 case AT_JAB:
		if (window == 2 && window_timer == 2) && !hitpause{
		    	sound_play(asset_get("sfx_swipe_medium2"));
		}
	break;
	case AT_FTILT:
		if (window == 2 && window_timer == 1){
		    	spawn_base_dust(x +20*spr_dir,y,"dash_start",1* spr_dir)
		}
	break;
	case AT_DTILT:
		if (window == 2 && window_timer == 1) and !hitpause{
		    	spawn_base_dust(x +20*spr_dir,y,"dash_start",1* spr_dir)
		}
	break;
	case AT_FSTRONG:
		if (window == 2 && window_timer == 3) and !hitpause{
		    	spawn_base_dust(x +20*spr_dir,y,"dash_start",1* spr_dir)
		    	sound_play(asset_get("sfx_hod_fspecial"),false,noone,0.8);
		    	sound_play(asset_get("sfx_birdclap"),false,noone,1.0,0.7);
		    	
		}
	break;
	case AT_USTRONG:
	if clamp(window, 2, 4) == window
    {
        if window == 4 and window_timer > 16 break;
        hud_offset = floor(lerp(hud_offset, 160, .1));
    }
		if (window == 2 && window_timer == 3) and !hitpause{
		    	spawn_base_dust(x +10*spr_dir,y,"dash_start",1* spr_dir)
		    	spawn_base_dust(x -10*spr_dir,y,"dash_start",-1* spr_dir)
		    	sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.8);
		    	
		}
	break;
	case AT_UTILT:
		can_fast_fall = false;
		if (window == 1 and window_timer == 7){ 
		sound_play(asset_get("sfx_swipe_weak1"));
		}	
		if (window == 2 and window_timer == 1 and !hitpause){
		spawn_base_dust(x,y + 10,"jump",1)
		}
		if (window == 2 and window_timer == 4 and !hitpause){ 
		sound_play(asset_get("sfx_swipe_medium2"))
		}		
	break;
	case AT_FAIR:
		if (window == 1 && window_timer == 9) && !hitpause{
		    	sound_play(asset_get("sfx_bird_downspecial"),false,noone,0.5);
		}
		//if(window == 2 && window_timer == 3){
		//spawn_hit_fx(x*spr_dir, y - 10, vfx_fair)
		//}
		
	break;
    case AT_NSPECIAL:
	can_fast_fall = false;
		if (free && window == 2){
			vsp = -1;
		}
		if (window == 1 && window_timer == 8){ //Remember to change this if NSpecial is changed
			if (instance_exists(point)){
				spawn_hit_fx(point.x, point.y, point_die_vfx)
				instance_destroy(point);
				
			}
			point = instance_create(x+70*spr_dir, y-30, "obj_article1");
		}
		
    break;

    case AT_FSPECIAL:
    move_cooldown[AT_FSPECIAL] = 45;
    fspecial_spr_dir = spr_dir;
    can_fast_fall = false;
    if (window == 1 && window_timer == 6) and special_down{
    	attack_end(); //call this when you cancel an attack, it resets hitboxes!
		set_attack(AT_FSPECIAL_2);{
			window_timer = 4;
		}
		
    }
    if (window == 1 && window_timer == 12) and !hitpause{
		    	spawn_base_dust(x +20*spr_dir,y,"dash_start",1* spr_dir);
		    	sound_play(asset_get("sfx_hod_fspecial"),false,noone,1.0,1.2);
		}
	if (window == 1 && window_timer == 13){	//Needs to change this if FSpecial startup is changed
		bead_proj = create_hitbox(AT_FSPECIAL, 1, x+32*spr_dir, y-40);
	}
    break;
	case AT_FSPECIAL_2:
	can_fast_fall = false;
	if (window == 1 && window_timer == 5){
		sound_play(asset_get("sfx_ori_bash_hit"));
	}
    if (window == 2 && window_timer == 1) and !hitpause{
				spawn_base_dust(x +20*spr_dir,y,"dash_start",1* spr_dir);
		    	sound_play(asset_get("sfx_bird_downspecial"),false,noone,1.0,1.2);
		}
	break;
	
    case AT_USPECIAL:
    can_fast_fall = false;
    can_wall_jump = true;
    //All of this is preety much taken and adapted from Tornado Kirby (I coded that myself too so it's fine lol)
	if (window == 1){
		uspecial_enhanced = 1;
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 9);
	}
	if (window == 2 || window == 3 || window == 6 || window == 7 || window == 8){
		if (shield_pressed){
			sound_stop(asset_get("sfx_bird_nspecial"));
			sound_play(asset_get("sfx_bird_sidespecial"));
			if (uspecial_enhanced > 1){
				window = 10;
				window_timer = 0;
			}
			else {
				window = 5;
				window_timer = 0;
			}
		}
		//If touches the Point while using USpecial
		if (instance_exists(point) && point.state == 1 && point.state_timer < 420 && place_meeting(x, y, point) && window == 2){
			point.state_timer = 425;
			window = 6;
			window_timer = 1;
			state_timer = 1;
			uspecial_enhanced = 1.3;
			spawn_hit_fx(point.x, point.y, hfx_wind_huge);
			sound_play(asset_get("sfx_hod_nspecial"));
		}
		if (special_down){
			vsp -= 1*uspecial_enhanced;
			if (vsp <= -5*uspecial_enhanced){
				vsp = -5*uspecial_enhanced;
			}
		}
		if (!special_down){
			vsp -= 0.5*uspecial_enhanced;
			if (vsp <= -3*uspecial_enhanced){
				vsp = -3*uspecial_enhanced;
			}
		}
		if (right_down && hsp <= 4){
			hsp += 0.1*uspecial_enhanced;
		}
		if (left_down && hsp >= -4){
			hsp -= 0.1*uspecial_enhanced;
		}
		if (state_timer < 16){
			vsp = -4*uspecial_enhanced;
		}
		if (!free){
			vsp = -0.5*uspecial_enhanced;
		}
	}
	if ((window == 3 || window == 8) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		sound_stop(asset_get("sfx_bird_nspecial"));
		sound_play(asset_get("sfx_bird_sidespecial"));
		vsp = -5.2;
	}
	if (window == 4 || window == 9){
		vsp = clamp(vsp, -99, 2);
	}
	if (state_timer > 40){
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
	}
    break;

    case AT_DSPECIAL:
    can_wall_jump = true;
    if (window == 1){
        dspecial_hit = false;
        dspecial_turned = false;
        set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 9);
    }
    if (window == 2 && window_timer == 5){
        spawn_hit_fx(x+43*spr_dir, y-10, dspecial_vfx);
        dspecial_hitbox = create_hitbox(AT_DSPECIAL, 1, x+43*spr_dir, y-10);
    }
    if (window == 4 && window_timer == 1){
        sound_play(asset_get("sfx_forsburn_reappear"), 0, noone, .8, 1.5)

    }
    //If DSpecial has hit someone
    if (dspecial_hit){
    	if (window == 4){
	    	if ((spr_dir == 1 && left_down || spr_dir == -1 && right_down)){
	    		x -= 64*spr_dir;
	    	}
	    	else {
	    		if (dspecial_turned == false){
	    			spr_dir *= -1;
	    			dspecial_turned = true;
	    		}
	    	}
    	}
    	if (window == 6 || window == 8){
    		move_cooldown[AT_DSPECIAL] = 30;
	    	can_jump = true;
			can_attack = true;
	    }
    	if (special_down){
    		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 7);
    	}
    	else {
    		set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 5);
    	}
    }
    can_fast_fall = false;
    can_move = false
    break;
    
    case AT_EXTRA_1:	//This is the Airdash "attack"
    if (window == 1){
    	invincible = false;
    	has_airdodge = false;
    	x = lerp(x, point.x, 0.3);
		y = lerp(y, point.y+30, 0.3);
		
		if (right_down)spr_dir = 1;
		if (left_down)spr_dir = -1;
		
		//Dash Up
		if (up_down && !right_down && !left_down && !down_down){
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED_TYPE, 2);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED, 0);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED, -15);
			airdash_rot = 90;
		}
		//Diagonally Up
		if (up_down && (right_down || left_down) && !down_down){
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED_TYPE, 1);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED, 8);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED, -8);
			airdash_rot = 45;
		}
		//Horizontally
		if (((right_down || left_down) && !up_down && !down_down) || (joy_pad_idle)){
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED_TYPE, 2);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED_TYPE, 1);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED, 10);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED, 0);
			airdash_rot = 0;
		}
		//Diagonally Down
		if (down_down && (right_down || left_down) && !up_down){
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED_TYPE, 1);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED, 8);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED, 8);
			airdash_rot = 315;
		}
		//Dash Down
		if (down_down && !right_down && !left_down && !up_down){
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED_TYPE, 2);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED, 0);
			set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED, 10);
			airdash_rot = 270;
		}
    }
    if (window == 3 && !free){
    	state = PS_WAVELAND;
    }
    can_jump = true;
    can_attack = true;
    can_fast_fall = false;
    break;
    case AT_TAUNT:
    	if (window == 1 and window_timer == 1){ 
		sound_play(asset_get("sfx_bird_sidespecial"),false,noone,1.0,1.2);
		}	
		if window == 3 && window_timer > 19 {
			if taunt_down{
                window = 3;
                window_timer = 0;
			}
            else {
            	window = 4;
                window_timer = 0;
            }
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