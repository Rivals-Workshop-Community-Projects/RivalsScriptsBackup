//Update
enum P {
    PAWN,
    ROOK,
    BISHOP,
    QUEEN,
    KNIGHT,
    KING,
    SIZE
}
//print_debug(string([mouse_x,mouse_y]));
if get_gameplay_time() == 2 {
	print_debug(string(get_match_setting(SET_TIMER)));
	game_going = true;
	new_board();
	sound_play(asset_get("sfx_ice_dspecial_form"));
	with oPlayer if real(url) < 100 portrait_index = real(url)-1 % sprite_get_number(portrait);
	
}

if get_gameplay_time() < game_start_time {
	with oPlayer {
		if player == 1 {
	    	portrait_pos[0] = ease_sineIn(floor(portrait_pos[0]),-100,get_gameplay_time(),other.game_start_time);
		} else {
		    portrait_pos[0] = ease_sineIn(floor(portrait_pos[0]),1060,get_gameplay_time(),other.game_start_time);
		}
	}
	//board_y = ease_linear(floor(board_y),board_y_final,1,4);
	active_win[@0][@0][@1] = ease_linear(floor(active_win[0][0][1]),board_y_final,1,4);
}

if get_gameplay_time() == game_start_time {
	turn_total = 0;
    for(var _i = 0;_i < array_length_1d(piece_list);_i++) get_pos_moves(piece_list[_i]); //Get all moves at the start
    game_going = true;
    game_over = false;
    sound_play(start_sound);
}

if game_over {
	//with oPlayer if id == other.winner create_deathbox(x,y,2,2,player,false,0,666,2);
	//end_game(winner);
	//game_going = false;
	end_match(winner.player);
}

//Select
for (var _i = 0; _i < array_length_1d(cursor_list); _i++) {
    switch cursor_list[_i].player_id.select_state {
    	case 0:
    		active_win[@cursor_list[_i].player+2][@0][@1] = lerp(active_win[cursor_list[_i].player+2][0][1],tb_menu_hide,0.1);
    		active_win[@cursor_list[_i].player][@0][@0] = lerp(active_win[cursor_list[_i].player][0][0],sub_menu_hide,0.1);
    		//win_active = -1;
    		move_cursor(cursor_list[_i]);
    		break;
    	case 1:
    		active_win[@cursor_list[_i].player+2][@0][@1] = lerp(active_win[cursor_list[_i].player+2][0][1],tb_menu_hide,0.1);
    		active_win[@cursor_list[_i].player][@0][@0] = lerp(active_win[cursor_list[_i].player][0][0],sub_menu_active,0.1);
    		win_active = cursor_list[_i].player;
    		//cursor_list[_i].player_id.submenu_select[8] = 1;
    		select_submenu(cursor_list[_i].player_id);
    		break;
    	case 2:
    		active_win[@cursor_list[_i].player+2][@0][@1] = lerp(active_win[cursor_list[_i].player+2][0][1],tb_menu_active,0.1);
    		active_win[@cursor_list[_i].player][@0][@0] = lerp(active_win[cursor_list[_i].player][0][0],sub_menu_hide,0.1);
    		win_active = cursor_list[_i].player+2;
    		select_submenu(cursor_list[_i].player_id);
    		break;
    	case -1: //Nada
    		break;
	}
}

if shaking {
	//print_debug("Shakeing "+string(shake_time));
	if shake_time % 2 == 0 {
		shaking_window[@0][@4] = random_func_2(0,intensity_max*2,true)-intensity_max;
		shaking_window[@0][@5] = random_func_2(1,intensity_max*2,true)-intensity_max;
	}
	shake_time--;
	if shake_time == 0 {
		shaking_window[@0][@4] = 0;
		shaking_window[@0][@5] = 0;
		shaking = false;
	}
}

if game_going with oPlayer {
	if other.turn_player == player {
		chess_timer--;
		if chess_timer == 0 end_match((player != 2)+1);
	}
	char_height = 600;
	gravity_speed = 0;
	free = 0;
	//y = lerp(y,other.pos_to[player-1],.5);
	//set_state(PS_IDLE);
	
	if image_index == 0 && state_timer > idle_anim_speed*60+15 {
		var _state_timer = state_timer;
		set_state(PS_SPAWN); //After 1 idle loop
		state_timer = -_state_timer;
	}
	switch chess_state {
		case PS_SPAWN: //SPAWN
			break;
		case PS_HITSTUN_LAND:
			hitpause = true;
			hitstop = 40;
			set_state(PS_HITSTUN_LAND);
			//sprite_index = sprite_get("ground_hurt");
			if chess_state_timer == 0 {
				set_state(PS_SPAWN);
				hitpause = false;
				hitstop = 0;
				chess_state = PS_SPAWN;
			}
			chess_state_timer--;
			break;
	}
	 //set_state(PS_SPAWN); //No player movements
}
#define new_board()
piece_list = [];
board_array = [];
for(var _i = 0; _i < 8; _i++) {
    array_push(board_array,array_create(8,noone));
}
//set_up_board("10....0140....0420....0230....0350....0520....0240....0410....0111....2211....2211....2211....2211....2211....2211....2211....22");

