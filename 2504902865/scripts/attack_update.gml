//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//jab
if attack == AT_JAB {
    if window == 1 && window_timer == get_window_value(AT_JAB,1,AG_WINDOW_LENGTH)-1 {
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
    if(window == 1 && window_timer == 1){
        last_hit_stun = false;
        set_attack_value(AT_JAB,AG_NUM_WINDOWS,6);
    }
    if(was_parried && window < 4){
        was_parried = false;
        last_hit_stun = true;
    }
    if(window >= 4 && last_hit_stun){
        was_parried = true;
    }
    //special cancel
    if window == 3 && window_timer >= get_window_value(AT_JAB,3,AG_WINDOW_CANCEL_FRAME) {
    	if special_pressed{
    		window = 7;
    		window_timer = 0;
    		set_attack_value(AT_JAB,AG_NUM_WINDOWS,9);
    	}
    }
}

//nair bounce
if attack == AT_NAIR {
    if window == 1 {
        if window_timer == 1 {
            set_attack_value(AT_NAIR,AG_CATEGORY,1)
        }
        if window_timer == get_window_value(AT_NAIR,1,AG_WINDOW_LENGTH){
            set_attack_value(AT_NAIR,AG_CATEGORY,2)
        }
    }
    if window == 2 {
        if !free{
            //later finf out how to reset hitbox properly idk
            
            if attack_down {
                if vsp > 10 {
                    vsp = -10
                } else {
                    vsp = -6
                }
                destroy_hitboxes();
                attack_end();
                spawn_base_dust(x,y,"land")
                var bouncebox = create_hitbox(AT_NAIR,1,x+get_hitbox_value(AT_NAIR,1,HG_HITBOX_X),y+get_hitbox_value(AT_NAIR,1,HG_HITBOX_Y));
                bouncebox.hitbox_timer = window_timer;
            } else {
                set_attack_value(AT_NAIR,AG_CATEGORY,1)
            }
        }
    }
    if window == 3 && window_timer == 1 {
        set_attack_value(AT_NAIR,AG_CATEGORY,1)
    }
}

//dair cooldown
if attack == AT_DAIR {
    if window == 4 {
        move_cooldown[AT_DAIR] = 30;
    }
}

//house setup
if attack == AT_NSPECIAL {
    //spawn house if none close/existing
    if window == 1 && (shield_pressed or shield_down) && window_timer < 6 {
    	window = 7;
    	set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 9);
    }
    if window == 2 && window_timer == 1 && !instance_exists(holding_house_id) && houses_amount_rn < houses_amount_max {
        holding_house_id = instance_create(x,y,"obj_article1");
    }
    if window == 5 && window_timer == 1{
        holding_house_id = pickup_house;
        holding_house_id.state = -1;
        holding_house_id.state_timer = 0;
    }
}

//throws, later uncomment/finish when article coded
if attack == AT_NTHROW {
    if window == 2 && window_timer == 1 {
        //throw code
        house_yeet(7,-7,1);
    }
}
if attack == AT_FTHROW {
    if window == 2 && window_timer == 1 {
        //throw code
        house_yeet(11,-5,2);
    }
}
if attack == AT_UTHROW {
    if window == 2 && window_timer == 1 {
        //throw code
        house_yeet(0,-14,3);
    }
}
if attack == AT_DTHROW {
    if window == 2 && window_timer == 1 {
        //throw code
        house_yeet(0,9,4);
    }
}

