//gearbox

with asset_get("obj_stage_article_solid") if num == 2{
	other.image_index = (move_timer % 10 > 4);
}



switch(state){
	case 0: //closed
		user = noone;
		
		if practice with oPlayer if place_meeting(x, y + 64, other) && (state == PS_CROUCH || "training_town_crouch" in self && training_town_crouch){
			other.user = self;
		}
		
		if (user == noone){
			crouch_time = 0;
		}
		else{
			crouch_time++;
		}
		
		if (crouch_time == crouch_time_max){
			setState(1);
			with user set_state(PS_PRATLAND);
			user.was_parried = true;
			user.parry_lag = 10000;
			user.x = x;
			user.y = owner.y + 6;
			has_crouched = true;
			sound_play(asset_get("mfx_star"));
		}
		break;
	
	case 1: //opening
		var s_t_max = 30;
		draw_height = ease_cubeInOut(draw_height_low, draw_height_high, state_timer, s_t_max);
		cursor = 1;
		if state_timer == s_t_max setState(2);
	
	case 2: //open
		if state_timer < 0{
			draw_height = lerp(draw_height, draw_height_high, 0.5);
			break;
		}
		if !instance_exists(user) setState(3);
		else with user{
			parry_lag = 1000000;
			
			
			
			var change = 0;
			
			if shield_pressed || attack_pressed || special_pressed || state != PS_PRATLAND{
				with other setState(3);
				parry_lag = 10;
				state_timer = 0;
				was_parried = false;
				sound_play(asset_get("mfx_confirm"));
				clear_button_buffer(PC_SHIELD_PRESSED);
				clear_button_buffer(PC_ATTACK_PRESSED);
				clear_button_buffer(PC_SPECIAL_PRESSED);
			}
			
			else if ((up_down || down_down) && "held_timer" in self){
				held_timer++;
				
				var held = held_timer > 24 && held_timer mod 5 == 0;
				
				if (down_pressed || (down_down && held)){
					change = 1;
				}
				
				if (up_pressed || (up_down && held)){
					change = -1;
				}
			}else{
				held_timer = 0;
			}
			
			if (state == 3){
				
			}
			else if right_pressed{
				other.cursor++;
				sound_play(asset_get("mfx_move_cursor"));
			}
			else if left_pressed{
				other.cursor--;
				sound_play(asset_get("mfx_move_cursor"));
			}
			
			else if change != 0{
				other.select_timer = other.select_timer_max;
				sound_play(asset_get("mfx_move_cursor"));
				switch(other.cursor){
					case 0:
					case 2:
						with other sideChange(cursor * 0.5, change);
						break;
					case 1:
						other.owner.current_layout += change;
						break;
				}
			}
			if taunt_pressed{
				other.grid_type++;
				other.has_gridded = true;
				other.select_timer = other.select_timer_max;
				sound_play(asset_get("mfx_move_cursor"));
				clear_button_buffer(PC_TAUNT_PRESSED);
			}
		}
		
		cursor = menuLoop(cursor, 0, 2);
		grid_type = menuLoop(grid_type, 0, 3);
		owner.current_layout = menuLoop(owner.current_layout, 0, array_length(owner.layouts) - 1);
		
		switch(grid_type){
			case 0:
				owner.grid_alpha = 0;
				owner.grid_mode = 1;
				break;
			case 1:
				owner.grid_alpha = 0.5;
				owner.grid_mode = 0;
				break;
			case 2:
				owner.grid_alpha = 1;
				owner.grid_mode = 0;
				break;
			case 3:
				owner.grid_alpha = 1;
				owner.grid_mode = 1;
				break;
		}
		break;
	
	case 3: //closing
		var s_t_max = 30;
		draw_height = ease_cubeInOut(draw_height_high, draw_height_low, state_timer, s_t_max);
		if state_timer == s_t_max setState(0);
		crouch_time = 0;
		break;
}

if (state == 0) depth = depth_low;
else depth = depth_high;



state_timer++;
if select_timer select_timer--;



#define sideChange(side, change)

side_config[side] += change;
side_config[side] = menuLoop(side_config[side], 0, 3);
owner.walls[side] = side_configs[side_config[side]][0];
owner.bridges[side] = side_configs[side_config[side]][1];



#define setState(n_s)

state = n_s;
state_timer = 0;



#define menuLoop(value, low, high)

if (value == low - 1){
	value = high;
}

else if (value == high + 1){
	value = low;
}

return value;