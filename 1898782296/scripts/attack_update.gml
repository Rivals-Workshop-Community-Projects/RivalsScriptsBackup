//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    
    can_move = false;
	can_fast_fall = false;
	if(window = 1 and window_timer = 5){
		if(autobomb == noone and autobomb_cooldown == false){
			var new_autobomb = instance_create(x, y - 2, "obj_article2")
			new_autobomb.player_id = id;
			new_autobomb.player = player;
			new_autobomb.image_xscale = spr_dir*0.1;
			new_autobomb.sprite_direction_modifier = spr_dir;
			new_autobomb.hsp = hsp/2;
			new_autobomb.vsp = vsp/2;
			if(retro_alt == true){
				new_autobomb.idle_sprite = sprite_get("autobomb_idle_alt")
			    new_autobomb.idleb_sprite = sprite_get("autobomb_idleb_alt")
			    new_autobomb.destroy_sprite = sprite_get("autobomb_destroyed_alt")
			    new_autobomb.sprite_index = sprite_get("autobomb_idle_alt");
			}
			autobomb = new_autobomb;
			autobomb_cooldown = true;
		}
	}
	if(window == 1){
		hsp *= 0.85
		vsp = 0
	}
	
	if(window == 2 and window_timer > 10){
		if(special_pressed or attack_pressed or down_stick_pressed or up_stick_pressed or left_stick_pressed or right_stick_pressed or 
		(on_autobomb == false and jump_pressed) or (on_autobomb == false and shield_pressed)
		or ((autobomb!= noone and !position_meeting(x, y+8+vsp, autobomb) and autobomb.carpet_lock != noone))){
			window = 3;
			window_timer = 0;
			voice_cooldown = 40
            sound_play(voice_attack[1])
		}
		if((!free and ((autobomb!= noone and autobomb.free == false and on_autobomb == true)) )or 
			(position_meeting(x,y+2,asset_get("par_block")))
			or (autobomb!= noone and !position_meeting(x, y+8+vsp, autobomb) and position_meeting(x, y+2, asset_get("par_jumpthrough")))
			or (autobomb!= noone and position_meeting(x, y+8+vsp, autobomb) and autobomb.carpet_lock != noone)){
			can_shield = true;
			can_jump = true;
		}
	}
}

if (attack == AT_FSPECIAL){
	//move_cooldown[AT_FSPECIAL] = 9999;
	can_fast_fall = false;
	if (window == 1 and window_timer >= (get_window_value(attack, window, AG_WINDOW_LENGTH))/2 and carpet != noone){
		var random_voice = random_func( 0, 3, true);
	    if (random_voice < 3 and voice_cooldown == 0){
	    	voice_cooldown = 20;
	       	sound_play(voice_hurt[random_voice+1]);
	    } 
	    //set_state(PS_PRATFALL)
	}
    if (window == 1 and window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH))) {
        if (carpet == noone) {
			var magic_carpet = instance_create(x +2*spr_dir, y+1,"obj_article_platform")
           	magic_carpet.player_id = id;
			magic_carpet.player = player;
			magic_carpet.spr_dir = spr_dir;
			magic_carpet.chsp = 15*spr_dir;
			magic_carpet.state = 1;
			magic_carpet.carpet_boost_hitbox = create_hitbox(AT_FSPECIAL, 1, x, y)
			sound_play(sound_get("sm64_flight_woosh"));
			spawn_base_dust(x,y,"dash_start",spr_dir)
			carpet = magic_carpet
        }
   }
   if(window == 2){
   	can_wall_jump = true;
   	if(window_timer >= (get_window_value(attack, window, AG_WINDOW_LENGTH))-2){
	   	if(special_down or free){
	   		window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)-5
	   	}
	   } else {
	   		if(position_meeting(x+20*spr_dir,y-2,asset_get("par_block")) and !free){
	   			var kunkbox = create_hitbox( AT_DSPECIAL, 3, x, y);
	    		kunkbox.can_hit_self = true;
	   		}
	   }
   }
}