//now to code the rest of the specials AAAAAAAAAAAAAAAAAAA
if (attack == AT_FSPECIAL) { //grabble
	
	if instance_exists(grabbed_player_obj) {//player grab
    	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
    	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) {grabbed_player_obj.visible = true; grabbed_player_obj = noone; }
    	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {grabbed_player_obj.visible = true; grabbed_player_obj = noone; }
    
    	else {
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		
    		//if this is the first frame of a window, store the grabbed player's relative position.
    		if (window_timer <= 1) {
    			grabbed_player_relative_x = grabbed_player_obj.x - x;
    			grabbed_player_relative_y = grabbed_player_obj.y - y;
    		}
    		 
    		//on the first window, pull the opponent into the grab.
    		if (window == 4 or window == 5 or window == 6) { 
    			fspecial_prev_window = window;
    		    grabbed_player_obj.visible = false;
    			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
    			var pull_to_x = 55 * spr_dir;
    			var pull_to_y = -10;
    			
    			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
    			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
    		}
    		//the above block can be copied for as many windows as necessary.
    		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
    		
    	}
    	if window == 7 {
    		if fspecial_prev_window != window {
				fspecial_prev_window = window;
				sound_play(asset_get("sfx_blow_medium2"),false,0,0.95,1.25);
				sound_play(asset_get("sfx_kragg_rock_shatter"),false,0,0.65,0.85);
				spawn_base_dust(x,y,"land")
				shake_camera(2,3);
			}
    		//landing grab now grants boost field
    		boosting_minions = true;
			boosting_timer_rn = 0;
			//b
    	    grabbed_player_obj.visible = true;
    	    grabbed_player_obj = noone;
    	}
	}
	if window == 7 && window_timer == get_window_value(AT_FSPECIAL,7,AG_WINDOW_LENGTH) {
		spawn_hit_fx(x+45*spr_dir,y,fx_fspecial_land)//spawn funny post hit effect
	}
	
	//house grab
	if window == 2 && !has_hit_player {
	    with(obj_article1) {
            if player_id == other.id && point_distance(x,y,other.x + 35*other.spr_dir,other.y-15) < 65 {
                if !(state == -1 or state == 2 or state == 5 or state == 6) {
                    other.should_consume = true;
                    other.consume_house = self;
                }
            }
        }
        if should_consume && instance_exists(consume_house) {
            switch(consume_house.house_level) {
                case 1:
                reset_hitbox_value(AT_FSPECIAL,3,HG_DAMAGE);
                reset_hitbox_value(AT_FSPECIAL,3,HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_FSPECIAL,3,HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_FSPECIAL,3,HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_FSPECIAL,3,HG_HITPAUSE_SCALING);
                    break;
                case 2:
                set_hitbox_value(AT_FSPECIAL,3,HG_DAMAGE,8);
                set_hitbox_value(AT_FSPECIAL,3,HG_BASE_KNOCKBACK,7);
                set_hitbox_value(AT_FSPECIAL,3,HG_KNOCKBACK_SCALING,1); 
                set_hitbox_value(AT_FSPECIAL,3,HG_BASE_HITPAUSE,7);
                set_hitbox_value(AT_FSPECIAL,3,HG_HITPAUSE_SCALING,0.95);
                    break;
                case 3:
                set_hitbox_value(AT_FSPECIAL,3,HG_DAMAGE,10);
                set_hitbox_value(AT_FSPECIAL,3,HG_BASE_KNOCKBACK,8);
                set_hitbox_value(AT_FSPECIAL,3,HG_KNOCKBACK_SCALING,1.3);
                set_hitbox_value(AT_FSPECIAL,3,HG_BASE_HITPAUSE,8);
                set_hitbox_value(AT_FSPECIAL,3,HG_HITPAUSE_SCALING,1.3);
                    break;
            }
            consume_house.state = 5;
            consume_house.state_timer = 0;
            window = 9;
            window_timer = 0;
            set_attack_value(AT_FSPECIAL,AG_NUM_WINDOWS,13)
        }
	}
	//house schmove
	if window == 11 or window == 10 {
		can_wall_jump = true;
	}
	if (window == 10 or window == 11) {
		fspecial_prev_window = window;
	    if abs(hsp) < air_max_speed {
	        hsp += right_down ? 0.15 : 0;
	        hsp += left_down ? -0.15 : 0;
	    }
	}
	if window == 12 {
		if fspecial_prev_window != window {
			fspecial_prev_window = window;
			sound_play(asset_get("sfx_blow_medium2"),false,0,1,1.25);
			sound_play(asset_get("sfx_kragg_rock_shatter"),false,0,0.8,0.85);
			spawn_base_dust(x,y,"land")
			shake_camera(2,3);
		}
		if window_timer == get_window_value(AT_FSPECIAL,12,AG_WINDOW_LENGTH) {
			spawn_hit_fx(x+45*spr_dir,y,fx_fspecial_land)//spawn funny post hit effect
		}
	}
}