add_piece(0,1,1,P.PAWN);
add_piece(1,1,1,P.PAWN);
add_piece(2,1,1,P.PAWN);
add_piece(3,1,1,P.PAWN);
add_piece(4,1,1,P.PAWN);
add_piece(5,1,1,P.PAWN);
add_piece(6,1,1,P.PAWN);
add_piece(7,1,1,P.PAWN);

add_piece(0,6,2,P.PAWN);
add_piece(1,6,2,P.PAWN);
add_piece(2,6,2,P.PAWN);
add_piece(3,6,2,P.PAWN);
add_piece(4,6,2,P.PAWN);
add_piece(5,6,2,P.PAWN);
add_piece(6,6,2,P.PAWN);
add_piece(7,6,2,P.PAWN);

add_piece(0,0,1,P.ROOK);
add_piece(1,0,1,P.KNIGHT);
add_piece(2,0,1,P.BISHOP);
add_piece(3,0,1,P.QUEEN);
add_piece(4,0,1,P.KING);
add_piece(5,0,1,P.BISHOP);
add_piece(6,0,1,P.KNIGHT);
add_piece(7,0,1,P.ROOK);

add_piece(0,7,2,P.ROOK);
add_piece(1,7,2,P.KNIGHT);
add_piece(2,7,2,P.BISHOP);
add_piece(3,7,2,P.QUEEN);
add_piece(4,7,2,P.KING);
add_piece(5,7,2,P.BISHOP);
add_piece(6,7,2,P.KNIGHT);
add_piece(7,7,2,P.ROOK);

