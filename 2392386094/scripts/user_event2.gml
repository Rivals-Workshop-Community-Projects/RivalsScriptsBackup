//Window API Data & Draw by Archytas
//win_call for type
enum WIN {
	DEBUG,
	CHESSBOARD,
	MENU,
	FADEUP,
	TAKEBACK
}

enum GUI {
	SPRITE,
	TEXTBOX,
	DIALOGBOX,
	FADEBOX,
	BUTTON,
	GRID,
	VERT_LIST,
	HORIZ_LIST,
	EXIT
}

enum P {
    PAWN,
    ROOK,
    BISHOP,
    QUEEN,
    KNIGHT,
    KING,
    SIZE
}

if win_call == 0 {
	//if mouse_x_i != mouse_x || mouse_y_i != mouse_y cursor_visible = true;
	with obj_stage_main {
		//if cursor_visible do_cursor();
		draw_windows(); //Draw Objects
		//if cursor_visible draw_sprite_ext(cursor_sprite_i, cursor_index, cursor_x, cursor_y, 1, 1, 0, c_white, 1); //Draw cursor over everything
	}
	exit;
}

if win_call == 1 with obj_stage_main { //Load Data
	win_data = [];
	active_win = [];
	win_active = -1;
	var i = 0;
	win_add(i++,[WIN.DEBUG,
	new_sprite(sprite_get("gui_test"),0,0),
	new_textbox("GUI 2.0 TITLE",4,2,200,16,c_white,asset_get("fName")),
	new_dialogbox("HENLOOOOOOOOOOOOOOOOOOOOOOOOO",asset_get("mfx_back"),"_",0.4,4,16,200,12,c_white,asset_get("roundFont"))]);
	win_add(i++,[WIN.CHESSBOARD,
	new_sprite(board_sprite,0,0),
	new_textbox("a         b         c         d         e         f         g         h",32,-12,800,16,c_white,asset_get("fName")),
	new_textbox("a         b         c         d         e         f         g         h",32,255*2,800,16,c_white,asset_get("fName")),
	new_textbox("8 7 6 5 4 3 2 1",-8,32,16,64,c_white,asset_get("fName")),
	new_textbox("8 7 6 5 4 3 2 1",255*2+8,32,16,64,c_white,asset_get("fName")),
	new_grid()]);
	win_add(i++,[WIN.MENU,
	new_sprite(sprite_get("chess_submenu"),0,0),
	new_vert_list(0,0,sprite_get("select_submenu"),
	[
	new_textbox("Takeback",32,32,160,32,c_white,asset_get("fName")),
	new_textbox("Save/Load",32,64,160,32,c_white,asset_get("fName")),
	new_textbox("Surrender",32,96,160,32,c_white,asset_get("fName")),
	new_textbox("RAGE Quit",32,96+32,160,32,c_white,asset_get("fName"))
	]
	)]);
	win_add(i++,[WIN.FADEUP,
	new_textbox("Check!",32,32,160,32,c_white,asset_get("fName"))]);
	win_add(i++,[WIN.TAKEBACK,
	new_sprite(sprite_get("takeback_submenu"),0,0),
	new_textbox("Your opponent has requested a takeback!",16,26,200,16,c_white,asset_get("fName")),
	new_horiz_list(-16,0,sprite_get("select2_submenu"),
	[
	new_textbox("Sure!",32,80,160,32,c_white,asset_get("fName")),
	new_textbox("NO Fun",128,80,160,32,c_white,asset_get("fName")),
	]
	)]);
}


#define draw_windows()
	var _x = 0;
	var _y = 0;
	var _param = [];
	var _elements = [];
	var win_alpha = 1;
	var alive_time = 0;

	for (var _i = 0; _i < array_length_1d(active_win); _i++) {
		_x = active_win[_i][0][0]+active_win[_i][0][4];
		_y = active_win[_i][0][1]+active_win[_i][0][5];
		_elements = active_win[_i][1];
		alive_time = active_win[_i][0][3];
		active_win[@_i][@0][@3] += 1;
		win_alpha = 1;
		switch _elements[0] {
			case WIN.DEBUG:
				win_alpha = 1;//-(win_active != _i)*.5;
				break;
		}
		if alive_time == 1 {
			for (var _j = 1; _j < array_length_1d(_elements);_j++) {
				win_start(active_win[_i],_elements[_j],_x,_y,win_alpha);
			}
		}
		for (var _j = 1; _j < array_length_1d(_elements);_j++) {
			draw_custom(_i,_elements,_elements[_j],_x,_y,win_alpha);
		}
	}

	return true;

