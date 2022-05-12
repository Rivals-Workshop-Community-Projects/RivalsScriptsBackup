//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//FSpecial (Command Grab Stuff)

//attack_update.gml
if (attack == AT_FSPECIAL) {
    can_wall_jump = true;
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    if(free){
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
    }else{
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
    	
    }
    }
}

if (attack == AT_FSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	garnet_stored_gravity = grabbed_player_obj.hitstun_grav;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

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
		if (window == 1) {
			grabbed_player_obj.x = x+(spr_dir*64);
			grabbed_player_obj.y = y;
		}
		
		if (window == 2) {
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x+(spr_dir*40);
			grabbed_player_obj.y = ease_circOut(y, y-64, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

//End Command Grab Stuff




if(attack == AT_DTILT){
	if (window == 2)
	{
	   if (window_timer % 3 == 0 && !hitpause && window_timer > 2) {
	    {
		    if(collision_point(x + (20 * spr_dir) + (window_timer * 10) * spr_dir, y + 15, asset_get("par_block"),false,true) != noone || collision_point(x + (20 * spr_dir) + (window_timer * 10)* spr_dir, y + 15, asset_get("par_jumpthrough"),false,true) != noone){

          	    sound_play(asset_get("sfx_kragg_rock_land"));
                create_hitbox(AT_DTILT, 2, x + (window_timer * 10) * spr_dir  , y - 40)
			

        	}
        }
	}
}
}

if(attack == AT_FTILT) {
	if(window == 2){
	if window_timer % 3 == 0 && !hitpause {
	
			sound_play(asset_get("sfx_swipe_medium1"));
			create_hitbox(AT_FTILT , 1 ,  x - ((0 + random_func(0, 40, true)) * spr_dir) , y - 60 + random_func(2, 40, true) );
			

	}
	if(has_hit){
		set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
	}else{
		set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
	}
	}
}
if (attack == AT_USPECIAL){
    can_fast_fall = false;
    can_wall_jump = true;
    if(window == 1){
        if(window_timer == 1){
            set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
        }
        if(window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)){
            if(special_down){
                window = 2;
                window_timer = 0;
            }else{
                window = 5;
                window_timer = 0;
                set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
                
            }
        }
    }
    if(window == 3){
        can_move = false;
    }
    if(window == 4){
        if(window_timer == get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH)){
            window = 8;
            window_timer = 0;
            
        }
    }
    if(window == 6){
        can_move = true;
    }
    
}

if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 10;
	if (window == 1){
		if(window_timer == 1){
			gem_breaker_power = 0;
			Left_right_tap = 0;
		}
	}
    if (window == 2){
		if window_timer % 5 == 0 && !hitpause {
			spawn_base_dust(x-(0*spr_dir), y, "land", 0);
		}
    	can_move = true;
    	soft_armor = 2 + (window_timer/3);
    	gem_breaker_power++;
	}else{
		can_move = false;
	}
    if(window == 3){
    	outline_color = [0, 0, 0 ];
    	sound_stop(sound_get("sfx_abyss_explosion_start"))
    	if (window_timer == 1){
    		if(gem_breaker_power = 30){
    			//True Gem Breaker
		   		sound_play(asset_get("sfx_ori_grenade_launch"))
		 		spawn_hit_fx(x - 20 * spr_dir, y - 40, 254);
    		}
    	}
    	if(Left_right_tap < 1){
    		if(right_down && spr_dir = -1){
    		spr_dir = spr_dir * -1
    		}
    		if(left_down && spr_dir = 1){
    		spr_dir = spr_dir * -1
    		}
    		Left_right_tap++;
    	}
    }
    if(window == 5){
    	soft_armor = 0;
    	if(window_timer = get_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH) - 1 && was_parried){
        	state = PS_IDLE;
       }
    }
    
    can_fast_fall = false;
}


if(attack = AT_TAUNT_2){
	if(window_timer == 1){
		set_num_hitboxes(AT_TAUNT_2,2);
	}
	if(has_hit_player){
	can_jump = true;
	}
	if(window_timer = get_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH)){
		if(taunt_down){
			window_timer = 2;
			set_num_hitboxes(AT_TAUNT_2,0);
		}
	}
}








//SupersonicNK's Base Game Dust function

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