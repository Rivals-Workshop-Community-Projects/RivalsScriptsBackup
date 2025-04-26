//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

//NSpecial - Kong Bazooka Grapple
if (attack == AT_NSPECIAL){
	if (window == 1){
		hit_player_obj = noone;
		//Manual B-Reverse
		if (window_timer < 5 && ((spr_dir == 1 && left_pressed) || (spr_dir == -1 && right_pressed))) spr_dir *= -1; 
		nspecial_turn = false;
		nspecial_proj = false;
	}
	//If grabbed opponent
	if (nspecial_grab == true && window <= 6){
		//Allows you to turn around after the grab
		if (window <= 4 && window_timer == 8 && nspecial_turn = false){
			if ((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
		       spr_dir *= -1; 
		       hit_player_obj.x += 100*spr_dir;
		       nspecial_turn = true;
		    }
		}
		soft_armor = 99;
		can_fast_fall = false;
		can_move = false;
        hit_player_obj.hitstop = 1;
        if (hit_player_obj.hitstop == 1) hit_player_obj.grabbed_invisible = true;
    }
    //If grabbed a projectile
    if (window == 2 && nspecial_proj == true){
    	window = 5;
    	window_timer = 0;
    	soft_armor = 20;
    }
    //Flaming Coconut Logic
    if (window == 5 && nspecial_proj == true && window_timer == get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)){
    	nspecial_proj_hitbox = create_hitbox(AT_NSPECIAL, 4, x+50*spr_dir, y-60);
    	if (nspecial_hsp < 14*spr_dir || nspecial_hsp > 14*spr_dir) nspecial_proj_hitbox.hsp = 14*spr_dir;
    	else nspecial_proj_hitbox.hsp = nspecial_hsp*spr_dir;
    	if (nspecial_damage < 5) nspecial_proj_hitbox.damage = 7;
    	else nspecial_proj_hitbox.damage = nspecial_damage;
    	if (nspecial_kb_value < 4) nspecial_proj_hitbox.kb_value = 4;
    	else nspecial_proj_hitbox.kb_value = nspecial_kb_value;
    	if (nspecial_kb_scale < 0.5) nspecial_proj_hitbox.kb_scale = 0.5;
    	else nspecial_proj_hitbox.kb_scale = nspecial_kb_scale;
		nspecial_proj_hitbox.hitpause = nspecial_proj_hitbox.kb_value;
		nspecial_proj_hitbox.extra_hitpause = nspecial_proj_hitbox.kb_value;
    }
    
    if window == 5{
    	if window_timer == 8{
    		sound_play(asset_get("sfx_mol_bat_whack"),false,noone,1.0);
    	}
        	if window_timer == 12{
        		sound_play(sound_get("nspecial_shoot"),false,noone,0.7);
        		sound_play(asset_get("sfx_forsburn_combust"),false,noone,.6);
        	}
        	if window_timer == 15 && !free{
        		spawn_base_dust(x-30*spr_dir,y,"dash_start",1* spr_dir)
        		spawn_base_dust(x,y,"land",1* spr_dir)
        	}
        }
}