#define draw_custom(_win_num,_elements,_param,_x,_y,win_alpha)
	switch _param[0] {
		case GUI.SPRITE:
			draw_sprite_ext(_param[1],0,_x+_param[2],_y+_param[3],2,2,0,c_white,win_alpha);
			break;
		case GUI.TEXTBOX:
			draw_set_font(_param[7]);
			draw_text_ext_transformed_color(_x+_param[2],_y+_param[3],_param[1],_param[5],_param[4],1,1,0,_param[6],_param[6],_param[6],_param[6],win_alpha);
			break;
		case GUI.DIALOGBOX:
			_param[@11] += _param[4];
			draw_set_font(_param[10]);
			if floor(_param[11]/4) % 2 {
				draw_text_ext_transformed_color(_x+_param[5],_y+_param[6],string_copy(_param[1],0,floor(_param[11]))+_param[3],_param[8],_param[7],1,1,0,_param[9],_param[9],_param[9],_param[9],win_alpha);
				break;
			}
			draw_text_ext_transformed_color(_x+_param[5],_y+_param[6],string_copy(_param[1],0,floor(_param[11])),_param[8],_param[7],1,1,0,_param[9],_param[9],_param[9],_param[9],win_alpha);
			break;
		case GUI.VERT_LIST:
			if !_param[7] break;
			if win_active == _win_num _param[7].submenu_select = _param;
			for (var _a = 0; _a < array_length_1d(_param[1]);_a++) {
				draw_custom(_win_num,_param[5],_param[1][_a],_x,_y,win_alpha);
			}
			draw_sprite_ext(_param[4],0,_x+_param[1][_param[6]][2]+_param[2],_y+_param[1][_param[6]][3]+_param[3]-_param[7].sel_cooldown,2,2,0,get_player_hud_color(_param[7].player),win_alpha);
			break;
		case GUI.HORIZ_LIST:
			if !_param[7] break;
			if win_active == _win_num _param[7].submenu_select = _param;
			for (var _a = 0; _a < array_length_1d(_param[1]);_a++) {
				draw_custom(_win_num,_param[5],_param[1][_a],_x,_y,win_alpha);
			}
			draw_sprite_ext(_param[4],0,_x+_param[1][_param[6]][2]+_param[2]+_param[6]*4,_y+_param[1][_param[6]][3]+_param[3]-_param[7].sel_cooldown,2,2,0,get_player_hud_color(_param[7].player),win_alpha);
			//draw_sprite_ext(_param[4],0,_x+_param[1][_param[6]][2]+_param[2]+_param[6]*(10),_y+_param[1][_param[6]][3]+_param[3],2,2,0,c_white,win_alpha);
			break;
		case GUI.GRID:
			//Cursor Draws
			for (var _i = 0; _i < array_length_1d(cursor_list); _i++) {
				//print_debug(string([_x+cursor_list[_i].x*64,_y+board_s-cursor_list[_i].y*64]));
				win_alpha = 1 - .7*(turn_player != cursor_list[_i].player);
				draw_sprite_ext(cursor_list[_i].sprite_index,0,
				_x+cursor_list[_i].x*64,_y+board_s-cursor_list[_i].y*64-cursor_list[_i].move_cooldown-64,2,2,0,get_player_hud_color(cursor_list[_i].player),win_alpha);
			}
			
			//Prev Move Draw
			var _max = array_length_1d(move_list)-1;
			if _max > -1 draw_sprite_ext(moves_spr,0,
						_x+move_list[_max][3]*64,_y+board_s-move_list[_max][4]*64-64,2,2,0,get_player_hud_color(move_list[_max][1].player),0.5);
			
			//Moves Draws
			for (var _i = 0; _i < array_length_1d(piece_list); _i++) {
				if piece_list[_i].moves_visible {
					var _move_sh = piece_list[_i].moves;
					for (var _o = 0; _o < array_length_1d(_move_sh); _o++) {
						draw_sprite_ext(moves_spr,0,
						_x+_move_sh[_o][0]*64,_y+board_s-_move_sh[_o][1]*64-64,2,2,0,get_player_hud_color(piece_list[_i].player),0.5);
						//draw_debug_text(_x+_move_sh[_j][0]*64,_y+_move_sh[_j][1]*64,string(_move_sh[_j][2]));
					}
				}
			}
			
			//Checking Draws
			for (var _i = 0; _i < array_length_1d(checking_pieces); _i++) {
				//print_debug(string(checking_pieces));
				draw_sprite_ext(check_sprite,0,
				_x+checking_pieces[_i].x*64,_y+board_s-checking_pieces[_i].y*64-64,2,2,0,get_player_hud_color(checking_pieces[_i].player),0.5);
				//draw_debug_text(_x+_move_sh[_j][0]*64,_y+_move_sh[_j][1]*64,string(_move_sh[_j][2]));
			}
			
			//Piece Draws
			for (var _i = 0; _i < array_length_1d(piece_list); _i++) {
				draw_sprite_ext(piece_list[_i].sprite_index,0,
				_x+piece_list[_i].x*64,_y+board_s-piece_list[_i].y*64-64,2,2,0,get_player_hud_color(piece_list[_i].player),1);
				//draw_debug_text(_x+piece_list[_i].x*64+32,floor(_y+board_s-piece_list[_i].y*64-32),string(piece_list[_i].move_count));
			}
			
			//Movelist
			for (var _k = 0;_k < 16 && _max -_k > -1; _k ++) {
				var _ls = move_list[_max-_k];
				draw_set_font(asset_get("fName"));
				draw_text_ext_transformed_color(movelist_x,movelist_y-_k*16,
				string(_ls[0])+". "+p_type(_ls[1].type)+has_captured(_ls[2])+letter_num(_ls[5])+string(_ls[6]+1),
				16,200,1,1,0,get_player_hud_color(_ls[1].player),get_player_hud_color(_ls[1].player),get_player_hud_color(_ls[1].player),get_player_hud_color(_ls[1].player),1);
				//draw_debug_text(0,500-_k*16,string(move_list[_max -_k]));
			}
			break;
	}
	return true;

