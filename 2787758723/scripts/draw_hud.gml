//draw_hud - the x position of your HUD element is 48*(i-1)


draw_set_alpha(1);

//draw_debug_text(16,16,string(get_window_value(AT_JAB,1,AG_WINDOW_LENGTH)));

//draw_debug_text(32,2,string(object_index));
var xx = view_get_wview()/2;
var yy = 30;
/*draw_set_font(asset_get("roaLBLFont"));
draw_set_halign(fa_left);*/

//array_room_data[1][0][1][0][6][0] = 100;

/*with oPlayer {
    draw_debug_text(2,128, string(get_state_name(state)));
}*/

/*with oPlayer {
	with other.room_manager {
		if instance_exists(other.temp_pause) {
			paused = true;
			set_view_position(follow_point.x,follow_point.y);
		} else paused = false;
	}
}*/




//with scene_manager draw_windows();
draw_boss_healthbar();
draw_enemy_healthbar()
/*
with obj_stage_article {
	if num == 1 && static {
		depth = -2;
		draw_sprite_ext(sprite_index,0,0,0,2,2,0,c_white,1);
	}
}
*/

//Debug Info
if debug {
    draw_set_alpha(.7);
    draw_rectangle_color(0,0,350,110,c_black,c_black,c_black,c_black,c_black);
    draw_set_alpha(1);
    draw_debug_text(2,0,"FPS: "+string(fps));
    var _count = 0;
    var _count_s = 0;
    var _count_p = 0;
    
    // with action_manager {
    // 	for (var _i = 0; _i < array_length_1d(cur_actions); _i++)
    // 	{
    // 		if cur_actions[_i][1] == room_id && cur_actions[_i][2] == scene_id _count++;
    // 	}
    // 	draw_debug_text(2,16,"ACT: "+string(_count));
    // }
    with action_manager draw_debug_text(2,16,"ACT: "+string(array_length_1d(cur_actions)));
    draw_debug_text(2,32,"WIN: "+string(array_length_1d(active_win)));
    // var _count = 0;
    with obj_stage_article _count++;
    with obj_stage_article_platform _count_p++;
    with obj_stage_article_solid _count_s++;
    draw_debug_text(2,32+16,"ART: "+string(_count + _count_s + _count_p) + " (N: " + string(_count) + ") " + "(S: " + string(_count_s) + ")");
    with room_manager {
    	//print_debug(string(follow_point));
        p_true_pos = real_to_grid([follow_player.x,follow_player.y]);
        p_cell_pos = grid_to_cell(p_true_pos);
        //draw_debug_text(2,16,"CAM POS: "+string(true_pos));
        //draw_debug_text(2,32,"CELL POS: "+string(cell_pos));
        //draw_debug_text(2,48,"POS IN CELL: "+string([floor((pos_in_cell[0])/16),floor((pos_in_cell[1])/16)]));
        draw_debug_text(2,64,"PLAYER POS: "+"R: "+string(cur_room)+" S: "+string(action_manager.cur_scene[0])+" ["+string(p_cell_pos[1][0])+","+string(p_cell_pos[1][1])+"]:["+string(floor((p_cell_pos[0][0])/16))+","+string(floor((p_cell_pos[0][1])/16))+"]:["+string((p_cell_pos[0][0]) % 16)+","+string((p_cell_pos[0][1]) % 16)+"]");
        //debug
        
    }
    //draw_circle_color(view_get_wview()/2,view_get_hview()/2,4,c_red,c_red,false);
    draw_circle_color(follow_player.x-view_get_xview(),follow_player.y-view_get_yview(),4,c_red,c_red,false);
    
    // with action_manager draw_debug_text(100,96,string(suspened_actions));
}

//Room Swap effects
with room_manager {
    //if other.game_end set_view_position(init_cam_pos[0],init_cam_pos[1]);
    switch room_switch_type {
        case 1: //Fade Out/In
    		if room_switch_timer < room_switch_time/2 {
    			draw_rectangle_color(0,0,960,540*room_switch_timer/(room_switch_time/2),c_black,c_black,c_black,c_black,c_black);
    			// music_fade((room_switch_timer-(room_switch_time/2))/(room_switch_time/2),0.5);
    		}
    		if room_switch_timer >= room_switch_time/2 {
    			draw_rectangle_color(0,540*(room_switch_timer-(room_switch_time/2))/(room_switch_time/2),960,540,c_black,c_black,c_black,c_black,c_black);
				// music_fade(room_switch_timer/(room_switch_time/2),0.5);
				
    		}
    		break;
    	case 2:
    	    draw_sprite_ext(sprite_get("1px"),0,0,0,960,540,0,c_black,-abs(room_switch_timer-(room_switch_time/2))/(room_switch_time/2)+1);
    	    music_set_volume(abs(room_switch_timer*2-room_switch_time)/room_switch_time);
    	    break;
    	case 3:
    	    draw_sprite_ext(sprite_get("1px"),0,0,0,960,540,0,c_black,-abs(room_switch_timer-(room_switch_time_long/2))/(room_switch_time_long/2)+1);
    	   music_set_volume(abs(room_switch_timer*2-room_switch_time_long)/room_switch_time_long);
    	    break;
    }
}

