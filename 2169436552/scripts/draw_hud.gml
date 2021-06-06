//draw_hud - the x position of your HUD element is 48*(i-1)

//draw_sprite_ext(sprite_get("clutch"),is_clutch,temp_x+110,temp_y-20,1,1,0,c_white,1);


//draw_set_font(asset_get("medFont"));
//draw_text_trans_outline(temp_x,temp_y,"TEST FONT",10,1000,1,1,0,c_white,c_black,1);
//draw_debug_text(temp_x-200,temp_y-470,string(cur_scene));
//draw_debug_text(temp_x-200,temp_y-430,string(cur_scene_time));
//draw_debug_text(temp_x-200,temp_y-400,string(cur_scene_time_end));
//draw_debug_text(temp_x,temp_y-420,string(move_timer));
//draw_debug_text(temp_x,temp_y-400,string(list_window[| 0].path));
//draw_debug_text(temp_x,temp_y-380,string(array_scene_data));


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


if !game_end with scene_manager draw_windows();
//Debug Info
if debug {
    draw_set_alpha(.7);
    draw_rectangle_color(0,0,350,110,c_black,c_black,c_black,c_black,c_black);
    draw_set_alpha(1);
    draw_debug_text(2,2,"FPS: "+string(fps));
    with room_manager {
        p_true_pos = real_to_grid([follow_player.x,follow_player.y]);
        p_cell_pos = grid_to_cell(p_true_pos);
        //draw_debug_text(2,16,"CAM POS: "+string(true_pos));
        draw_debug_text(2,32,"CELL POS: "+string(cell_pos));
        draw_debug_text(2,48,"POS IN CELL: "+string([floor((pos_in_cell[0])/16),floor((pos_in_cell[1])/16)]));
        draw_debug_text(2,64,"PLAYER POS: "+string(p_cell_pos[1])+":"+string([floor((p_cell_pos[0][0])/16),floor((p_cell_pos[0][1])/16)])+":"+string([(p_cell_pos[0][0]) % 16, (p_cell_pos[0][1]) % 16]));
        //draw_debug_text(2,64,"FOLLOW POS: "+string(follow_point));
        //draw_debug_text(2,82,"PLAYER POS: "+string(follow_player_pos));
        //draw_debug_text(2,128, string([horiz_dir,vert_dir]));
        /*
        var init_y = 78;
        var dist_y = 16;
        draw_debug_text(2,64,"ACTIVE ARTICLE LIST:");
        for (var i = 0; i < ds_list_size(list_room); i++) {
            draw_debug_text(2,init_y+i*dist_y,string(list_room[| i].id)+": "+string([list_room[| i].x,list_room[| i].y]));
        }*/
        /*var _count = 0;
        with obj_stage_article_solid _count++;
        with obj_stage_article_platform _count++;
        with obj_stage_article _count++;
        draw_debug_text(2,96,"A ACTIVE ARTICLES:"+string(_count));*/
        //draw_debug_text(2,112,"VERT, HORIZ:"+string([scroll_vert,scroll_horiz]));
    }
    //draw_circle_color(view_get_wview()/2,view_get_hview()/2,4,c_red,c_red,false);
    draw_circle_color(follow_player.x-view_get_xview(),follow_player.y-view_get_yview(),4,c_red,c_red,false);
}

//Room Swap effects
with room_manager {
    if other.game_end set_view_position(init_cam_pos[0],init_cam_pos[1]);
    switch room_switch_type {
        case 1: //Fade Out/In
    		if room_switch_timer < room_switch_time/2 draw_rectangle_color(0,0,960,540*room_switch_timer/(room_switch_time/2),c_black,c_black,c_black,c_black,c_black);
    		if room_switch_timer >= room_switch_time/2 draw_rectangle_color(0,540*(room_switch_timer-(room_switch_time/2))/(room_switch_time/2),960,540,c_black,c_black,c_black,c_black,c_black);
    		break;
    	case 2:
    	    draw_sprite_ext(sprite_get("1px"),0,0,0,960,540,0,c_black,-abs(room_switch_timer-(room_switch_time/2))/(room_switch_time/2)+1); //-abs(room_switch_timer-(room_switch_time/2))/(room_switch_time/2)+1
    	    break;
    }
}

if string_count("`",keyboard_string) {
    debug_console = !debug_console;
    keyboard_string = "";
}