if(attack == AT_USPECIAL){
	move_cooldown[AT_JAB] = 2;
	move_cooldown[AT_UTILT] = 2;
	move_cooldown[AT_FTILT] = 2;
	move_cooldown[AT_DTILT] = 2;
	move_cooldown[AT_USPECIAL] = 30;
	can_fast_fall = false;
	if(window == 2){
		can_wall_jump = true;
		vsp += 0.5
		if(has_hit or !free){
			window = 3;
			window_timer = 0;
			djumps = 0;
			vsp = 0;
			hsp = 0;
			if(!free){
				spawn_base_dust(x + 6*spr_dir,y,"jump",spr_dir)
			}
		}
		if((spr_dir == 1 and hsp < 0) or (spr_dir == -1 and hsp > 0)){
			hsp += 1*spr_dir;
		}
	}
	if(window ==3){
		if(window_timer == 1){
			sound_play(sound_get("uspec_bounce"), false, noone, 0.75);
		}
		hsp = 0;
		vsp = 0;
		destroy_hitboxes();
		if((!special_down or was_parried) and 
		((has_hit and window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH)))
		or (!has_hit and window_timer >= (get_window_value(attack, window, AG_WINDOW_LENGTH))*1.49))){
			if(!was_parried){
			set_state(PS_IDLE_AIR)
			} else {
				set_state(PS_PRATFALL)
			}
			superjump = true;
			hsp += 4*spr_dir;
			vsp -= 14;
			spawn_hit_fx(x + 6*spr_dir, y, pogo_fx);
			sound_play(sound_get("uspec_hit"));
		}
	}
	if(window == 4){
		vsp += 0.25;
		if(has_hit == true){
			if(window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH))){
				window = 2;
				window_timer = 0;
				has_hit = false;
			}
		} else {
			if(window_timer >= (get_window_value(attack, window, AG_WINDOW_LENGTH))*1.49){
				window = 2;
				window_timer = 0;
				has_hit = false;
			}
		}
	}
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
    move_cooldown[AT_DSPECIAL] = 10;
    move_cooldown[AT_DSPECIAL_AIR] = 99999;
    if((window == 1 and position_meeting(x,y-60,asset_get("par_block"))) or
    	(window > 1 and (position_meeting(x-20,y-20,asset_get("par_block")) or
    	position_meeting(x+20,y-20,asset_get("par_block"))))){
    	var kunkbox = create_hitbox( AT_DSPECIAL, 3, x, y);
    	kunkbox.can_hit_self = true;
    }
    switch(window){
    	case 1:
    		if(window_timer == 1){
    			var stilts = instance_create(x, y-10,"obj_article_solid")
    			stilts.player_id = id;
    			stilts.player = player;
    			stilts.image_xscale = spr_dir*2;
    			stilts.state = 0;
    		}
    	break;
    	case 2:
    	case 4:
    		if(attack_down or special_down or shield_down == true){
    			//set_state(PS_JUMPSQUAT)
    			jump_pressed = true;
    			clear_button_buffer(PC_ATTACK_PRESSED)
    			clear_button_buffer(PC_SPECIAL_PRESSED)
    			clear_button_buffer(PC_SHIELD_PRESSED)
    		}
    		can_jump = true;
    		if(left_down){
    			window = 3;
    			window_timer = 0;
    		}
    		if(right_down){
    			window = 3;
    			window_timer = 0;
    		}
    	break;
    	case 3:
    		//Do anything during step?
    		can_jump = true;
    		if(attack_down or special_down or shield_down == true){
    			//set_state(PS_JUMPSQUAT)
    			jump_pressed = true;
    			clear_button_buffer(PC_ATTACK_PRESSED)
    			clear_button_buffer(PC_SPECIAL_PRESSED)
    			clear_button_buffer(PC_SHIELD_PRESSED)
    		}
    	break;
    }
}

if (attack == AT_DSPECIAL_AIR){
	move_cooldown[AT_DSPECIAL_AIR] = 9999;
}

//Pyro Guy super
if(attack == AT_EXTRA_1){
	soft_armor = 999;
	if(window < 4 and !hitpause){
		if (!joy_pad_idle){
	        hsp += lengthdir_x(0.5, joy_dir);
	        vsp += lengthdir_y(0.5, joy_dir);
	    }
	    if(vsp<=-5){
			vsp-=-0.2
		} else if (vsp >= 2){
			vsp -= 0.2;
		}
		if(abs(hsp) > 12){
			hsp*=0.85;
		}
		if(!free){
			hsp += 0.5*spr_dir
		}
		if((spr_dir == 1 and hsp < 3) or (spr_dir == -1 and hsp > -3)){
			hsp += 3*spr_dir;
		}
		if(window_timer%3 == 0){
			var trail_y = random_func(4, 24, true);
			var trail_effect = spawn_hit_fx(x + 20*spr_dir, y + trail_y - 18, trail_fx);
			trail_effect.depth = depth + 1;
			trail_effect.spr_dir = spr_dir;
		}
	} else if(window > 3) {
		hsp *= 0.7
		vsp *= 0.7
	}
	if(window == 1 and window_timer == 1 and !hitpause){
		hsp = 12*spr_dir;
		vsp = -13
	}
	if(window == 4 and window_timer == 8){
		spawn_hit_fx(x, y, phanto_fx);
		voice_cooldown = 40
        sound_play(voice_fly[1])
	}
	//grabbing code
	if (has_hit_player == false){
		grabbed_id = noone;
	}
	if (instance_exists(grabbed_id) && window != 4){
		grabbed_id.x = x;
		grabbed_id.y = y + grabbed_id.char_height / 2;
		grabbed_id.hsp = 0;
		grabbed_id.vsp = 0;
		grabbed_id.old_hsp = 0;
		grabbed_id.old_vsp = -4;
		grabbed_id.hitpause = true;
		grabbed_id.hitstop ++
	}
	can_fast_fall = false;
}