if string_count("`",keyboard_string) {
	in_speedrun = false; //No cheating!
	cmd_toggle = !cmd_toggle;
	if cmd_toggle {
		keyboard_string = "";
		array_push(active_win,[[cmd_x,cmd_y,noone,0],array_clone_seriously_why_isnt_this_how_it_works(win_data[0])]);
		win_active = array_length_1d(active_win)-1;
		active_win[@win_active][@1][@3][@1] = cmd_output;
	}
}

win_call = 0;
user_event(2); //Cursor and Window Draw

if debug draw_debug_text(430-floor(string_length("AM RELEASE "+string(am_vers))/2),2,"AM RELEASE "+string(am_vers)); 

if in_speedrun {
	var _speedrun_text = "TIMER: "+string_pad(string(floor(speedrun_timer/60/60)), 2, "0")+":"+string_pad(string(floor(speedrun_timer/60) % 60), 2, "0")+":"+string_pad(string(floor(speedrun_timer) % 60), 2, "0");
	
	draw_set_font(asset_get("fName"));
	draw_set_halign(fa_left);
	draw_debug_text(64,12,_speedrun_text); 
}

//#region exclusive to mario
if (get_gameplay_time() < 2) exit;
var cam_x = 0;
var cam_y = 0;
var gui_exists = false;

with obj_stage_article if (num == 19){ gui_exists = true; break; }