if debug_console { //debug_console_update();

    //#define debug_console_update();
    
    draw_set_alpha(.5);
    draw_rectangle_color(debug_x,debug_y,debug_ex,debug_ey,c_black,c_black,c_black,c_black,c_black);
    draw_rectangle_color(debug_x,debug_txt_y,debug_ex,debug_txt_y+20,c_black,c_black,c_black,c_black,c_black);
    
    draw_set_alpha(1);
    draw_set_font(asset_get("fName"));
    draw_text_transformed(debug_x,debug_txt_ey,keyboard_string,1,1,0);
    draw_text_transformed(debug_x,-10,console_output,1,1,0);
    if follow_player.attack_down && follow_player.attack_held == 1 {
        console_parse = string_parse(keyboard_string, " ");
        key_string_old = keyboard_string;
        keyboard_string = "";
        //print_debug(string(console_parse));
        if console_parse != [] console_command(console_parse);
        
    }
}

if debug_toggle != get_match_setting(SET_HITBOX_VIS) {
    console_command(["debug",get_match_setting(SET_HITBOX_VIS)]);
    debug_toggle = get_match_setting(SET_HITBOX_VIS);
}



#define console_command(_console_parse)
switch _console_parse[0] {
    case "reload":
        with room_manager force_reload = 1;
        break;
    case "debug":
        with obj_stage_article_solid debug = !debug;
        with obj_stage_article_platform debug = !debug;
        with obj_stage_article debug = !debug;
        debug = !debug;
        /*(if string_digits(_console_parse[1]) != "" {
            with obj_stage_article_solid if num == real(_console_parse[1]) debug = !debug;
            with obj_stage_article_platform if num == real(_console_parse[1]) debug = !debug;
            with obj_stage_article if num == real(_console_parse[1]) debug = !debug;
            print_to_console("TOGGLING DEBUG FOR ARTICLE: "+_console_parse[1]);
        } else if _console_parse[1] == "hud" {
            debug_info = !debug_info;
            print_to_console("TOGGLING DEBUG HUD");
        } else print_to_console("UNKNOWN ARGUMENTS");*/
        break;
    case "set":
        if _console_parse[1] in self && _console_parse[2] in variable_instance_get(self,_console_parse[1]) {
            variable_instance_set(variable_instance_get(self,_console_parse[1]),_console_parse[2], _console_parse[3]);
            print_to_console("SET "+_console_parse[2]+" IN "+_console_parse[1]+" TO "+_console_parse[3]);
        } else print_to_console("UNKNOWN SET");
        break;
    case "kill":
        //var _with_foder = noone;
        if array_length_1d(_console_parse) < 2 with follow_player create_deathbox(x,y,10,10,player,1,1,3,0);
        else {
            switch _console_parse[1] {
                case "enemies":
                    with obj_stage_article if num == 6 create_deathbox(x,y,10,10,-1,1,1,3,0);
                    break;
                case "players":
                    with oPlayer create_deathbox(x,y,10,10,-1,1,1,3,0);
                    break;
            }
        }
        break;
    case "instances":
        var _str = "";
        with asset_get(_console_parse[1]) {
            if !("num" in self) || num == _console_parse[2] _str += string(id)+", ";
        }
        print_to_console(_str);
        break;
    case "help":
        print_to_console("COMMAND LIST:
    color [article] [color] -
    set the debug color of an article.
    debug [article] - toggles debug info.
    help - shows this message.
    kill - kills self
    set [instance] [variable] [value] - 
    set a variable to a value in 
    a named instance.
    instances [article] [num] - 
    list the instances of an article.
    reload - reloads the minigame.
    room/scene [id] - 
    set the current room/scene to id.
    stock [num] - set the stocks of all players.");
        break;
    case "color":
        if string_digits(_console_parse[1]) != "" {
            with obj_stage_article_solid if num == real(_console_parse[1]) debug_color = _console_parse[2];
            with obj_stage_article_platform if num == real(_console_parse[1]) debug_color = _console_parse[2];
            with obj_stage_article if num == real(_console_parse[1]) debug_color = _console_parse[2];
            print_to_console("NEW ARTICLE COLOR: "+_console_parse[2]);
        } else print_to_console("UNKNOWN ARGUMENTS");
        
        break;
    case "room":
        if string_digits(_console_parse[1]) != "" {
            with obj_stage_article if num == 5 switch_to_room = real(_console_parse[1]);
        }
        break;
    case "scene":
        if string_digits(_console_parse[1]) != "" {
            with obj_stage_article if num == 3 switch_to_scene = real(_console_parse[1]);
        }
        break;
    case "stock":
        if string_digits(_console_parse[1]) != "" {
            with oPlayer set_player_stocks(player, real(_console_parse[1]));
        }
    case "":
        break;
    default:
        print_to_console("UNKNOWN COMMAND");
        break;
}

#define print_to_console(_str)
/*if string_length(_str) > debug_txt_w for (var i = 0; i < string_length(_str); i++) {
    if i % debug_txt_w == 0 _str = string_copy(_str,0,i)+"
"+string_copy(_str,i,string_length(_str)-i);
}*/

/*if string_length(key_string_old) > debug_txt_w for (var i = 0; i < string_length(key_string_old); i++) {
    if i % debug_txt_w == 0 key_string_old = string_copy(key_string_old,0,i)+"
"+string_copy(key_string_old,i+1,string_length(key_string_old)-i);
}*/
console_output = console_output + "
> " + key_string_old + "
: " + _str;
if string_height(console_output) > debug_ey {
    console_output = string_copy(console_output,string_pos("
: ",console_output)+1,string_length(console_output));
}


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
#define draw_windows()
var i = 0;
repeat ds_list_size(list_window) {
    if list_window[| i].visibl {
        
        switch list_window[| i].content_type {
            case 0: //Textbox
                draw_sprite_ext(list_window[| i].bg_sprite_index, list_window[| i].bg_image_index,list_window[| i]._x,list_window[| i]._y,1,1,0,c_white,1);
                if list_window[| i].font != "" draw_set_font(asset_get(list_window[| i].font));
                draw_text_trans_outline(list_window[| i]._x+list_window[| i]._in_x,list_window[| i]._y+list_window[| i]._in_y,string_copy(list_window[| i].text_full,1,floor(list_window[| i].vis_chars)),30,list_window[| i].text_spacing,1,1,0,c_white,c_black,1);
                break;
            case 1: //Animated Sprite 
                draw_sprite_ext(list_window[| i].bg_sprite_index, list_window[| i].bg_image_index,list_window[| i]._x,list_window[| i]._y,1,1,0,c_white,1);
                draw_sprite_ext(list_window[| i]._sprite_index, list_window[| i]._image_index,list_window[| i]._x+list_window[| i]._in_x,list_window[| i]._y+list_window[| i]._in_y,1,1,0,c_white,1);
                break;
            /*case 2: //Arrow Sprite
                draw_sprite_ext(list_window[| i]._sprite_index, list_window[| i]._image_index,list_window[| i]._x+list_window[| i]._in_x,list_window[| i]._y+list_window[| i]._in_y,1,1,0,c_white,1);
                break;*/
        }
    }
    i++;
}

#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (i = - 1; i < 2; i++) for (j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);
#define real_to_grid(_pos) //Translate real coordinates into coordinates on the basegame grid 
with room_manager return [_pos[0] - init_cam_pos[0]+true_pos[0], _pos[1] - init_cam_pos[1]+true_pos[1]];
#define cell_to_real(_pos,_cell_pos) //Translate cell coordinates to real
with room_manager return [(_pos[0]-grid_offset)*cell_size + (cell_dim[0]*_cell_pos[0]-grid_offset*(_cell_pos[0] != 0))*cell_size, (_pos[1]-grid_offset)*cell_size + (cell_dim[1]*_cell_pos[1]-grid_offset*(_cell_pos[1] != 0))*cell_size];
#define cell_to_grid(_pos, _cell_pos) //Translate cell coordinates to the basegame grid system
with room_manager return real_to_grid(cell_to_real(_pos,_cell_pos));
#define grid_to_cell(_pos) //Translate basegame grid system coordinates to in cell coordinates
with room_manager {
    var _cell_pos_temp = [-floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size)), -floor(_pos[1]/((cell_dim[1]-grid_offset)*cell_size))];
    return [[cell_dim[0]*16 - (_pos[0] % ((cell_dim[0]-grid_offset)*cell_size)), cell_dim[1]*16 - (_pos[1] % ((cell_dim[1]-grid_offset)*cell_size))],_cell_pos_temp];
}