//FSpecial - Flame Runner Ride
if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 30;
	can_fast_fall = false;
	set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
	if (state_timer == 25) sound_play(sound_get("fspecial_loop"));
	if window == 1 && window_timer == 13{
		wheelie_grab = false;
		spawn_base_dust(x-10*spr_dir,y,"dash_start",1* spr_dir)
	}
	if window == 2 && !free{
		if (window_timer == 2 || window_timer == 8 || window_timer == 14){
			spawn_base_dust(x-10*spr_dir,y,"dash",1* spr_dir)
		}
	}
	if (window <= 3 && state_timer >= 20){
		if (special_down or attack_down or strong_down){
			if (joy_pad_idle || left_down || right_down) window = 4;
			if (down_down) window = 7;
			if (up_down) window = 10;
			window_timer = 0;
			destroy_hitboxes();
		}
		//Trick unique inputs
		if(jump_down){
			window = 10;
			window_timer = 0;
			destroy_hitboxes();
		}
		//Drift unique inputs
		if((left_down && spr_dir == 1) or (right_down && spr_dir == -1) or was_parried){
			window = 4;
			window_timer = 0;
			destroy_hitboxes()
		}
		//Wheelie unique inputs
		if(strong_down and !up_down){
			window = 7;
			window_timer = 0;
			destroy_hitboxes();
		}
		if !free && (window_timer == 2 || window_timer == 8){
			spawn_base_dust(x-10*spr_dir,y,"dash",1* spr_dir)
		}
	}
	if (window > 3) sound_stop(sound_get("fspecial_loop"));
	if ((window == 2 || window == 3) && free){
		window = 10;
		window_timer = 0;
	}
	if (wheelie_grab == true){
		if (window == 7){
			hit_player_obj.x = lerp(hit_player_obj.x, x+50*spr_dir, 0.8);
	    	hit_player_obj.y = lerp(hit_player_obj.y, y-30, 0.8);
		}
		if (window == 8){
			hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.8);
		}

	}
	if window == 4 && window_timer == 3 && !free{
		spawn_base_dust(x+60*spr_dir,y,"dash_start",-1* spr_dir)
		spawn_base_dust(x-10*spr_dir,y,"dash",1* spr_dir)
		
	}
	if window == 7{
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
		if window_timer == 3{
			spawn_base_dust(x-10*spr_dir,y,"dash",1* spr_dir)
		}
		if window_timer == 8{
			spawn_base_dust(x-10*spr_dir,y,"dash_start",1* spr_dir)
			sound_play(asset_get("sfx_bird_sidespecial_start"),false,noone,1.0,1.1);
		}
	}
	if window == 8{
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
		if window_timer == 1 || window_timer == 7{
			spawn_base_dust(x-10*spr_dir,y,"dash_start",1* spr_dir)
		}
		if window_timer == 11{
			spawn_base_dust(x,y,"dash_start",1* spr_dir)
			spawn_base_dust(x+60*spr_dir,y,"dash_start",-1* spr_dir)
			spawn_base_dust(x +40*spr_dir,y,"land",1* spr_dir)
			
		}
	}
	if (window == 6 || window == 9){
		set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
	}
	if window == 10 && window_timer == 4{
		sound_play(asset_get("sfx_swish_medium"),false,noone,1.0);
		if !free{
			spawn_base_dust(x,y,"jump",1* spr_dir)
			
		}else{
			spawn_base_dust(x,y,"djump",1* spr_dir)
		}
	}
}

//FSpecial Air - Flame Runner Trick
if (attack == AT_FSPECIAL_AIR){
	can_wall_jump = true;
	can_fast_fall = false;
	move_cooldown[AT_FSPECIAL_AIR] = 999;
	if (window == 1){
		reset_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE);
		vsp = clamp(vsp, ((vsp > -short_hop_speed) ? -5 : -100), 3);
        hsp *= 0.9;
	}
	if (window == 2 && has_hit) set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
}

//DSpecial - Flourishing Crest
if (attack == AT_DSPECIAL){
	can_wall_jump = true;
	can_fast_fall = false;
	move_cooldown[AT_DSPECIAL] = 999;
	if window == 2 && window_timer == 1 && !hitpause{
		sound_play(asset_get("sfx_swish_heavy2"),false,noone,.8);
		if !free{
			spawn_base_dust(x+30*spr_dir,y,"dash_start",-1* spr_dir)
			spawn_base_dust(x-30*spr_dir,y,"dash_start",1* spr_dir)
			spawn_base_dust(x,y,"jump",1* spr_dir)
		}else{
			spawn_base_dust(x,y,"djump",1* spr_dir)
		}
	}
}