var level_current = obj_stage_main.am_mario_level_info[obj_stage_main.am_mario_level];
draw_set_font(asset_get("medFont"))
var world_string = string(level_current.world) + "-" + string(level_current.level)
var coin_string = string_pad(string(obj_stage_main.am_mario_coins), 2, "0");
draw_set_halign(fa_center);
draw_text_ext_transformed_color(cam_x + 512,cam_y + 8,"WORLD",16, string_width("WORLD"), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
draw_text_ext_transformed_color(cam_x + 512,cam_y + 32,world_string,16, string_width(world_string), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
for (var i = 0; i < array_length(obj_stage_main.players_on); i++) {
	var player_id = obj_stage_main.player_array[obj_stage_main.players_on[i]];
	var not_dead = player_id.state != PS_DEAD;
	var respawn = player_id.can_respawn && (player_id.state == PS_DEAD && player_id.state_timer >= 300);
    var lives_string = "x   " + string(player_id.am_mario_lives);
    if (obj_stage_main.am_mario_inf_lives) {
    	var lives_string = "x   " + "INF";
    }
    var player_icon = is_string(player_id.url) ? get_char_info(player_id.player, INFO_ICON) : sprite_get("player_icons_spr");
    var player_color = obj_stage_main.player_count == 1 ? c_white : get_player_hud_color(player_id.player);
    draw_sprite_ext(player_icon,player_id.select-2, cam_x + 240, cam_y + 8 + (34 * i), 2, 2, 0, ((respawn || not_dead) || obj_stage_main.player_count == 1) ? c_white : c_gray, 1);
    draw_text_ext_transformed_color(cam_x + 272 + 32,cam_y + 8 + 2 + (34 * i),lives_string,16, 200,  1, 1, 0, player_color, player_color, player_color, player_color, 1);
    if (obj_stage_main.player_count > 1) {
    	draw_text_ext_transformed_color(cam_x + 272 + 32,cam_y + 8 + (34 * i),lives_string,16, 200,  1, 1, 0, c_white, c_white, c_white, c_white, 1);
    }
    if (!not_dead && player_id.am_mario_lives > 0 && obj_stage_main.player_count > 1) {
		draw_set_halign(fa_right);
		var respawn_string = (respawn) ? "PRESS ATK" : "WAIT";
    	draw_text_ext_transformed_color(cam_x + 240 - 32,cam_y + 8 + (34 * i),respawn_string,16, 200,  1, 1, 0, c_white, c_white, c_white, c_white, 1);
    	draw_set_halign(fa_left);
    }
}
var time_string = string_pad(string(obj_stage_main.am_mario_timer), 3, "0");
draw_set_halign(fa_center);
draw_text_ext_transformed_color(cam_x + 624,cam_y + 8,"TIME",16, string_width("TIME"),  1, 1, 0, c_white, c_white, c_white, c_white, 1);
if (!gui_exists)
	draw_text_ext_transformed_color(cam_x + 624,cam_y + 32,time_string,16, string_width(time_string), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);
draw_sprite_ext(sprite_get("coin_hud"), find_room_type(), cam_x + 384, cam_y + 24, 2, 2, 0, c_white, 1);
draw_text_ext_transformed_color(cam_x + 384 + 48,cam_y + 32,coin_string,16, 200,  1, 1, 0, c_white, c_white, c_white, c_white, 1);
//#endregion


#define string_parse(_str,_delim) // BECAUSE THIS ISN'T DEFAULT FOR SOME REASON
_str = string_lower(_str); //Not case-sensitive
var _consol_parse = array_create(0);
var j = 1;
var k = 0;
for (var i = 0; i < string_length(_str);i++) {
    if string_char_at(_str,i) == _delim {
        _consol_parse[k] = string_copy(_str,j,i-j);
        j = i+1;
        k++;
    }
}
_consol_parse[k] = string_copy(_str,j,i-j+1);

return _consol_parse;

#define find_room_type() 
for (var i = 0; i < array_length(obj_stage_main.am_mario_ug_rooms); i++) {
	if (obj_stage_main.room_manager.cur_room == obj_stage_main.am_mario_ug_rooms[i])
		return 1;
}
return 0;

#define string_pad(str, len, pad)
var padsize = string_length(pad);
var padding = max(0,len - string_length(str));
var out  = "";
repeat(padding div padsize)
	out += pad;
out += string_copy(pad,1,padding mod padsize);
out += str;
out  = string_copy(out,1,len);
return out;

#define draw_boss_healthbar()
var i = 0;

repeat array_length(active_bosses) {
    var boss = active_bosses[i];
    var hbar_x = view_get_wview() / 2;
    var hbar_y = -80;
    var hbar_yoff = 52 * i;
    var hbar_fill = 0;
    var hbar_color = c_white;
    var show_percent = true;
    var hbar_percent = 0;
    var hbar_shake_x = 0;
    var hbar_shake_y = 0;
    
    with (boss) {
    	if !show_healthbar continue;
        hbar_color = char_hud_color;
        show_percent = hitpoints_max <= 0;
        hbar_percent = percent;
        
        if (show_percent)
            hbar_yoff = 68 * i;
        
        if (hitstun > 15 && hitpause > 0) {
            hbar_shake_x = round(-2 + random_func(1, 4, true) / 2) * 2;
            hbar_shake_y = round(-2 + random_func(1, 4, true) / 2) * 2;
        }
        switch(battle_state) {
            case 0:
                hbar_y = -80;
                hbar_fill = 0;
            break;
            
            case 1:
                if (show_healthbar) {
                    if (battle_state_timer <= 30)
                        hbar_y = lerp(-80, 24 + hbar_yoff, battle_state_timer / 30);
                    else
                        hbar_y = 24 + hbar_yoff;
                    if (boss_healthbar_timer > 0) {
                        if (boss_healthbar_timer < 56) 
                            hbar_fill = ease_linear(0, 1, round(boss_healthbar_timer), 56);
                        else {
                            hbar_fill = 1;
                        }
                    }
                    else
                        hbar_fill = 0;
                }
                else {
                    hbar_y = -80;
                    hbar_fill = 0;
                }
            break;
            
            case 2:
                var hp_total = 0;
                var hp_sum = 0;
                hbar_y = 24 + hbar_yoff;
                hp_total += hitpoints_max;
                hp_sum += hitpoints_max - percent;
                if (array_length(health_children) > 0) {
                    for (var i = 0; i < array_length(health_children); i++) {
                        with (health_children[i]) {
                            hp_total += hitpoints_max;
                            hp_sum += hitpoints_max - percent;
                        }
                    }
                }
                if (health_parent != -1 && health_parent != id) {
                    with (health_parent) {
                        hp_total += hitpoints_max;
                        hp_sum += hitpoints_max - percent;
                    }
                }
                if (hp_total != 0)
                    hbar_fill = hp_sum / hp_total;
            break;
            case 3:
                if (battle_state_timer <= 60)
                    hbar_y = lerp(24 + hbar_yoff, -80, battle_state_timer / 60);
                else
                    hbar_y = -80;
            break;
        }
        var xx = hbar_x - 320;
        var yy = hbar_y + 32;
        var str = char_name;
        
        if (!show_percent) {
            draw_set_font(asset_get("medFont"));
            draw_set_halign(fa_left);
            draw_sprite(sprite_get("boss_hp_back"), 0, hbar_x + hbar_shake_x, hbar_y + hbar_shake_y);
            draw_sprite_part_ext(sprite_get("boss_hp_bar"), 0, 0, 0, 640 * hbar_fill, 26, hbar_x - 320 + hbar_shake_x, hbar_y + hbar_shake_y, 1, 1, hbar_color, 1);
            draw_text_trans_outline(xx, yy, str, 1, -1, 1, 1, 0, c_white, c_black, 1);
        } else {
            draw_sprite(sprite_get("boss_percent_back"), 0, hbar_x + hbar_shake_x, hbar_y + hbar_shake_y);
            draw_set_font(asset_get("roaLBLFont"));
            draw_set_halign(fa_right);
            draw_text_trans_outline(hbar_x + 80, hbar_y + 8, hbar_percent, 1, -1, 1, 1, 0, c_white, c_black, 1);
            
            draw_set_font(asset_get("medFont"));
            draw_set_halign(fa_left);
            draw_text_trans_outline(hbar_x + 86, hbar_y + 16, "%", 1, -1, 1, 1, 0, c_white, c_black, 1);
            draw_set_halign(fa_right);
            draw_text_trans_outline(xx + 320 - 32, yy, str, 1, -1, 1, 1, 0, c_white, c_black, 1);
        }
    }
    i++;
}
#define draw_enemy_healthbar()
if (enemy_health_hud_mode == 0 || enemy_health_hud_mode == 2) {
    if (active_enemy_timer < active_enemy_timer_max) {
        if (instance_exists(active_enemy)) {
            //Icon
            draw_sprite(active_enemy.char_icon, 0, 2, 112)
            draw_sprite(sprite_get("enemy_hud_border"), 0, 2, 112)
            
            //Name
            draw_set_halign(fa_left)
            draw_set_font(asset_get("fName"))
            draw_text_trans_outline(50, 120, active_enemy.char_name, 1, 960, 1, 1, 0, c_white, c_black, 1)
            
            //Healthbar
            if (active_enemy.hitpoints_max > 0) {
                var hbar_scale = clamp(active_enemy.hitpoints_max, 24, 208) / 24;
                var hbar_fill = lerp(1, 0, active_enemy.percent / active_enemy.hitpoints_max);
                draw_sprite_ext(sprite_get("enemy_hud_hp"),0, 50, 136, 1, 1,0,c_white,1);
                draw_sprite_part_ext(sprite_get("enemy_hud_hp"), 1, 0, 0, 48 * hbar_fill, 16, 50, 136, 1, 1, active_enemy.char_hud_color, 1);
                
            }
            else {
                draw_set_font(asset_get("medFont"))
                draw_debug_text(50,160,string(active_enemy.percent)+"%");
            }
        
        }
    }
}

#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (var i = - 1; i < 2; i++) for (var j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);
#define real_to_grid(_pos) //Translate real coordinates into coordinates on the basegame grid 
return _pos;
#define cell_to_real(_pos,_cell_pos) //Translate cell coordinates to real
with room_manager return [(_pos[0]-grid_offset)*cell_size + (cell_dim[0]*_cell_pos[0]-grid_offset*(_cell_pos[0] != 0))*cell_size + render_offset[0], 
						  (_pos[1]-grid_offset)*cell_size + (cell_dim[1]*_cell_pos[1]-grid_offset*(_cell_pos[1] != 0))*cell_size + render_offset[1]];
#define cell_to_grid(_pos, _cell_pos) //Translate cell coordinates to the basegame grid system
with room_manager return real_to_grid(cell_to_real(_pos,_cell_pos));
#define grid_to_cell(_pos) //Translate basegame grid system coordinates to in cell coordinates
with room_manager {
	_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
	var _sub_pos_x = [(_pos[0] % ((cell_dim[0]-grid_offset)*cell_size)),floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size))];
	var _sub_pos_y = [(_pos[1] % ((cell_dim[1]-grid_offset)*cell_size)),floor(_pos[1]/((cell_dim[1]-grid_offset)*cell_size))];
	if sign(_sub_pos_x[0]) == -1 _sub_pos_x[0] += ((cell_dim[0]-grid_offset)*cell_size); 
	if sign(_sub_pos_y[0]) == -1 _sub_pos_y[0] += ((cell_dim[1]-grid_offset)*cell_size);
    return [[_sub_pos_x[0], //Subcell
		    _sub_pos_y[0]],
		   [_sub_pos_x[1], //Cell
			_sub_pos_y[1]]];
}
#define array_clone_seriously_why_isnt_this_how_it_works(_shit)
var _fuck = [];
for(var _i = 0;_i < array_length_1d(_shit);_i++) {
	if array_length_1d(_shit[_i]) > 0 array_push(_fuck,array_clone_seriously_why_isnt_this_how_it_works(_shit[_i]));
	else array_push(_fuck,_shit[_i]);
}
return _fuck;