if attack == AT_USPECIAL { //dolph
    can_fast_fall = false;
    if window >= 2 && window <= 4 { //can walljump during the ride
        can_wall_jump = true;
    }
    if (window == 3 or window == 4) && window_timer > 1 && hsp == 0 && place_meeting(x+2*spr_dir,y-15,asset_get("par_block")) { //wallbounce
        if uspecial_bounces_rn < uspecial_bounces_max {
            window = 5;
            window_timer = 0;
            uspecial_bounces_rn += 1;
            spawn_base_dust(x + 22 * spr_dir,y,"walljump", spr_dir*-1);
        } else {
            window = 9;
            window_timer = 0;
            sound_play(asset_get("sfx_blow_weak1"),false,0,1,0.65)
            spawn_base_dust(x + 22 * spr_dir,y,"walljump", spr_dir*-1);
        }
        hsp = -6 * spr_dir
        vsp = -6;
    }
    if window == 5 or window == 9 {
        destroy_hitboxes();
    }
    if (window == 2 or window == 3 or window == 4) && shield_pressed {
        window = 9;
        window_timer = 0;
    }
    if window == 9 {
        hsp *= 0.8;
        vsp = -5;
    }
    if window == 5 {
    	if window_timer == 1 {
    		sound_play(asset_get("sfx_blow_weak2"),false,0,0.5,0.65);
        	sound_play(asset_get("sfx_icehit_weak2"),false,0,1.45,0.35);
        	if !free {
        		spawn_base_dust(x,y,"land");
        	}
    	}
    }
}

if attack == AT_DSPECIAL {
	if window == 2{
		if window_timer == 1 {
			with(obj_article2){
				if player_id == other.id {
					if (state == 1) or (state == 7) {
						window = 1;
						window_timer = 0;
						window_length = 16;
						attack_window_frame_first = 0;
						attack_window_frame_last = 1;
						state = 9;
						state_timer = 0;
						attack_timer_rn = 0;
						dspec_dir = point_direction(x,y,other.x,other.y);
						spr_dir = 1
					}
				}
			}
		}
		if window_timer == get_window_value(AT_DSPECIAL,2,AG_WINDOW_LENGTH)-1 {
			sound_play(asset_get("sfx_ice_back_air"),false,0,0.65,1.55);
			sound_play(asset_get("sfx_waterwarp"),false,0,0.75,1.75)
			sound_play(asset_get("sfx_waveland_ori"),false,0,1.25,1.55)
			sound_play(asset_get("sfx_frog_dstrong"),false,0,0.45,0.95)
		}
	}
	if window == 3 { //cool up
		move_cooldown[AT_DSPECIAL] = 135;
	}
}



//le taunt
if attack == AT_TAUNT {
	if window == 2 && window_timer == 7 && taunt_down {
		window_timer = 0;
		sound_play(asset_get("sfx_watergun_splash"));
		var randomsound = random_func(6,2,true);
		switch(randomsound){
			case 0:sound_play(asset_get("sfx_blow_medium2"),false,0,0.85,1) break;
			case 1:sound_play(asset_get("sfx_blow_weak1"),false,0,0.85,1) break;
			
		}
	}
}







#define house_yeet(_hsp,_vsp,_thrown_hitbox_type)
var house_thrown = holding_house_id;
house_thrown.spr_dir = spr_dir
house_thrown.thrown_hitbox_type = _thrown_hitbox_type
house_thrown.state = 4;
house_thrown.state_timer = 0;
//with(house_thrown) {
//    set_state(-2);
//}
house_thrown.hsp = _hsp * spr_dir;
house_thrown.vsp = _vsp;
holding_house_id = noone;

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