#define win_start(_win,_param,_x,_y,win_alpha)
	switch _param[0] {
		case GUI.VERT_LIST:
		case GUI.HORIZ_LIST:
			with oPlayer if player == _win[0][6] {
				_param[@7] = id;
				id.submenu_select = _param;
			}
			//submenu_select[5] = 1;
			break;
	}
	return true;
	#define new_textbox(_default_string,_x,_y,_w,_sep,_color,_font)
	return [GUI.TEXTBOX,_default_string,_x,_y,_w,_sep,_color,_font];
	#define new_fadebox(_default_string,_x,_y,_w,_sep,_color,_font,_vsp,_time)
	return [GUI.FADEBOX,_default_string,_x,_y,_w,_sep,_color,_font,_vsp,_time];
	#define new_button(_sprite,_x,_y)
	var _selected = false;
	return [GUI.BUTTON,_sprite,_x,_y,_selected];
	#define new_sprite(_sprite,_x,_y)
	return [GUI.SPRITE,_sprite,_x,_y];
	#define new_dialogbox(_default_string,_sound,_ticker,_ticker_time,_x,_y,_w,_sep,_color,_font)
	var _char_vis = 0;
	return [GUI.DIALOGBOX,_default_string,_sound,_ticker,_ticker_time,_x,_y,_w,_sep,_color,_font,_char_vis];
	#define new_grid()
	return [GUI.GRID]; //empty, custom coded
	#define new_vert_list(_x,_y,_select_sprite,_options)
	var _select = 0;
	var _player_id = 0;
	var _selected = 0;
	return [GUI.VERT_LIST,_options,_x,_y,_select_sprite,_selected,0,_player_id];
	#define new_horiz_list(_x,_y,_select_sprite,_options)
	var _select = 0;
	var _player_id = 0;
	var _selected = 0;
	return [GUI.HORIZ_LIST,_options,_x,_y,_select_sprite,_selected,0,_player_id];
	#define win_add(_win_id, _win_data)
	while _win_id >= array_length_1d(win_data) array_push(win_data, []);
	win_data[@_win_id] = _win_data;
	return true;
	#define end_window(_i)
	if debug print_debug("[WA] ENDING W: "+string(active_win[_i][1][0])+" AI: "+string(active_win[_i][0][2]));
	with action_manager array_push(end_action_index,other.active_win[_i][0][2]);
	active_win = array_cut(active_win,_i);
	return true;