if (attack == AT_JAB) {
    if (right_down-left_down == -spr_dir && !has_hit && !has_hit_player) {
        var win_time = get_window_value(attack,window,AG_WINDOW_LENGTH);
        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, win_time);
        if get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == win_time {
            //immediately flip if attack is pressed. this makes behavior better for dtilt or utilt.
            if attack_pressed spr_dir *= -1 
            set_state(PS_IDLE);
            // if you get ftilt frame-perfectly on parry you can carry the parry lag over
            // that doesn't happen in base cast so this fixes that
            was_parried = false; 
        }
    } else {
        reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
    }
}

/*if(attack == AT_NAIR){
	if(window == 2){
		if(state_timer % 2 = 0 and !hitpause){
			flower_spawn();
		}
	}
}*/

if(attack == AT_UAIR){
	if(vsp<=-4.6 and window <4 ){
		vsp-=-0.5
	} else if (vsp >= 3 and window < 4){
		vsp -= 0.5;
	}
}

if(attack == AT_FTILT){
	if(window == 1 and window_timer == 4){
		spawn_base_dust(x,y,"dash_start",spr_dir)
	}
	if(has_hit){
		if(window == 2 and !hitpause){
			vsp = -8;
			hsp = -2*spr_dir;
		}
		if(window == 3){
			can_attack = true;
			can_special = true;
		}
	}
}


if(attack == AT_DTILT){
	if(window == 1 and window_timer == 20){
		spawn_hit_fx(x+14*spr_dir, y+34, carpet_effect);
	}
}

/*//Testing something for another character
if(attack == AT_DATTACK && !hitpause && has_hit){
    hsp = 0;
    can_attack = true;
}*/

if(attack==AT_FSTRONG){
	if(window == 1){
		reset_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START)
		reset_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START)
	}
	if(window == 2){
		if (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH))/2){
			//print("halfway window 2")
			if(!special_down and !(left_down and spr_dir == 1) and !(right_down and spr_dir == -1)){
				window = 3
				window_timer = 0;
				hsp = 5 * spr_dir
				sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 1, 1.25);
				spawn_base_dust(x + 40*spr_dir,y,"dash",-spr_dir)
			}
		}
		if (window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH))){
			//print("all the way window 2")
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 1, 0.95)
			spr_dir = -spr_dir
			set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8)
			set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9)
			spawn_base_dust(x + 40*spr_dir,y,"dash",-spr_dir)
		}
	}
}

if(attack==AT_USTRONG){
	can_fast_fall = false;
	if(window == 1){
		if (window_timer <= 3){//Stole from VViz lol
			if (free) window = (get_attack_value(attack, AG_NUM_WINDOWS))+1;
		}
		if((!(strong_down or attack_down or up_stick_down) and state_timer >= (get_window_value(attack, window, AG_WINDOW_LENGTH))) or state_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) + 60){
			spawn_base_dust(x,y,"jump",spr_dir)
		}
		if(window_timer == 1){
			heart = create_hitbox(AT_USTRONG, 3, x, y - 5)
			heart.depth = depth+1
			heart.vsp = -4
			heart.grav = 0.075
			heart.draw_xscale = 1.75*spr_dir;
			heart.draw_yscale = 1.75
			heart.uses_shader = false;
		}
	}
	else if(window<5 and window>2 and !hitpause){
		if(char_height < nspecial_height){
			char_height+=3;
		}
	}
	else{
		if(char_height > standard_height){
			char_height-=2;
		}
		if(window == 5 and window_timer == 5){
			char_height = standard_height;
		}
	}
	if(window >= 3 and window <= 5){
		can_move = false;
		soft_armor = 18;
		if (hsp != 0){
			hsp = lerp(hsp, 0, 0.25)
		}
		if (vsp != 0){
			vsp = lerp(hsp, 0, 0.1)
		}
	}
	if(window == 5){
		soft_armor = 0;
	}

}

if(attack == AT_DSTRONG){
	if(window == 2 and window_timer == (get_window_value(attack, window, AG_WINDOW_LENGTH)-2)){
		spawn_base_dust(x + 80*spr_dir, y, "dash_start", -spr_dir)
	}
	if(window == 3 and window_timer %4 == 0){
		spawn_base_dust((x + (100*spr_dir) - (window_timer*10*spr_dir)), y, "dash", -spr_dir)
	}
}

if(attack==AT_TAUNT){
	can_wall_jump = true;
	if(window < 4){
		can_move = false;
	}
	if(window == 4 and window_timer == 7){
		respawn_taunt = false;
	}
}


#define spawn_base_dust
/// @param x
/// @param y
/// @param name
/// @param dir=0
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

/*#define flower_spawn
flower = spawn_hit_fx(x + 10*spr_dir, y - 30, flowers_fx);
flower.depth = depth-1
flower.hsp = hsp * 0.7 + state_timer/5*spr_dir;
flower.vsp = vsp - state_timer/5
flower.grav = 0.2
//flower.air_friction = 0.2
flower.image_angle = random_func(4, 360, true )
*/