return true;
#define select_submenu(_id)
var _winner = 0;
with _id {
	if sel_cooldown == 0 {
		//print_debug(string(select_state));
		switch select_state {
			case 1:
				if !array_length_1d(submenu_select) break;
		        submenu_select[6] += down_down-up_down;
		        if special_pressed select_state = 0;
		        submenu_select[6] = clamp(submenu_select[6],0,array_length_1d(submenu_select[1])-1);
		        if attack_pressed {
		        	submenu_select[5] = 1;
		        	switch submenu_select[6] {
		        		case 0: //Takeback
		        			select_state = -1;
		        			with oPlayer if id != _id select_state = 2;
		        			break;
		        		case 1: //Save/Load
		        			
		        			other.chess_board = get_board_state();
		        			other.chess_board = get_string("Copy the board here, or paste one!", other.chess_board);
		        			clear_button_buffer(PC_ATTACK_PRESSED);
		        			if other.chess_board != "" set_up_board(other.chess_board);
		        			select_state = 0;
		        			break;
		        		case 2: //Surrender
		        			with oPlayer if id != _id _winner = id;
		        			other.game_over = true;
		        			break;
		        		case 3: //RAGE Quit
		        			if rage < 4 {
		        				sel_cooldown = sel_cooldown_max;
		        				clear_button_buffer(PC_ATTACK_PRESSED);
		        				rage++;
		        				sound_play(other.capture_sound,false,false,rage,1-.1*rage);
		        			} else set_attack(-1);
		        			break;
		        		
		        	}
				}
				if (up_down || down_down || attack_pressed || jump_down) && submenu_select_old != submenu_select[6] {
					//print_debug(string(submenu_select[6]));
		        	sel_cooldown = sel_cooldown_max;
		        	if other.local_player == id || other.local_player == noone sound_play(other.move_sound,false,false,.5);
		        	//sound_play(other.move_sound);
		        	submenu_select_old = submenu_select[6];
		        }
			break;
			case 2:
				if !array_length_1d(submenu_select) break;
				submenu_select[6] += right_down-left_down;
		        submenu_select[6] = clamp(submenu_select[6],0,array_length_1d(submenu_select[1])-1);
		        if special_pressed { //Auto-decline
		        	sound_play(other.cancel_sound);
		        	with oPlayer select_state = 0;
		        }
		        if attack_pressed {
		        	submenu_select[5] = 1;
		        	switch submenu_select[6] {
		        		case 0: //Sure
		        			sound_play(other.promote_sound);
		        			rollback_move(1);
		        		case 1: //No
		        			sound_play(other.cancel_sound);
		        			with oPlayer select_state = 0;
		        			break;
		        	}
				}
		        if (left_down || right_down || attack_down || jump_down) && submenu_select_old != submenu_select[6] {
		        	sel_cooldown = sel_cooldown_max;
		        	if other.local_player != id || other.local_player == noone  sound_play(other.move_sound,false,false,.5);
		        	submenu_select_old = submenu_select[6];
		        }
				break;
		}
	} else sel_cooldown--;
	
}
if _winner != 0 winner = _winner;
return true;
#define get_board_state()
with obj_stage_main {
	var _bs_string = "";
	var _bs_player = "";
	for(var _i = 0; _i < array_length_1d(board_array);_i++) {
		for(var _j = 0; _j < array_length_1d(board_array[_i]);_j++) {
			//print_debug(string([_i,_j]));
			if board_array[_i][_j] == noone {
				_bs_string += ".";
				_bs_player += ".";
			}
			else {
				_bs_string += string(board_array[_i][_j].type);//+string(board_array[_i][_j].player);
				_bs_player += string(board_array[_i][_j].player);
			}
		}
	}
}
return _bs_string + _bs_player;
#define set_up_board(_bs_string)
with obj_stage_main {
	//print_debug(_bs_string);
	piece_list = [];
	board_array = [];
	for(var _i = 0; _i < 8; _i++) {
	    array_push(board_array,array_create(8,noone));
	}
	for(var _i = 0; _i < array_length_1d(board_array);_i++) {
		for(var _j = 0; _j < array_length_1d(board_array[_i]);_j++) {
			//print_debug(string(string_char_at(_bs_string,_i*16+_j))+string_char_at(_bs_string,_i*16+_j+1));
			if string_char_at(_bs_string,_i*8+_j+1) != "." && string_char_at(_bs_string,_i*8+_j+1+8*8) != "." {
				add_piece(_i,_j,real(string_char_at(_bs_string,_i*8+_j+1+8*8)),real(string_char_at(_bs_string,_i*8+_j+1)));
			}
		}
	}
	for(var _i = 0;_i < array_length_1d(piece_list);_i++) get_pos_moves(piece_list[_i]); //Get all moves at the start
    //game_going = true;
    game_over = false;
    sound_play(start_sound);
	
}
return true;
#define move_cursor(_c_obj)
if _c_obj.move_cooldown > 0 {
    _c_obj.move_cooldown--;
    return false;
}
with oPlayer {
    if _c_obj.player == player {
        if up_down _c_obj.y++;
        if down_down _c_obj.y--;
        if left_down _c_obj.x--;
        if right_down _c_obj.x++;
        if up_down || down_down || left_down || right_down || (attack_down && !attack_down_prev) || shield_down || jump_down {
            _c_obj.y = clamp(_c_obj.y,0,7);
            _c_obj.x = clamp(_c_obj.x,0,7);
            _c_obj.move_cooldown = _c_obj.move_cooldown_max;
            sound_play(other.move_sound,false,false,.5);
            if jump_down && attack_down rollback_move(1);
            if shield_down {
            	if other.local_player != id || other.local_player == noone sound_play(other.menu_sound);
            	select_state = 1;
            	//print_debug(get_string("Henlo? ", "Hi..."));
            	
            	}
        }
        if other.turn_player == player {
            if special_down {
            	_c_obj.move_cooldown = _c_obj.move_cooldown_max;
            	sound_play(other.cancel_sound);
            	if _c_obj.select_piece != noone {
                _c_obj.select_piece.moves_visible = false;
                _c_obj.selecting = false;
            	}
            }
            if !_c_obj.selecting && (attack_down && !attack_down_prev) && other.board_array[_c_obj.x][_c_obj.y] != noone && other.board_array[_c_obj.x][_c_obj.y].player == player {
                sound_play(other.select_sound);
                if array_length_1d(other.board_array[_c_obj.x][_c_obj.y].moves) != 0 {
                    other.board_array[_c_obj.x][_c_obj.y].moves_visible = true;
                    _c_obj.selecting = true;
                    _c_obj.select_piece = other.board_array[_c_obj.x][_c_obj.y];
                }
            }
            if _c_obj.selecting && (attack_down && !attack_down_prev) {
                var _short = _c_obj.select_piece.moves;
                for(var _i = 0; _i < array_length_1d(_short); _i++) {
                    if _short[_i][0] == _c_obj.x && _short[_i][1] == _c_obj.y with other {
                        do_move(_c_obj.select_piece,_i);
                        _c_obj.select_piece.moves_visible = false;
                        _c_obj.selecting = false;
                        next_turn();
                    }
                }
            }
            attack_down_prev = attack_down;
        }
    }
}

return true;