//USpecial - Rocket Barrel Blast
if (attack == AT_USPECIAL){
	can_wall_jump = true;
	can_fast_fall = false;
	if (window == 1){ 
		//Transitions straight to the rise if you don't hold special
		if (window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH) && !special_down){
			window = 3;
			window_timer = 0;
		}
		//Resets variables
		if(state_timer == 8 && special_down) sound_play(sound_get("uspecial_bongo_left"),false,noone,0.8,1.0);
	}
	if (window == 2){
		//Increases Charge Level
		if (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH) && special_down){
			window_timer = 0;
			uspecial_charge++;
			uspecial_length -= 5;
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, uspecial_length);
		}
		//Transitions out of loop
		if (!special_down || uspecial_charge > 2){
			window = 3;
			window_timer = 0;
		}
		//Bongo SFXs (might need to change the state_timer values if we mess with the window values)
		if (state_timer == 8 || state_timer == 28 || state_timer == 43) sound_play(sound_get("uspecial_bongo_left"),false,noone,0.8,1.0);
		if (state_timer == 18 || state_timer == 36 || state_timer == 48) sound_play(sound_get("uspecial_bongo_right"),false,noone,0.8,1.0);
	}
	//The differences for each level of charge
	if (window == 3){
		if (uspecial_charge > 0) set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 0);
		if (uspecial_charge == 1){
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -15);
			set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
		}
		if (uspecial_charge == 2){
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -17);
			set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
		}
		if (uspecial_charge == 3){
			set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -20);
			set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 9);
		}
		if window_timer == 8{
			sound_play(sound_get("uspecial_bongo_left"),false,noone,0.8,0.95);
			sound_play(sound_get("uspecial_bongo_right"),false,noone,0.8,0.95);
			if !free{
				spawn_base_dust(x+30*spr_dir,y,"dash_start",-1* spr_dir)
				spawn_base_dust(x-30*spr_dir,y,"dash_start",1* spr_dir)
				spawn_base_dust(x,y,"jump",1* spr_dir)
			}else{
				spawn_base_dust(x,y,"djump",1* spr_dir)
			}
		}
	}
	if (window == 2 || window == 3){
		if (shield_pressed){
			if (uspecial_charge == 3){
				sound_stop(asset_get("sfx_ell_fist_fire"));
				spawn_hit_fx( x +30*spr_dir, y-50, 305 );
				sound_play(asset_get("sfx_frog_fspecial_cancel"));
			}
			window = 5;
			window_timer = 0;
		}
	}
	if (window == 6){
		if (window_timer == get_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH)-1) set_state(PS_PRATFALL);
		uspecial_charge = 0;
		uspecial_length = 20;
		reset_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED);
		reset_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME);
		reset_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME);
		reset_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME);
	}
}


if (attack == AT_FTILT){
	if(window == 4 and window_timer >= get_window_value( AT_FTILT, 4, AG_WINDOW_CANCEL_FRAME )){
		if(left_stick_pressed or right_stick_pressed){
			window++;
			window_timer = 0;
		}
	}
}
if (attack == AT_DTILT){
	if window == 1 && window_timer == 5{
	spawn_base_dust(x-10*spr_dir,y,"dash",1* spr_dir)
	}
}
if (attack == AT_DATTACK){
	can_fast_fall = false;
	if window == 1 && window_timer == 1 && !hitpause{
				var vfx = spawn_hit_fx( x +20*spr_dir, y, vfx_dattack );
        		vfx.depth -= 20;
        		spawn_base_dust(x-10*spr_dir,y,"dash_start",1* spr_dir)
	}
	if window == 1 && window_timer == 6 && !hitpause{
		sound_play(asset_get("sfx_ori_stomp_spin"),false,noone,1.0,0.8);
		if !free{
			spawn_base_dust(x-10*spr_dir,y,"dash",1* spr_dir)
		}
	}
	if window == 2 && !free && !hitpause{
		if window_timer == 3{
			spawn_base_dust(x-10*spr_dir,y,"dash",1* spr_dir)
		}
		if window_timer == 8{
			spawn_base_dust(x-10*spr_dir,y,"dash",1* spr_dir)
		}
	}
	if free && window == 3 && !was_parried{
	can_jump = true;
	}
}
if (attack == AT_FSTRONG){
	if window == 2 && window_timer == 10{
		spawn_base_dust(x+70*spr_dir,y,"dash_start",-1* spr_dir)
		spawn_base_dust(x-10*spr_dir,y,"dash_start",1* spr_dir)
	}
}
if (attack == AT_USTRONG){
	if window == 2 && window_timer == 3{
		spawn_base_dust(x+40*spr_dir,y,"dash_start",-1* spr_dir)
	}
	if window == 3 && window_timer == 5 && !hitpause{
		spawn_base_dust(x-30*spr_dir,y,"dash_start",1* spr_dir)
		sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1.0);
	}
}
if (attack == AT_DSTRONG){
	if  window == 2 && window_timer == 3 {
		sound_play(sound_get("uspecial_bongo_left"),false,noone,0.4,0.95);
		spawn_base_dust(x+40*spr_dir,y,"dash_start",-1* spr_dir)
	}
	if window == 3{
		if window_timer == 2 && !hitpause{
			sound_play(sound_get("uspecial_bongo_right"),false,noone,0.4,0.95);
			spawn_base_dust(x-10*spr_dir,y,"dash_start",1* spr_dir)
		}
		if window_timer == 17 && !hitpause{
			sound_play(sound_get("uspecial_bongo_left"),false,noone,0.4,0.95);
			spawn_base_dust(x+40*spr_dir,y,"dash_start",-1* spr_dir)
		}
	}
	if window == 4 && window_timer == 2 && !hitpause{
		sound_play(sound_get("uspecial_bongo_right"),false,noone,0.4,0.95);
		spawn_base_dust(x-10*spr_dir,y,"dash_start",1* spr_dir)
	}
}