#define do_cursor() //cursor stuff
	cursor_x_p = cursor_x;
	cursor_y_p = cursor_y;
	cursor_x = mouse_x - view_get_xview();
	cursor_y = mouse_y - view_get_yview();

	if mouse_button == 1 {
		if !mb_l_click { //on click
			//print_debug("MB1 CLICK!");
			var _x = 0;
			var _y = 0;
			var _param = [];
			for (var i = 0; i < array_length_1d(active_win);i++) {
				_x = active_win[i][0][0];
				_y = active_win[i][0][1];
				_param = active_win[i][1];
				switch _param[0] {
					case WIN.DEBUG:
						if _x < cursor_x && _y < cursor_y  && _x + tb_bar_x > cursor_x && _y+tb_bar_y > cursor_y  {
							win_drag = i;
							win_active = i;
						}
						break;
				}
			}
			if win_drag == -1 win_active = -1;
		}
		if win_drag != -1 {
			active_win[@win_drag][@0][@0] += cursor_x - cursor_x_p;
			active_win[@win_drag][@0][@1] += cursor_y - cursor_y_p;
		}
		//if !mb_l_click pointer_art = collision_rectangle_all(mouse_x,mouse_y,32,32,obj_stage_article);
		//for (var i = 0; i < array_length_1d(pointer_art);i++) pointer_art[i].mb_click = mouse_button;
		mb_l_click = true;
	} else {
		if mb_l_click { //on release
			win_drag = -1;
			//print_debug("MB1 UN CLICK!");
		}
		mb_l_click = false;
	}

#define collision_circle_all(_x,_y,_r,_obj)
	var _collis_array = [];
	with _obj if point_distance(x,y,_x,_y) < _r array_push(_collis_array,id);
	return _collis_array;

#define collision_rectangle_all(_x,_y,_l,_h,_obj)
	var _collis_array = [];
	with _obj if abs(x-_x) < _l && abs(y-_y) < _h array_push(_collis_array,id);
	return _collis_array;

#define array_cut(_array, _index)
	var _array_cut = array_create(array_length_1d(_array)-1);
	var j = 0;
	for (var i = 0; i < array_length_1d(_array); i++) {
		if i != _index {
			_array_cut[@j] = _array[i];
			j++;
		}
	}
	return _array_cut;

#define break_string(str, sep, w) //From Soup :)
	var final_str = "";
	var len = string_length(final_str);
	for (var i = 1; i <= string_length(str); i++) {
		var prev_char =  string_char_at(str,i-(i > 0));
		var char = string_char_at(str,i);
		if string_width_ext(final_str + char, sep, w) > w {
			final_str = string_delete(final_str,len,1);
			final_str += "-
	" + prev_char + char;
		} else {
			final_str += char;
		}
		len = string_length(final_str);
	}
	return final_str;

#define p_type(_num)
switch _num {
	case P.PAWN:
		return "";
	case P.ROOK:
		return "R";
	case P.BISHOP:
		return "B";
	case P.QUEEN:
		return "Q";
	case P.KNIGHT:
		return "N";
	case P.KING:
		return "K";
}
#define letter_num(_num)
switch _num {
	case 0:
		return "a";
	case 1:
		return "b";
	case 2:
		return "c";
	case 3:
		return "d";
	case 4:
		return "e";
	case 5:
		return "f";
	case 6:
		return "g";
	case 7:
		return "h";
}
#define has_captured(_cap)
return _cap == -1 ? "" : "x"; 