#define get_pos_moves(_p_obj)
with obj_stage_main {
    //if array_length_1d(_p_obj.moves) == 0 { //If not already calculated
    var _moves = [];
    _p_obj.cover = [];
    switch _p_obj.type {
        case P.QUEEN:
        case P.BISHOP:
        	//print_debug("QB Break");
            var _i = _p_obj.x;
            var _j = _p_obj.y;
            _i++;
            _j++;
            //Left Diagonal
            while _i < 8 && _j < 8 {
                if board_array[_i][_j] != noone {
                	array_push(_p_obj.cover,board_array[_i][_j]);
                    if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _i++;
                _j++;
            }
            _i = _p_obj.x;
            _j = _p_obj.y;
            _i--;
            _j--;
            while  _i > -1 && _j > -1 {
                if board_array[_i][_j] != noone {
                	array_push(_p_obj.cover,board_array[_i][_j]);
                    if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _i--;
                _j--;
            }
            //Right Diagonal
            _i = _p_obj.x;
            _j = _p_obj.y;
            _i--;
            _j++;
            while _i > -1  && _j < 8 {
                if board_array[_i][_j] != noone {
                	array_push(_p_obj.cover,board_array[_i][_j]);
                    if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _i--;
                _j++;
            }
            _i = _p_obj.x;
            _j = _p_obj.y;
            _i++;
            _j--;
            while _i < 8 && _j > -1 {
                if board_array[_i][_j] != noone {
                	array_push(_p_obj.cover,board_array[_i][_j]);
                    if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _i++;
                _j--;
            }
            if _p_obj.type == P.BISHOP break;
        case P.ROOK:
        	//print_debug("RB Break");
            var _i = _p_obj.x;
            var _j = _p_obj.y;
            //Horizontal
            _i++;
            while _i < 8 {
                if board_array[_i][_j] != noone {
                	array_push(_p_obj.cover,board_array[_i][_j]);
                    if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _i++;
            }
            _i = _p_obj.x;
            _j = _p_obj.y;
            _i--;
            while _i > -1 {
                 if board_array[_i][_j] != noone {
                 	array_push(_p_obj.cover,board_array[_i][_j]);
                    if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _i--;
            }
            //Vertical
            _i = _p_obj.x;
            _j = _p_obj.y;
            _j++;
            while _j < 8 {
                if board_array[_i][_j] != noone {
                	array_push(_p_obj.cover,board_array[_i][_j]);
                    if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _j++;
            }
            _i = _p_obj.x;
            _j = _p_obj.y;
            _j--;
            while _j > -1 {
                 if board_array[_i][_j] != noone {
                 	array_push(_p_obj.cover,board_array[_i][_j]);
                    if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _j--;
            }
            break;
        case P.PAWN:
            if  _p_obj.player == 1 { //Rare case of move possibilities differing per player
                //Pawn Normal Moves
                if _p_obj.y < 7 && board_array[_p_obj.x][_p_obj.y+1] == noone array_push(_moves,[_p_obj.x,_p_obj.y+1,0]);
                if _p_obj.y == 1 && board_array[_p_obj.x][_p_obj.y+2] == noone array_push(_moves,[_p_obj.x,_p_obj.y+2,0]);
                //Pawn Capture
                if _p_obj.y < 7 && _p_obj.x < 7 && board_array[_p_obj.x+1][_p_obj.y+1] != noone {
                	array_push(_p_obj.cover,board_array[_p_obj.x+1][_p_obj.y+1]);
                	if board_array[_p_obj.x+1][_p_obj.y+1].player != _p_obj.player array_push(_moves,[_p_obj.x+1,_p_obj.y+1,1]);
                }
                if _p_obj.y < 7 && _p_obj.x > 0 && board_array[_p_obj.x-1][_p_obj.y+1] != noone {
                	array_push(_p_obj.cover,board_array[_p_obj.x-1][_p_obj.y+1]);
                	if board_array[_p_obj.x-1][_p_obj.y+1].player != _p_obj.player array_push(_moves,[_p_obj.x-1,_p_obj.y+1,1]);
                }
                /*if _p_obj.x < 7 && board_array[_p_obj.x+1][_p_obj.y] != noone && board_array[_p_obj.x+1][_p_obj.y].player != _p_obj.player && board_array[_p_obj.x+1][_p_obj.y].type == P.PAWN {
                	print_debug(string(board_array[_p_obj.x+1][_p_obj.y].move_turn));
                	print_debug(string(turn_count));
                }*/
                //En Passant
                if _p_obj.x < 7 && board_array[_p_obj.x+1][_p_obj.y] != noone && board_array[_p_obj.x+1][_p_obj.y].player != _p_obj.player && board_array[_p_obj.x+1][_p_obj.y].type == P.PAWN && board_array[_p_obj.x+1][_p_obj.y].move_count == 1 && board_array[_p_obj.x+1][_p_obj.y].move_turn == turn_total && board_array[_p_obj.x+1][_p_obj.y].enpassant == 1 { 
                    array_push(_moves,[_p_obj.x+1,_p_obj.y+1,1]);
                }
                if _p_obj.x > 0 && board_array[_p_obj.x-1][_p_obj.y] != noone && board_array[_p_obj.x-1][_p_obj.y].player != _p_obj.player && board_array[_p_obj.x-1][_p_obj.y].type == P.PAWN && board_array[_p_obj.x-1][_p_obj.y].move_count == 1 && board_array[_p_obj.x-1][_p_obj.y].move_turn == turn_total && board_array[_p_obj.x-1][_p_obj.y].enpassant == 1 { 
                    array_push(_moves,[_p_obj.x-1,_p_obj.y+1,1]);
                }
                
            }
            if  _p_obj.player == 2 { 
                if _p_obj.y > 0 && board_array[_p_obj.x][_p_obj.y-1] == noone array_push(_moves,[_p_obj.x,_p_obj.y-1,0]);
                if _p_obj.y == 6 && board_array[_p_obj.x][_p_obj.y-2] == noone array_push(_moves,[_p_obj.x,_p_obj.y-2,0]);
                //Pawn Capture
                if _p_obj.y > 0 && _p_obj.x < 7 && board_array[_p_obj.x+1][_p_obj.y-1] != noone {
                	array_push(_p_obj.cover,board_array[_p_obj.x+1][_p_obj.y-1]);
                	if board_array[_p_obj.x+1][_p_obj.y-1].player != _p_obj.player array_push(_moves,[_p_obj.x+1,_p_obj.y-1,1]);
                }
                if _p_obj.y > 0 && _p_obj.x > 0 && board_array[_p_obj.x-1][_p_obj.y-1] != noone {
                	array_push(_p_obj.cover,board_array[_p_obj.x-1][_p_obj.y+1]);
                	if board_array[_p_obj.x-1][_p_obj.y-1].player != _p_obj.player array_push(_moves,[_p_obj.x-1,_p_obj.y-1,1]);
                }
                //En Passant
                if _p_obj.x < 7 && board_array[_p_obj.x+1][_p_obj.y] != noone && board_array[_p_obj.x+1][_p_obj.y].player != _p_obj.player && board_array[_p_obj.x+1][_p_obj.y].type == P.PAWN && board_array[_p_obj.x+1][_p_obj.y].move_count == 1 && board_array[_p_obj.x+1][_p_obj.y].move_turn == turn_total && board_array[_p_obj.x+1][_p_obj.y].enpassant == 1 { 
                    array_push(_moves,[_p_obj.x+1,_p_obj.y-1,1]);
                }
                if _p_obj.x > 0 && board_array[_p_obj.x-1][_p_obj.y] != noone && board_array[_p_obj.x-1][_p_obj.y].player != _p_obj.player && board_array[_p_obj.x-1][_p_obj.y].type == P.PAWN && board_array[_p_obj.x-1][_p_obj.y].move_count == 1 && board_array[_p_obj.x-1][_p_obj.y].move_turn == turn_total && board_array[_p_obj.x-1][_p_obj.y].enpassant == 1 { 
                    array_push(_moves,[_p_obj.x-1,_p_obj.y-1,1]);
                }
            }
            break;
        case P.KNIGHT:
            for (var _i = 0; _i < array_length_1d(knight_coords);_i++) {
                var _x = _p_obj.x + knight_coords[_i][0];
                var _y = _p_obj.y + knight_coords[_i][1];
                if _x == clamp(_x,0,7) && _y == clamp(_y,0,7) {
                    if board_array[_x][_y] != noone {
                    	array_push(_p_obj.cover,board_array[_x,_y]);
                    	if board_array[_x][_y].player != _p_obj.player array_push(_moves,[_x,_y,1]);
                    } else array_push(_moves,[_x,_y,0]);
                } 
            }
            break;
        case P.KING:
            for (var _i = clamp(_p_obj.x-1,0,7);_i <= clamp(_p_obj.x+1,0,7);_i++) {
                for (var _j = clamp(_p_obj.y-1,0,7);_j <= clamp(_p_obj.y+1,0,7);_j++) {
                    if board_array[_i][_j] != noone {
                    	array_push(_p_obj.cover,board_array[_i][_j]);
                        if board_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                     } else array_push(_moves,[_i,_j,0]);
                }
            }
            //Castling Rules
            if _p_obj.is_check || _p_obj.move_count > 0 break;
            
            var _piece_count = 0;
            for (var _i = _p_obj.x+1;_i < 7;_i++) if board_array[_i][_p_obj.y] != noone || !check_space(_i, _p_obj.y, _p_obj.player) _piece_count++;
            if _piece_count == 0 && board_array[7][_p_obj.y] != noone && board_array[7][_p_obj.y].move_count == 0 array_push(_moves,[6,_p_obj.y,2]);
            _piece_count = 0;
            for (var _i = _p_obj.x-1;_i > 0;_i--) if board_array[_i][_p_obj.y] != noone || !check_space(_i, _p_obj.y, _p_obj.player) _piece_count++;
            if _piece_count == 0 && board_array[0][_p_obj.y] != noone && board_array[0][_p_obj.y].move_count == 0 array_push(_moves,[2,_p_obj.y,2]);
            break;
    }
    _p_obj.moves = _moves;
    //print_debug("GETTING MOVES: "+string(_p_obj.type)+" : "+string(_p_obj.moves));
    return _moves;
}

#define do_move(_p_obj,_move_int)
	has_captured = -1;
	var _x1 = _p_obj.x;
	var _y1 = _p_obj.y;
	var _x2 = _p_obj.moves[_move_int][0];
	var _y2 = _p_obj.moves[_move_int][1];
	var _move_type = _p_obj.moves[_move_int][2];

	if _p_obj.type == P.PAWN if abs(_y2-_y1) == 2 _p_obj.enpassant = 1;

	if board_array[_x2][_y2] != noone && board_array[_x2][_y2].player != _p_obj.player take_piece(_p_obj,board_array[_x2][_y2]);
	board_array[@_x2][@_y2] = _p_obj;
	board_array[@_p_obj.x][@_p_obj.y] = noone;
	_p_obj.x = _x2;
	_p_obj.y = _y2;
	get_pos_moves(_p_obj); //reset calculated moves
	_p_obj.move_count++;
	_p_obj.move_turn = turn_total;
	switch _p_obj.type { //Post-Move
		case P.PAWN:
			if _p_obj.player == 1 {
				if _p_obj.y == 7 promote_piece(_p_obj);
				if _p_obj.y > 0 && board_array[_p_obj.x][_p_obj.y-1] != noone && board_array[_p_obj.x][_p_obj.y-1].type == P.PAWN && board_array[_p_obj.x][_p_obj.y-1].player != _p_obj.player && board_array[_p_obj.x][_p_obj.y-1].move_count == 1 && board_array[_p_obj.x][_p_obj.y-1].move_turn == turn_total-1 && board_array[_p_obj.x][_p_obj.y-1].enpassant == 1 {
					take_piece(_p_obj,board_array[_p_obj.x][_p_obj.y-1]);
				}
			}
			if _p_obj.player == 2 {
				if _p_obj.y == 0 promote_piece(_p_obj);
				if _p_obj.y < 7 && board_array[_p_obj.x][_p_obj.y+1] != noone && board_array[_p_obj.x][_p_obj.y+1].type == P.PAWN && board_array[_p_obj.x][_p_obj.y+1].player != _p_obj.player && board_array[_p_obj.x][_p_obj.y+1].move_count == 1 && board_array[_p_obj.x][_p_obj.y+1].move_turn == turn_total-1 && board_array[_p_obj.x][_p_obj.y+1].enpassant == 1 {
					take_piece(_p_obj,board_array[_p_obj.x][_p_obj.y+1]);
				}
			}
			break;
		case P.KING:
			if _move_type == 2 { //Castling
				for(var _i = 0; _i < array_length_1d(piece_list);_i++) {
					if piece_list[_i].player == _p_obj.player && piece_list[_i].type == P.ROOK {
						if _x2 == 2 && sign(_p_obj.x-piece_list[_i].x) == 1 {
							array_push(piece_list[_i].moves,[3,piece_list[_i].y,2]);
							do_move(piece_list[_i],array_length_1d(piece_list[_i].moves)-1);
							//has_captured = piece_list[_i];
							break;
						}
						if _x2 == 6 && sign(_p_obj.x-piece_list[_i].x) == -1 {
							array_push(piece_list[_i].moves,[5,piece_list[_i].y,2]);
							do_move(piece_list[_i],array_length_1d(piece_list[_i].moves)-1);
							//has_captured = piece_list[_i];
							break;
						}
					}
				}
			}
			break;
	}
	//print_debug("MOVED TO: "+string([_p_obj.x,_p_obj.y]));
	sound_play(move_sound);
	array_push(move_list,[turn_count,_p_obj,has_captured,_x1,_y1,_x2,_y2,_move_type,_p_obj.move_count,_p_obj.move_turn]); //Chess Notation Movelist
	return true;

#define in_check(_p_obj)
	var was_in_check = _p_obj.is_check;
	_p_obj.is_check = false;
	checking_pieces = [];
	if _p_obj.player == 1 move_count = array_create(player_count+1);
	var _minus_i = 0;
	for(var _j = 0; _j < array_length_1d(piece_list);_j++) {
			move_count[@piece_list[_j].player] += array_length_1d(piece_list[_j].moves)*(_p_obj.player == 1);
	}
	for(var _i = 0; _i < array_length_1d(_p_obj.moves);_i++) {
		for(var _j = 0; _j < array_length_1d(piece_list);_j++) {
			//move_count[@piece_list[_j].player] += array_length_1d(piece_list[_j].moves)*(_p_obj.player == 1);
			if _i >= 0 && _p_obj.moves[_i][0] == piece_list[_j].x && _p_obj.moves[_i][1] == piece_list[_j].y for(var _k = 0; _k < array_length_1d(piece_list[_j].cover);_k++) if piece_list[_j].cover[_k].player != _p_obj.player {
				//array_push(checking_pieces,piece_list[_j]);
				_minus_i--;
			}
			if _i >= 0 && _minus_i > -1 && piece_list[_j].player != _p_obj.player {
				if piece_list[_j].type == P.PAWN { //Special-case galore
					if piece_list[_j].player == 1 {
						if piece_list[_j].y < 7 && piece_list[_j].x < 7 
						&& board_array[piece_list[_j].x+1][piece_list[_j].y+1] == noone 
						&& piece_list[_j].x+1 == _p_obj.moves[_i][0]
						&& piece_list[_j].y+1 == _p_obj.moves[_i][1] {
							//array_push(checking_pieces,piece_list[_j]);
							_minus_i--;
						}
						if piece_list[_j].y < 7 && piece_list[_j].x > 0 
						&& board_array[piece_list[_j].x-1][piece_list[_j].y+1] == noone 
						&& piece_list[_j].x-1 == _p_obj.moves[_i][0]
						&& piece_list[_j].y+1 == _p_obj.moves[_i][1] {
							//array_push(checking_pieces,piece_list[_j]);
							_minus_i--;
						}
					}
					if piece_list[_j].player == 2 {
						if piece_list[_j].y > 0 && piece_list[_j].x < 7 
						&& board_array[piece_list[_j].x+1][piece_list[_j].y-1] == noone 
						&& piece_list[_j].x+1 == _p_obj.moves[_i][0]
						&& piece_list[_j].y-1 == _p_obj.moves[_i][1] {
							//array_push(checking_pieces,piece_list[_j]);
							_minus_i--;
						}
						if piece_list[_j].y > 0 && piece_list[_j].x > 0 
						&& board_array[piece_list[_j].x-1][piece_list[_j].y-1] == noone 
						&& piece_list[_j].x-1 == _p_obj.moves[_i][0]
						&& piece_list[_j].y-1 == _p_obj.moves[_i][1] {
							//array_push(checking_pieces,piece_list[_j]);
							_minus_i--;
						}
					}
				} else {
					for(var _k = 0; _k < array_length_1d(piece_list[_j].moves);_k++) {
						if piece_list[_j].moves[_k][0] == _p_obj.moves[_i][0] 
						&& piece_list[_j].moves[_k][1] == _p_obj.moves[_i][1] {
							/*if piece_list[_j].moves[_k][0] == _p_obj.x
							&& piece_list[_j].moves[_k][1] == _p_obj.y array_push(checking_pieces,piece_list[_j]);*/
							_minus_i--;
						}
					}
				}
			}
		}
		if _minus_i != 0 {
			_p_obj.moves = array_cut(_p_obj.moves,_i); //Remove Impossible Moves
			_i += 1;
			_minus_i = 0;
		}
	}

	for(var _j = 0; _j < array_length_1d(piece_list);_j++) {
			if piece_list[_j].player != _p_obj.player for(var _k = 0; _k < array_length_1d(piece_list[_j].moves);_k++) {
				if _p_obj.x == piece_list[_j].moves[_k][0] && _p_obj.y == piece_list[_j].moves[_k][1] {
					array_push(checking_pieces,piece_list[_j]);
					if turn_player != _p_obj.player {
						print_debug("PLAYER "+string(_p_obj.player)+ " WOULD BE IN CHECK!");
						sound_play(check_sound);
						rollback_move(1);
						break;
					}
					print_debug("PLAYER "+string(_p_obj.player)+ " IS IN CHECK!");
					sound_play(check_sound);
					_p_obj.is_check = true;
					with oPlayer if player == _p_obj.player is_check = true;
				}
			}
	}

	if was_in_check && _p_obj.is_check rollback_move(1);

	/*if _p_obj.is_check && array_length_1d(_p_obj.moves) == 0 { //Checkmate!
		winner = !(_p_obj.player-1)+1; 
		game_over = true;
		return false;
	}*/
	//print_debug(string(_p_obj.player)+string(move_count));
	if move_count[_p_obj.player] == 0 { //Player has no valid moves! && move_count gets reset to zero on second pass
		game_over = true;
	}

	return true;

#define check_space(_x,_y,_player) //Check if a space has a move attacking it from a player's perspective
	for(var _j = 0; _j < array_length_1d(piece_list);_j++) {
		if piece_list[_j].player != _player for(var _k = 0; _k < array_length_1d(piece_list[_j].moves);_k++) {
			if _x == piece_list[_j].moves[_k][0] && _y == piece_list[_j].moves[_k][1] {
				return false;
			}
		}
	}
	return true;

#define promote_piece(_p_obj)
	sound_play(promote_sound);
	_p_obj.type = P.QUEEN;
	_p_obj.sprite_index = piece_sprites[_p_obj.type];
	return true;

#define take_piece(_p_obj,_cap_obj)
	//print_debug("PIECE TAKEN!");
	sound_play(capture_sound);
	shake_elements(active_win[0],2,6);
	array_push(_p_obj.captures,_cap_obj.type);
	with oPlayer if player != _p_obj.player {
		chess_state_timer = chess_state_timer_max;
		chess_state = PS_HITSTUN_LAND;
	}
	if _cap_obj.type == check_piece {
		winner = _p_obj.player;
		game_over = true;
	}
	//spawn_hit_fx(board_x_final+_p_obj.x*64,board_y_final+_p_obj.y*64,take_sfx);
	//with hit_fx_obj depth = -100;
	piece_list = array_cut(piece_list,array_find_index(piece_list,_cap_obj));
	has_captured = _cap_obj;
	return true;

#define add_piece(_x,_y,_player,_type)
	with obj_stage_main {
		var _p_obj = {
			x: _x,
			y: _y,
			sprite_index: piece_sprites[_type],
			player: _player,
			type: _type,
			moves: [],
			cover: [],
			move_count: 0,
			move_turn: 0,
			enpassant: 0,
			moves_visible: false,
			captures: [],
			is_check: false
		};
		board_array[@_x][@_y] = _p_obj;
		array_push(piece_list,_p_obj);
		//get_pos_moves(_p_obj);
		//if debug print_debug("ADDED PIECE: "+string(_p_obj.type));
	}
	return true;

#define rollback_move(_count)
	print_debug("Rolling back "+string(_count)+" moves..");

	with obj_stage_main {
		turn_total -= _count;
		var _max = array_length_1d(move_list)-1;
		
		for(var _i = 0;_i <= _count-1 && _max > -1;_i++) {
			
			move_list[_max][1].x = move_list[_max][3];
			move_list[_max][1].y = move_list[_max][4];
			move_list[_max][1].move_count = move_list[_max][8]-1;
			if move_list[_max][2] != -1 {
				move_list[_max][2].x = move_list[_max][5];
				move_list[_max][2].y = move_list[_max][6];
				array_push(piece_list,move_list[_max][2]);
			}
			if move_list[_max][7] == 2 _count++; //Undo Rook move
			else turn_player = move_list[_max][1].player;
			move_list = array_cut(move_list,_max);
			_max = array_length_1d(move_list)-1;
		}
		//Reset Board Array
		board_array = [];
		for(var _i = 0; _i < 9; _i++) {
			array_push(board_array,array_create(8,noone));
		}
		for(var _i = 0;_i < array_length_1d(piece_list);_i++) {
			board_array[@piece_list[_i].x][@piece_list[_i].y] = piece_list[_i];
			get_pos_moves(piece_list[_i]);
		}
		
		if _max > 0 {
			turn_count = move_list[_max-1][0];
		}
	}
	return true;

#define array_cut(_array, _index)
	if array_length_1d(_array) == 1 || array_length_1d(_array) == 0 return [];
	var _array_cut = array_create(array_length_1d(_array)-1);
	var j = 0;
	for (var i = 0; i < array_length_1d(_array); i++) {
		if i != _index {
			_array_cut[@j] = _array[i];
			j++;
		}
	}
	return _array_cut;

#define next_turn()
	sound_play(turn_end_sound);
	with oPlayer if other.turn_player == player chess_timer += 60*other.add_time;
	turn_player++;
	for(var _i = 0;_i < array_length_1d(piece_list);_i++) {
		piece_list[_i].cover = [];
		get_pos_moves(piece_list[_i]); 
	}

	if turn_player > 2 {
		turn_player = 1;
		turn_count++;
	}
	turn_total++;
	print_debug(string(turn_total));
	for(var _i = 0;_i < array_length_1d(piece_list);_i++) if piece_list[_i].type == check_piece in_check(piece_list[_i]);


return true;
#define shake_elements(_window,_intensity,_time)
	//print_debug("Shake Start");
	shaking_window = _window;
	intensity_max = _intensity;
	shake_time = _time;
	shaking = true;
	return true;

#define array_clone_seriously_why_isnt_this_how_it_works(_shit)
	var _fuck = [];
	for(var _i = 0;_i < array_length_1d(_shit);_i++) {
		if array_length_1d(_shit[_i]) > 0 array_push(_fuck,array_clone_seriously_why_isnt_this_how_it_works(_shit[_i]));
		else array_push(_fuck,_shit[_i]);
	}
	return _fuck;