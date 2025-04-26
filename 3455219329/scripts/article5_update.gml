state_timer++;
movement_timer++;
if(final_stock_spawned == 0){
	leave_time++
}

//States
switch(state){
	case 0://Inactive
		if(final_stock_spawned == 20){
			instance_destroy();
			exit;
		}
		leave_time = 0;
		movement_timer = 0;
		if(state_timer = 60){
			if(barrel_mode == next_type){
				barrel_mode++;
			} else {
				barrel_mode = next_type;
			}
			//Movement and mode handler
			switch(barrel_mode){
				default: //Center stage
					barrel_mode = 10;
					leave_pos_x = get_marker_x(10);
					leave_pos_y = get_marker_y(10) + 700;
					rotation_point = 2;
					movement_style = 3;
					rotation_skip = 1;
					movement_change = 1;
					movement_limiter = 2;
					banana_x_change = 0;
					banana_y_change = -30;
				break;
				case 1: //Top blast zone
					leave_pos_x = get_marker_x(1);
					leave_pos_y = get_marker_y(1) - 500;
					rotation_point = 6;
					banana_x_change = 0;
					banana_y_change = 30;
					var rand_type = random_func(4, 2, true) + 1;
					if(rand_type == 1 or final_stock_spawned > 0){//Left and right
						movement_style = 2;
						movement_change = 0.5;
						movement_limiter = 5;
					} else {//rotate
						movement_style = 3;
						rotation_skip = 1;
						movement_change = 1;
						movement_limiter = 2;
					}
				break;
				case 2: //Left of stage
					leave_pos_x = get_marker_x(2) - 500;
					leave_pos_y = get_marker_y(2);
					var rand_type = random_func(4, 2, true) + 1;
					if(rand_type == 1 or final_stock_spawned > 0){
						rotation_point = 0;
						movement_style = 1;
						movement_change = 0.5;
						movement_limiter = 5;
						banana_x_change = 30;
						banana_y_change = 0;
					} else {
						rotation_point = 1;
						movement_style = 3;
						rotation_skip = 2;
						movement_change = 1;
						movement_limiter = 1;
						banana_x_change = 20;
						banana_y_change = -20;
					}
					
				break;
				case 3: //Right of stage
					leave_pos_x = get_marker_x(3) + 500;
					leave_pos_y = get_marker_y(3);
					var rand_type = random_func(4, 2, true) + 1;
					if(rand_type == 1 or final_stock_spawned > 0){
						rotation_point = 4;
						movement_style = 1;
						movement_change = 0.5;
						movement_limiter = 5;
						banana_x_change = -30;
						banana_y_change = 0;
					} else {
						rotation_point = 3;
						movement_style = 3;
						rotation_skip = 2;
						movement_change = 0;
						movement_limiter = 1;
						banana_x_change = -20;
						banana_y_change = -20;
					}
				break;
				case 4: //bottom left
					leave_pos_x = get_marker_x(4);
					leave_pos_y = get_marker_y(4) + 700;
					rotation_point = 1;
					movement_style = 3;
					rotation_skip = 1;
					movement_change = 0;
					movement_limiter = 2;
					banana_x_change = 20;
					banana_y_change = -20;
				break;
				case 5: //bottom right
					leave_pos_x = get_marker_x(5);
					leave_pos_y = get_marker_y(5) + 700;
					rotation_point = 3;
					movement_style = 3;
					rotation_skip = 1;
					movement_change = 2;
					movement_limiter = 2;
					banana_x_change = -20;
					banana_y_change = -20;
				break;
			}
			x = leave_pos_x;
			y = leave_pos_y;
		}
		if(state_timer > 60 and state_timer < 120){
			//Lerp in there!!
			var next_x = round(lerp(leave_pos_x, get_marker_x(barrel_mode), (state_timer-60)/60));
			var next_y = round(lerp(leave_pos_y, get_marker_y(barrel_mode), (state_timer-60)/60));
			hsp = (next_x - x);
			vsp = (next_y - y);
			image_xscale = 2;
			image_yscale = 2;
			image_angle = rotation_point*45;
		} else if (state_timer < 60) {
			//Lerp outta there!!
			//var next_x = round(lerp(x, leave_pos_x, state_timer/60));
			//var next_y = round(lerp(y, leave_pos_y, state_timer/60));
			//hsp = (next_x - x);
			//vsp = (next_y - y);
			//movement_style = 0;
			image_xscale = 0;
			image_yscale = 0;
			bananas_spawned = false;
		}
		//Go to next state
		if(state_timer == 120){
			state = 1;
			state_timer = 0;
			hsp = 0;
			vsp = 0;
		}
	break;
	case 1://Active, waiting for input
		if(place_meeting(x, y, oPlayer)){
			 with(oPlayer){
                if(place_meeting(x, y, other) and state != PS_AIR_DODGE
                								and state != PS_PARRY
                								and state != PS_ROLL_BACKWARD
                								and state != PS_ROLL_FORWARD
                								and state != PS_TECH_GROUND
                								and state != PS_TECH_FORWARD
                								and state != PS_TECH_BACKWARD
                								and state != PS_WALL_TECH
                								and state != PS_RESPAWN
                								and state != PS_DEAD){
	  				other.caught_player = self;
	  				other.state = 2;
	  				other.state_timer = 0;
	  				has_airdodge = true;
					djumps = 0;
           		}
			}
		} else if(leave_time >= leave_max){
			state = 0;
			state_timer = 0;
			barrel_explode();
		}
	break;
	case 2://Active, has player
		if(state_timer == 1){
			loading_fx = spawn_hit_fx(x, y, load_fx);
			loading_fx.depth = -10;
			loading_fx.hsp = hsp;
			loading_fx.vsp = vsp;
			sound_play(sound_get("bcannon_enter"), false, noone, 0.5);
		}
		if(state_timer < 5){
			image_xscale -= 0.15;
			image_yscale += 0.15;
		} else if(state_timer < 10){
			image_xscale += 0.15;
			image_yscale -= 0.15;
		} else{
			image_xscale = 2;
			image_yscale = 2;
		}
		if(!instance_exists(caught_player)){
			state = 1;
			state_timer = 0;
		}
		if(bananas_spawned = false and final_stock_spawned < 1){
			bananas_spawned = true;
			var bananas_num = 1;
			while(bananas_num < 10){
				bananas_num++;
				banana = instance_create(leave_pos_x, leave_pos_y, "obj_stage_article", 2);
				banana.image_index = bananas_num
				banana.start_x = leave_pos_x
				banana.start_y = leave_pos_y
				banana.goto_x = get_marker_x(barrel_mode) + bananas_num*banana_x_change
				banana.goto_y = get_marker_y(barrel_mode) + bananas_num*banana_y_change
				banana.state_timer -= bananas_num
			}
		}
		with(oPlayer){
			if(self = other.caught_player){
				visible = false;
				invincible = false;
				invince_time = 0;
				x = round(other.x) + other.hsp;
				y = round(other.y) + 20 + other.vsp;
				hsp = 0
				vsp = 0
				set_state(PS_PRATFALL)
				can_jump = false
				can_attack = false
				can_strong = false
				can_ustrong = false
				can_special = false
				can_shield = false
				can_wall_jump = false
				can_fast_fall = false
				can_wall_cling = false
				can_move = false
				if(attack_pressed or special_pressed or jump_pressed or hitpause == true or other.state_timer >= 700 or other.final_stock_spawned == 20){
					if(other.state_timer > 10){
						other.state = 3;
						other.state_timer = 0;
					}
				}
				if(state == PS_RESPAWN){
					other.state = 1;
					other.state_timer = 0;
				}
			}
		}
	break;
	case 3://Active, shoots player, loops to wait
		if(state_timer < 5){
			image_xscale -= 0.35;
			image_yscale += 0.35;
		} else if(state_timer < 10){
			image_xscale += 0.35;
			image_yscale -= 0.35;
		} else{
			image_xscale = 2;
			image_yscale = 2;
		}
		if(state_timer == 6){
			var blast = create_hitbox(AT_JAB, 10, caught_player.x, caught_player.y);
			blast.kb_angle = launch_angle
			blast.kb_value = launch_power
			
			//launcher = instance_create(x, y, "obj_stage_article", 8);
			launcher = create_hitbox(AT_JAB, 1, x, y);
			launcher.kb_angle = rotation_point*45;
			launcher.player = caught_player.player
			
			caught_player.visible = true;
			caught_player = noone;
			sound_play(sound_get("bcannon"))
			next_type = random_func(5, 5, true) + 1;
		}
		if(state_timer >= 60){
			state = 1;
			state_timer = 0;
		}
		if(leave_time >= leave_max and state_timer >= 15){
			state = 0;
			state_timer = 0;
			barrel_explode()
		}
	break;
}

