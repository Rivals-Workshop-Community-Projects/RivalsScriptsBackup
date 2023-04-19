// update.gml

//#region SL Mode
switch(SL_mode_active){
    case 0: // False
    // Uspec Not PRatfall Code
	reset_window_value(AT_USPECIAL,get_attack_value(AT_USPECIAL,AG_NUM_WINDOWS),AG_WINDOW_TYPE); // Set no pratfall on Uspec
	reset_window_value(AT_FSPECIAL,get_attack_value(AT_FSPECIAL,AG_NUM_WINDOWS),AG_WINDOW_TYPE); // Set no pratfall on Fspec
	reset_window_value(AT_FSPECIAL_AIR,get_attack_value(AT_FSPECIAL_AIR,AG_NUM_WINDOWS),AG_WINDOW_TYPE); // Set no pratfall on Fspec
	
    // Transform HFX
	if(instance_exists(hfx_sl_untransform_obj)){
		var temp_depth = depth;
		var temp_x = x;
		var temp_y = y - 32;
		with(hfx_sl_untransform_obj){
			depth = temp_depth - 1;
			x = temp_x;
			y = temp_y;
		}
	}
	
    // Reset Uspec / Fspecial /  Use on land / wall jump / or hitstun for edge case incase you Uspec as SL and land. Need this to reset.
    if(move_cooldown[AT_USPECIAL] > 0 && (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){ 
    	move_cooldown[AT_USPECIAL] = 0;
    }
    if(move_cooldown[AT_FSPECIAL] > 0 && (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){ 
    	move_cooldown[AT_FSPECIAL] = 0;
    }
    if(move_cooldown[AT_FSPECIAL_AIR] > 0 && (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){ 
    	move_cooldown[AT_FSPECIAL_AIR] = 0;
    }
    
    // Exit Condition
    if(SL_damage_timer > 0){
        Set_SL_Mode(true);
        sl_idle_but_better_flag = false;
    }
    break;
    
    case 1: // True
    // Apply Damage over time
    if(SL_damage_timer % SL_num_of_frames_per_damage == 0 && SL_mode_active = true && !hitpause && !opponent_on_respawn_plat){
        if(SL_activated_by_opponent_number == 0){SL_activated_by_opponent_number = -1}
        take_damage( self.player, SL_activated_by_opponent_number, 1 ); // Take damage and credit opponent with damage
    }
    // Airdash Functionality
    if(!free){has_air_dash = true;}
    has_airdodge = false;
    
    // Air Dash Functionality
    if(has_air_dash == true && shield_pressed && free && state_cat == SC_AIR_NEUTRAL){
        var temp_air_dash_hsp,temp_air_dash_vsp;
        var air_dash_total_speed = 11;
        var verticle_direction_boost = 1.1;
        
    	draw_y = -1 * (122 - 90); // Set draw cause the sprite roation messed with y drawing
        
        // Numpad Direction
    	if(up_down && !right_down && !down_down && !left_down){air_dash_direction = 8;}
    	if(up_down && right_down && !down_down && !left_down){air_dash_direction = 9;}
    	if(!up_down && right_down && !down_down && !left_down){air_dash_direction = 6;}
    	if(!up_down && right_down && down_down && !left_down){air_dash_direction = 3;}
    	if(!up_down && !right_down && down_down && !left_down){air_dash_direction = 2;}
    	if(!up_down && !right_down && down_down && left_down){air_dash_direction = 1;}
    	if(!up_down && !right_down && !down_down && left_down){air_dash_direction = 4;}
    	if(up_down && !right_down && !down_down && left_down){air_dash_direction = 7;}
    	if(!up_down && !right_down && !down_down && !left_down){air_dash_direction = 5;} // Neutral
    	
        // Flip direction if Airdashing behind you
        if(spr_dir == 1){// Facing right
            switch(air_dash_direction){
                case 7:
                case 4:
                case 1:
                    spr_dir = -1;
                break;
            }
        }
        if(spr_dir == -1){// Facing Left
            switch(air_dash_direction){
                case 9:
                case 6:
                case 3:
                    spr_dir = 1;
                break;
            }
        }
    	
        switch(air_dash_direction){
            case 8:
	        	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(90)) * spr_dir;
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(90)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 90;
	        	break;
    		case 9:
	        	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(45)) * spr_dir;
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(45)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 45;
        		break;
    		case 6:
	        	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(0)) * spr_dir;
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(0)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 0;
        		break;
    		case 5:
	        	temp_air_dash_hsp = air_dash_total_speed; // Dont care about sprite direction in this case
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(0)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 0;
        		break;
    		case 3:
	        	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(315)) * spr_dir;
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(315)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 315;
        		break;
    		case 2:
	        	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(270)) * spr_dir;
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(270)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 270;
        		break;
    		case 1:
	        	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(235)) * spr_dir;
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(235)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 235;
        		break;
    		case 4:
	        	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(180)) * spr_dir;
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(180)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 180;
        		break;
    		case 7:
	        	temp_air_dash_hsp = air_dash_total_speed * cos(degtorad(135))* spr_dir;
	        	temp_air_dash_vsp = -1 * air_dash_total_speed * sin(degtorad(135)) * verticle_direction_boost;
	        	temp_air_dash_draw_angle = 135;
        		break;
        }
        set_window_value(AT_EXTRA_3,2,AG_WINDOW_HSPEED,temp_air_dash_hsp);
        set_window_value(AT_EXTRA_3,2,AG_WINDOW_VSPEED,temp_air_dash_vsp);
        set_attack(AT_EXTRA_3);
        has_air_dash = false;
        sl_idle_but_better_flag = true;
        // SL Dash effect spawn handler
        var hfx_sl_dash_obj = spawn_hit_fx(x,y-40,hfx_sl_dash);
        if(spr_dir == 1) {var hfx_sl_dash_draw_angle = temp_air_dash_draw_angle;}
        else if(spr_dir == -1 && air_dash_direction == 7){hfx_sl_dash_draw_angle = 315;} // angle exception screw math
        else if(spr_dir == -1 && air_dash_direction == 4){hfx_sl_dash_draw_angle = 0;} // angle exception screw math
        else if(spr_dir == -1 && air_dash_direction == 1){hfx_sl_dash_draw_angle = 45;} // angle exception screw math
        else {var hfx_sl_dash_draw_angle = -1 * temp_air_dash_draw_angle;}
        with(hfx_sl_dash_obj){
			draw_angle = hfx_sl_dash_draw_angle;
        }
    }
    //print( "state: " + get_state_name( state ));
    if(state == PS_JUMPSQUAT && state != PS_WAVELAND && shield_pressed){
    	set_state(PS_WAVELAND);
    	if(joy_pad_idle != false){var joy_dir_x_component = abs(sin(joy_dir));}
    		else joy_dir_x_component = 1;
    	if(right_down){hsp = dash_speed * wave_land_adj * joy_dir_x_component};
    	if(left_down){hsp = -1 * dash_speed * wave_land_adj * joy_dir_x_component};
    	clear_button_buffer(PC_JUMP_PRESSED);
    	//sprite_change_offset("sl_airdash", 94, 122); // Reset airdash in case it doesn't
    }
    // Simlate Wave Fritcion
    if(state == PS_WAVELAND){
    	if(sign(hsp) == 1){hsp -= wave_friction;}
    	if(sign(hsp) == -1){hsp += wave_friction;}
    }
    
    // Ground dash Functioznality / EXTRA 2
    if(state == PS_PARRY_START && (right_down || left_down)){
    	if(move_cooldown[AT_EXTRA_2] == 0){
            set_state(PS_ATTACK_GROUND);
            set_attack(AT_EXTRA_2);
            state_timer = 0;
            window = 0;
            window_timer = 0;
            move_cooldown[AT_EXTRA_2] = 45;
            spawn_hit_fx(x,y-40,hfx_sl_dash);
        }
        else{
            set_state(PS_IDLE);
            state_timer = 0;
            window = 0;
            window_timer = 0;
            clear_button_buffer(PC_SHIELD_PRESSED);
            parry_cooldown = 5;
        }
        //set_window_value(AT_EXTRA_3,2,AG_WINDOW_HSPEED,temp_air_dash_hsp);
        //set_window_value(AT_EXTRA_3,2,AG_WINDOW_VSPEED,temp_air_dash_vsp);
    //set_attack(AT_EXTRA_2);
    }
    // Uspec Not PRatfall Code
	set_window_value(AT_USPECIAL,get_attack_value(AT_USPECIAL,AG_NUM_WINDOWS),AG_WINDOW_TYPE,1); // Set no pratfall on Uspec
	set_window_value(AT_FSPECIAL,get_attack_value(AT_FSPECIAL,AG_NUM_WINDOWS),AG_WINDOW_TYPE,1); // Set no pratfall on Fspec
	set_window_value(AT_FSPECIAL_AIR,get_attack_value(AT_FSPECIAL_AIR,AG_NUM_WINDOWS),AG_WINDOW_TYPE,1); // Set no pratfall on Fspec
    // Set cooldown on Uspec on use
    if(attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){ move_cooldown[AT_USPECIAL] = 999;}
    if(attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){ move_cooldown[AT_FSPECIAL] = 999;}
    if(attack == AT_FSPECIAL_AIR && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){ move_cooldown[AT_FSPECIAL_AIR] = 999;}
    // Reset Uspec Use on land / wall jump / or hitstun
    if(move_cooldown[AT_USPECIAL] > 0 && (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){ 
    	move_cooldown[AT_USPECIAL] = 0;
    }
    if(move_cooldown[AT_FSPECIAL] > 0 && (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){ 
    	move_cooldown[AT_FSPECIAL] = 0;
    }
    if(move_cooldown[AT_FSPECIAL_AIR] > 0 && (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)){ 
    	move_cooldown[AT_FSPECIAL_AIR] = 0;
    }
    // Spark Effects
    if(get_gameplay_time() % hfx_sl_sparkfx_trail_speed == 0){
        spawn_hit_fx(x,y - 40,hfx_sl_sparkfx_trail); //hfx_sl_sparkfx_trail_object = 
    }
    // Transform HFX
	if(instance_exists(hfx_sl_transform_obj)){
		var temp_depth = depth;
		var temp_x = x;
		var temp_y = y - 32;
		with(hfx_sl_transform_obj){
			depth = temp_depth - 1;
			x = temp_x;
			y = temp_y;
		}
	}
    // Decrement Timer
    SL_damage_timer--;
    // Exit Conditions
    if(SL_damage_timer == 0){
        Set_SL_Mode(false);
        sl_idle_but_better_flag = false;
    }
    
    break;
    
}


// SL Debug Toggle in training mode on taunt + Down
if(get_training_cpu_action() != CPU_FIGHT){
    if(taunt_pressed && down_down){
        clear_button_buffer(PC_TAUNT_PRESSED);
        SL_activated_by_opponent_number = -1;
        if(!SL_mode_active){
            SL_damage_timer = 99999;
            Set_SL_Mode(true);
        }
        else{
            SL_damage_timer = 0;
            Set_SL_Mode(false);
        }
    }
    if(SL_damage_timer > 600 && attack == AT_DSPECIAL_2 && window == 4){
    	SL_damage_timer = 600;
    }
}

//print(SL_mode_active);
//#endregion

//Pratfall Airdrift
if(state == PS_PRATFALL){
	// Default air_accel .28
	air_accel = .19 //approx 2/3rd of default air accel .28
}
else air_accel = .28; // default

if(state == PS_PARRY && state_timer == 1){
	var temp_parryfx_object = spawn_hit_fx(x + (6 * spr_dir) ,y-46,hfx_parryfx);
	temp_parryfx_object.depth = depth - 1;
}

// Mark Stuff
// Move Mark Consume HFX on opponent
if(instance_exists(hitfx_mark_consume_obj) && hitfx_mark_consume_obj != noone && grabbed_player_obj != noone){
	var temp_x = grabbed_player_obj.x;
	var temp_y = grabbed_player_obj.y - floor(grabbed_player_obj.char_height / 2);
	with(hitfx_mark_consume_obj){
		x = temp_x;
		y = temp_y;
	}
}

// Final Strong Small Sprites

if(attack == AT_FINAL_STRONG && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && small_sprites == false){
	small_sprites = true;
}
else if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND))
{
	small_sprites = false;
}


