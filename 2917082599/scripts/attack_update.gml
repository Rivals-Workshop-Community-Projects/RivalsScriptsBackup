//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
switch(attack)
{
    case AT_DATTACK:
    /*
    if has_hit && !hitpause{
        if special_down {
            if up_down {
                attack = AT_USPECIAL
                window = 1
                window_timer = 8
            } else {
            attack = AT_FSPECIAL
            window = 1
            window_timer = 8
            }
        }
    }
    */
    break;
	case AT_USPECIAL_2:
	can_fast_fall = false;
	if (window != 1){
    can_wall_jump = true;
	}
	break;
	case AT_DSPECIAL:
	move_cooldown[AT_DSPECIAL] = 30;
    move_cooldown[AT_USPECIAL] = 30;
    move_cooldown[AT_FSPECIAL] = 30;
    if (window == 2 and window_timer == 1){
        spawn_base_dust(x, y, "doublejump");
    }
    if (dashes == 0){
        init_shader();
    }
    can_fast_fall = false;
    can_wall_jump = true;
        //yoshi egg code (VVizard)
    if (window == 1 and window_timer == 10){
        white_flash_timer = 5;
        shake_camera(1, 5);
        dashes = 0;
    }
	if (window == 1){
    	if ( down_down ){//|| up_down and (spr_dir == 1 && left_down) || up_down and (spr_dir == -1 && right_down)
        	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 8);
        	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
        	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("down"));
        	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("down_hurt"));
    	}
    	if (joy_pad_idle || !up_down and !down_down){
    	    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 8);
    	    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
    	    set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("down"));
    	    set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("down_hurt"));
    	}
    	if ((spr_dir == -1 && left_down) || (spr_dir == 1 && right_down)){ //|| down_down and (spr_dir == -1 && left_down) || down_down and (spr_dir == 1 && right_down)
    	    set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 10);
        	set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 8);
        	set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("downforward"));
        	set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("downforward_hurt"));
    	}
	}
    if (window == 3 and window_timer >= 1){
        iasa_script();
    }
    break;
    case AT_USPECIAL:
    move_cooldown[AT_DSPECIAL] = 30;
    move_cooldown[AT_USPECIAL] = 30;
    move_cooldown[AT_FSPECIAL] = 30;
    if (dashes == 0){
        init_shader();
    }
    can_fast_fall = false;
    can_wall_jump = true;
        //yoshi egg code (VVizard)
    if (window == 1 and window_timer == 10){
        white_flash_timer = 5;
        shake_camera(1, 5);
        dashes = 0;
    }
	if (window == 1){
    	if ( up_down ){//|| up_down and (spr_dir == 1 && left_down) || up_down and (spr_dir == -1 && right_down)
        	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -14);
        	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
        	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("dashup"));
        	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("dashup_hurt"));
    	}
    	if (joy_pad_idle || !up_down and !down_down){
    	    set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -14);
    	    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
    	    set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("dashup"));
    	    set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("dashup_hurt"));
    	}
    	if ((spr_dir == -1 && left_down) || (spr_dir == 1 && right_down)){ //|| down_down and (spr_dir == -1 && left_down) || down_down and (spr_dir == 1 && right_down)
    	    set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 10);
        	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12);
        	set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("upforward"));
        	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("upforward_hurt"));
    	}
	}
    if (window == 3 and window_timer >= 2){
        iasa_script();
    }
        if (window == 2 and window_timer == 1){
        spawn_base_dust(x, y, "doublejump");
    }
    break;
    case AT_FSPECIAL:
    move_cooldown[AT_USPECIAL] = 30;
    move_cooldown[AT_DSPECIAL] = 30;
    move_cooldown[AT_FSPECIAL] = 30;
    //can_move = false;
    if (!free){
    	move_cooldown[AT_FSPECIAL] = 10;
    }
    if (dashes == 0){
        init_shader();
    }
    can_fast_fall = false;
	can_wall_jump = true;
        if (window == 1 and window_timer == 10){
        white_flash_timer = 5;
        shake_camera(1, 5);
        dashes = 0;
        
    }
    if (free and window == 3 and window_timer >= 1){
        //iasa_script();
        //can_move = false;
    }
    if (!free and window == 3 and window_timer >= 2){
        //iasa_script();
        //can_move = false;
    }
    if (window == 2 and window_timer == 1){
        spawn_base_dust(x, y, "dash_start");
        
    }
    break;
    case AT_NSPECIAL:
    move_cooldown[AT_NSPECIAL] = 40;
    can_fast_fall = false;
    //crystal code
    if (window == 2 and window_timer == 11 and !hitpause and !hitpause){
    	sound_play(asset_get("sfx_ice_nspecial_armor"),false,noone,2,2);
    }
    if (window == 1){
    	if (window_timer == 1){
    	++crystalair;
    	}
		if(instance_exists(crystal)){ instance_destroy(crystal);}
	}
    if(window == 2 and !hitstop and !hitpause){
			if (window_timer == 11){
				crystal = instance_create(x, y, "obj_article1");
				crystal.spr_dir = spr_dir;
		}
    }
    break;
    case AT_JAB:
    if (window == 4 and window_timer == 7){
    	sound_play(asset_get("sfx_rag_plant_shoot"),false,noone,0.7,1);
    }
    break;
    case AT_DSPECIAL_2:
    if (window == 1 and window_timer == 7){
    	sound_play(asset_get("sfx_rag_plant_shoot"),false,noone,0.7,1);
    }
    move_cooldown[AT_DSPECIAL_2] = 30
    if (window == 1 && dspecialboost == 1){
    	dspecialboost = 2;
    }
    if (window == 3){
    	dspecialboost = 1;
    }
    break;
    case AT_FSPECIAL_2:
		move_cooldown[AT_FSPECIAL_2] = 20
		if(window == 1) reset_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS);
		if (window >= 4 && instance_exists(grabbed_player_obj)) 
		{
			
			//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
			if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
			else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

			else 
			{
				grabbed_player_obj.spr_dir = -spr_dir;
				grabbed_player_obj.hitstop = 2;
				grabbed_player_obj.hitpause = true;
				
				if (window_timer <= 1) {
					grabbed_player_relative_x = grabbed_player_obj.x - x;
					grabbed_player_relative_y = grabbed_player_obj.y - y;
				}
				
				//on the first window, pull the opponent into the grab.
				if (window == 4) { 
					var pull_to_x = 40 * spr_dir;
					var pull_to_y = 0;
					
					var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
					grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
					grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					force_depth = true;
					depth = grabbed_player_obj.depth+1;
				}
				if (window == 5 && window_timer == 1) { 
					grabbed_player_obj = noone; 
					grabbed_player_relative_x = 0;
					grabbed_player_relative_y = 0;
				}
			}
		}
	break;
}

#define spawn_base_dust
/// @param x
/// @param y
/// @param name
/// @param dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
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
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);

if !instance_exists(newdust) return;

newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;