switch(movement_style){
	case 0://Nothing
		image_angle = rotation_point*45;
	break;
	case 1://up and down
		front_limit = get_marker_y(barrel_mode) - 150;
		back_limit = get_marker_y(barrel_mode) + 130;
		image_angle = rotation_point*45;
		if(abs(vsp) < movement_limiter){
			vsp += movement_change;
		}else{
			if(movement_timer > 5){
				vsp = movement_limiter*(movement_change/abs(movement_change));
			}else{
				vsp += movement_change/2;
			}
		}
		if(y <= front_limit){
			movement_change = 0.5
			movement_timer = 0;
			//print("Front Limit reached: " + string(front_limit))
		}
		if(y >= back_limit){
			movement_change = -0.5;
			movement_timer = 0;
			//print("Back Limit reached: " + string(back_limit))
		}
	break;
	case 2://Left and right
		front_limit = get_marker_x(barrel_mode) - 300;
		back_limit = get_marker_x(barrel_mode) + 300;
		image_angle = rotation_point*45;
		if(abs(hsp) < movement_limiter){
			hsp += movement_change;
		}else{
			if(movement_timer > 5){
				hsp = movement_limiter*(movement_change/abs(movement_change));
			}else{
				hsp += movement_change/2;
			}
		}
		if(x <= front_limit){
			movement_change = 0.5
			movement_timer = 0
			//print("Front Limit reached: " + string(front_limit))
		}
		if(x >= back_limit){
			movement_change = -0.5;
			movement_timer = 0;
			//print("Back Limit reached: " + string(back_limit))
		}
	break;
	case 3://Rotation
		if(movement_timer == 45){
			rotation_point += rotation_skip;
			movement_timer = 0;
			movement_change++;
		}
		if(movement_change >= movement_limiter and movement_timer == 44){
			movement_change = 0;
			rotation_skip = -rotation_skip
		}
		if(rotation_skip > 0){
			if(image_angle > rotation_point*45){
				image_angle -= 1*(rotation_skip/abs(rotation_skip));
			}
			if(image_angle < rotation_point*45){
				image_angle += 6*rotation_skip;
			}
		} else if(rotation_skip < 0) {
			if(image_angle < rotation_point*45){
				image_angle -= 1*(rotation_skip/abs(rotation_skip));
			}
			if(image_angle > rotation_point*45){
				image_angle += 6*rotation_skip;
			}
		}
	break;
}