//#region Other character update

var temp_opponent_on_respawn_plat;
var temp_num_players = countPlayers; // Lockotu funcitonlity if more then 2 players
var temp_opponent_galaxy; 
with(asset_get("oPlayer")){
    if (id != other.id){
    	// Cleanse mark on Opponent's Death
		if(state == PS_RESPAWN){
			electric_mark = false;
			if(temp_num_players == 2){temp_opponent_on_respawn_plat = 1;} // Add damage frame to Iroh to prevent it from daining
		}
		// Record Galaxy
		if(activated_kill_effect == true){ 
			temp_opponent_galaxy = true;
		}
    }
}
opponent_on_respawn_plat = temp_opponent_on_respawn_plat; // Set this so we can prevent damage on spawn plat due to a bug
other_player_galaxied = temp_opponent_galaxy;

if(countPlayers == 2 && SL_mode_active == true && !hitpause) {SL_damage_timer += opponent_on_respawn_plat;} // Lockotu funcitonlity if more then 2 players
//#endregion

// Code for counting players for Results Screen / Intro
if(state == PS_SPAWN && state_timer == 1)
{
        with(oPlayer)
        {
            other.countPlayers ++;
            if(id != other.id)
                other.enemyObj = id;
        }
}

// Richter Alt
if(get_player_color(player) == 28){ //&& color_shift == false for when colors go over 28
	// Set Victory Theme
	if(state == PS_SPAWN && state_timer == 1){
		set_victory_theme(sound_get("richter_victory"));
	}
	// Nspecial
	if((attack == AT_NSPECIAL || attack == AT_FTHROW) && other_player_galaxied == true && current_sound_obj == noone){
		current_sound_obj = sound_play(sound_get("richter_nspecial_funny"));
		stage_music_suppression_timer = 100;
	}
	//Uspecial
	if((attack == AT_USPECIAL) && other_player_galaxied == true && current_sound_obj == noone){
		current_sound_obj = sound_play(sound_get("richter_die_monster"));
		stage_music_suppression_timer = 175;
	}
	// Reset sound object
	if(current_sound_obj != noone && other_player_galaxied = false){
		current_sound_obj = noone;
	}
	// Supress music while playing these sounds
	if(stage_music_suppression_timer > 0){stage_music_suppression_timer--;suppress_stage_music(.1,.1);}
}



#define Set_SL_Mode(mode)
{
    switch(mode){
        case 0: // False
            SL_mode_active = false;
            SL_activated_by_opponent_ID = noone;
            init_shader();
            if(!instance_exists(hfx_sl_untransform_obj)){ hfx_sl_untransform_obj = spawn_hit_fx(x,y - 32,hfx_sl_untransform);}
            sound_play(asset_get("mfx_unstar" ),false,noone,1,.75);
            sl_idle_but_better_flag = false;
        break;
        
        case 1: // True
            SL_mode_active = true;
            init_shader();
        break;
        
        default:
        break;
    }
}