if (attack == AT_NAIR){
	if window == 2 && window_timer == 6 && !hitpause{
		sound_play(asset_get("sfx_hod_fspecial_spirit"),false,noone,1.0);
	}
}

if (attack == AT_FAIR){
	//Reset Variable
	if (window == 1){
		fair_charge = 0;
		reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
		reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
	}
	if (((window == 2 && window_timer == 5 && state_timer > 12) 
	|| (window == 1 && window_timer == 1)) && !hitpause){
		sound_play(asset_get("sfx_spin"),false,noone,1.0,1.1+fair_charge/20);
		sound_play(asset_get("sfx_ori_stomp_spin"),false,noone,0.9,0.9+fair_charge/20);
	}
	
	//Punch Charge Logic
	if (window == 2){
		if (state_timer > 9 && window_timer == 6 && fair_charge < 10) fair_charge++;
		if (state_timer > 9 && !attack_down && !strong_down && !left_stick_down && !right_stick_down){
			window = 3;
			window_timer = 0;
		}
	}
	//Increases FAir1 Damage and Base Knockback
	if (window == 3){
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10+fair_charge);
		set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6+fair_charge/5);
	}
}

if (attack == AT_UAIR){
	if window == 1 && window_timer == 9 && !hitpause{
		sound_play(asset_get("sfx_swipe_medium1"),false,noone,1.0);
	}
}
if (attack == AT_DAIR){
	if window == 1 && window_timer == 12 && !hitpause{
		sound_play(asset_get("sfx_swish_heavy"),false,noone,.8);
		sound_play(asset_get("sfx_mol_flash_bounce1"),false,noone,.6, 1.2);
	}
}
if (attack == AT_TAUNT){
	if window == 3 && window_timer == 6 && !hitpause{
		sound_play(asset_get("sfx_ori_stomp_spin"),false,noone,.8,1.1);
	}
	if window == 5 && window_timer == 9 && !hitpause{
		sound_play(asset_get("sfx_swipe_medium2"),false,noone,.8,1.2);
	}
	if window == 8 && !hitpause{
		if window_timer == 2{
			sound_play(asset_get("sfx_swipe_medium2"),false,noone,.8,1.5);
		}
		if window_timer == 12{
			sound_play(asset_get("sfx_swipe_medium1"),false,noone,.8,1.7);
		}
		if window_timer == 21{
			sound_play(asset_get("sfx_spin_longer"),false,noone,.8,1.2);
		}
	}
	if window == 11 && window_timer == 9 && !hitpause{
		sound_play(asset_get("sfx_swipe_medium2"),false,noone,.4,1.7);
	}
	if window == 6 && window_timer == 24{
		if taunt_down{
                window = 8;
                window_timer = 0;
			}
            else {
            	window = 7;
                window_timer = 0;
            }
	}
}

#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
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