//Rotation logic
switch(rotation_point){
	case 0://Straight forward
		barrel_hsp = 20;
		barrel_vsp = 0;
		launch_angle = 10
		launch_power = 17.5;
	break;
	case 1://Up right
		barrel_hsp = 15;
		barrel_vsp = -15;
		launch_angle = 55
		launch_power = 18.5;
	break
	case 2://Up
		barrel_hsp = 0;
		barrel_vsp = -20;
		launch_angle = 90
		launch_power = 18.5;
	break
	case 3://Up left
		barrel_hsp = -15;
		barrel_vsp = -15;
		launch_angle = 125
		launch_power = 18.5;
	break;
	case 4://Left
		barrel_hsp = -20;
		barrel_vsp = 0;
		launch_angle = 160
		launch_power = 17.5;
	break;
	case 5://Left down
		barrel_hsp = -15;
		barrel_vsp = 15;
		launch_angle = 210
		launch_power = 12;
	break;
	case 6://Down
		barrel_hsp = 0;
		barrel_vsp = 20;
		launch_angle = 270
		launch_power = 15;
	break;
	case 7://Down right
		barrel_hsp = 15;
		barrel_vsp = 15;
		launch_angle = 330
		launch_power = 12;
	break;
}

if(rotation_point >= 8){
	rotation_point = rotation_point - 8;
	image_angle = image_angle-369;
}else if(rotation_point <= -1){
	rotation_point = rotation_point + 8;
	image_angle = image_angle+360
}

//print("x: " + string(x) + " y: " + string(y))

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
    case "smoke": dlen = 12; dfx = 13; dfg = 2646; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define barrel_explode

exploding_fx = spawn_hit_fx(x, y, explode_fx);
exploding_fx.depth = -10;
sound_play(sound_get("bcannon_break"), false, noone, 0.8, 0.75)
spawn_base_dust(x,y,"smoke",0)
var wood_num = 0;
while(wood_num < 10){
	wood = create_hitbox(AT_TAUNT, 1, x, y);
	wood.image_index = random_func(wood_num, 10, true) + 1
	wood.img_spd = 0;
	wood.hsp = 1.25*(random_func(wood_num+1, 10, true ) - 5)
	wood.vsp = -1.25*(random_func(wood_num+2, 10, true)-1)
	wood_num++;
	//print(wood_num)
}