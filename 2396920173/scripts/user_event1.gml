//user-event1

////////////////////////
//// CHESS STAGE AI ////
////////////////////////

enum M {
    MOVE_PIECE,
    MOVE_CURSOR,
    SELECT_CURSOR
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


with obj_stage_main {
    if ("tb_menu_offset" in self) {
        other.ai_active = true;
        other.stage_object = id;
    }
}

if stage_object != undefined {
	if timer == 5 {
		pawnEvalWhite =
		    [
		        [0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0],
		        [5.0,  5.0,  5.0,  5.0,  5.0,  5.0,  5.0,  5.0],
		        [1.0,  1.0,  2.0,  3.0,  3.0,  2.0,  1.0,  1.0],
		        [0.5,  0.5,  1.0,  2.5,  2.5,  1.0,  0.5,  0.5],
		        [0.0,  0.0,  0.0,  2.0,  2.0,  0.0,  0.0,  0.0],
		        [0.5, -0.5, -1.0,  0.0,  0.0, -1.0, -0.5,  0.5],
		        [0.5,  1.0, 1.0,  -2.0, -2.0,  1.0,  1.0,  0.5],
		        [0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0]
		    ];
		
		pawnEvalBlack = reverseArray(pawnEvalWhite);
		
		knightEval =
		    [
		        [-5.0, -4.0, -3.0, -3.0, -3.0, -3.0, -4.0, -5.0],
		        [-4.0, -2.0,  0.0,  0.0,  0.0,  0.0, -2.0, -4.0],
		        [-3.0,  0.0,  1.0,  1.5,  1.5,  1.0,  0.0, -3.0],
		        [-3.0,  0.5,  1.5,  2.0,  2.0,  1.5,  0.5, -3.0],
		        [-3.0,  0.0,  1.5,  2.0,  2.0,  1.5,  0.0, -3.0],
		        [-3.0,  0.5,  1.0,  1.5,  1.5,  1.0,  0.5, -3.0],
		        [-4.0, -2.0,  0.0,  0.5,  0.5,  0.0, -2.0, -4.0],
		        [-5.0, -4.0, -3.0, -3.0, -3.0, -3.0, -4.0, -5.0]
		    ];
		
		bishopEvalWhite = [
		    [ -2.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -2.0],
		    [ -1.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0, -1.0],
		    [ -1.0,  0.0,  0.5,  1.0,  1.0,  0.5,  0.0, -1.0],
		    [ -1.0,  0.5,  0.5,  1.0,  1.0,  0.5,  0.5, -1.0],
		    [ -1.0,  0.0,  1.0,  1.0,  1.0,  1.0,  0.0, -1.0],
		    [ -1.0,  1.0,  1.0,  1.0,  1.0,  1.0,  1.0, -1.0],
		    [ -1.0,  0.5,  0.0,  0.0,  0.0,  0.0,  0.5, -1.0],
		    [ -2.0, -1.0, -1.0, -1.0, -1.0, -1.0, -1.0, -2.0]
		];
		
		bishopEvalBlack = reverseArray(bishopEvalWhite);
		
		rookEvalWhite = [
		    [  0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0],
		    [  0.5,  1.0,  1.0,  1.0,  1.0,  1.0,  1.0,  0.5],
		    [ -0.5,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0, -0.5],
		    [ -0.5,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0, -0.5],
		    [ -0.5,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0, -0.5],
		    [ -0.5,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0, -0.5],
		    [ -0.5,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0, -0.5],
		    [  0.0,   0.0, 0.0,  0.5,  0.5,  0.0,  0.0,  0.0]
		];
		
		rookEvalBlack = reverseArray(rookEvalWhite);
		
		evalQueen = [
		    [ -2.0, -1.0, -1.0, -0.5, -0.5, -1.0, -1.0, -2.0],
		    [ -1.0,  0.0,  0.0,  0.0,  0.0,  0.0,  0.0, -1.0],
		    [ -1.0,  0.0,  0.5,  0.5,  0.5,  0.5,  0.0, -1.0],
		    [ -0.5,  0.0,  0.5,  0.5,  0.5,  0.5,  0.0, -0.5],
		    [  0.0,  0.0,  0.5,  0.5,  0.5,  0.5,  0.0, -0.5],
		    [ -1.0,  0.5,  0.5,  0.5,  0.5,  0.5,  0.0, -1.0],
		    [ -1.0,  0.0,  0.5,  0.0,  0.0,  0.0,  0.0, -1.0],
		    [ -2.0, -1.0, -1.0, -0.5, -0.5, -1.0, -1.0, -2.0]
		];
		
		kingEvalWhite = [
		
		    [ -3.0, -4.0, -4.0, -5.0, -5.0, -4.0, -4.0, -3.0],
		    [ -3.0, -4.0, -4.0, -5.0, -5.0, -4.0, -4.0, -3.0],
		    [ -3.0, -4.0, -4.0, -5.0, -5.0, -4.0, -4.0, -3.0],
		    [ -3.0, -4.0, -4.0, -5.0, -5.0, -4.0, -4.0, -3.0],
		    [ -2.0, -3.0, -3.0, -4.0, -4.0, -3.0, -3.0, -2.0],
		    [ -1.0, -2.0, -2.0, -2.0, -2.0, -2.0, -2.0, -1.0],
		    [  2.0,  2.0,  0.0,  0.0,  0.0,  0.0,  2.0,  2.0 ],
		    [  2.0,  3.0,  1.0,  0.0,  0.0,  1.0,  3.0,  2.0 ]
		];
		
		kingEvalBlack = reverseArray(kingEvalWhite);
	}
    var cursor_x = stage_object.cursor_list[player mod 2].x;
    var cursor_y = stage_object.cursor_list[player mod 2].y;
    //print_debug(string(array_length(stage_object.piece_list)))
    //print_debug(string(stage_object.board_array[0][0]))
} else {
	exit;
}

if ai_active {
    if stage_object.turn_player == player {
        turn_timer++;
        if !made_move && timer > 120 && turn_timer > 10 {
        	var clone_array = array_clone_seriously_why_isnt_this_how_it_works(stage_object.board_array);
        	//print_debug(string(stage_object.board_array))
        	with stage_object {
        		for(var _i = 0;_i < array_length_1d(piece_list);_i++) get_pos_moves(piece_list[_i], board_array);
        	}
        	var str = make_best_move(clone_array);
        	print_debug(str)
        	with stage_object {
        		for(var _i = 0;_i < array_length_1d(piece_list);_i++) get_pos_moves(piece_list[_i], board_array);
        	}
        }
        //simulated_paths = [];
        //best_move = find_best_move(legal_moves, 1);
        /*
        if array_length(legal_moves) != 0 && turn_timer mod 199 == 30 {
            //print_debug(string(moves_list))
            //print_debug(string(array_length(moves_list)))
            var _randvar = random_func(0, array_length(legal_moves), true);
            var _move = best_move;
            
            var _start = [_move[0], _move[1]];
            var _end = [_move[2][0], _move[2][1]]
            print_debug(string(_start) + ", " + string(_end))
            
            //print_debug(string(chosen_move))
            move_piece(_start, _end)
        }
        */
        
    } else {
        turn_timer = 0;
        made_move = false;
    }
}

//print_debug(string(moves_list))
//print_debug(string(array_length(moves_list)))

if ai_task_perform {
    ai_task_timer++;
    if ai_task_timer mod ai_task_speed == 0 {
        perform_task();
        ai_task_counter++;
        if ai_task_counter >= array_length(ai_task_instructions) {
            ai_task_perform = false;
            ai_task_counter = 0;
            ai_task_timer = 0;
            ai_task_instructions = undefined;
        }
    }
}
//2356881477

#define print_board(_board)
var board_arr = array_create(8, array_create(8, "x"));
for (var i = 7; i >= 0; i--) {
	for (var j = 0; j < 8; j++) {
		if _board[j,i] == noone board_arr[i,j] = "*";
		else board_arr[i,j] = _board[j,i].type;
	}
	print_debug(string(board_arr[i]))
}
print_debug("--------------------------")
return;

#define move_piece(start_coords, end_coords)
ai_task_perform = true;
ai_task_counter = 0;
ai_task_timer = 0;

ai_task_instructions = [
    [M.MOVE_CURSOR, start_coords],
    [M.SELECT_CURSOR],
    [M.MOVE_CURSOR, end_coords],
    [M.SELECT_CURSOR]
]
return;

#define perform_task
if ai_task_instructions != undefined {
    //print_debug(string(ai_task_instructions[ai_task_counter]))
    switch ai_task_instructions[ai_task_counter][0] {
        case M.MOVE_CURSOR:
        var _coords = ai_task_instructions[ai_task_counter][1];
        //print_debug(string(_coords))
        with stage_object {
            sound_play(move_sound, false, false, .5)
            cursor_list[other.player mod 2].x = _coords[0];
            cursor_list[other.player mod 2].y = _coords[1];
            
        }
        break;
        
        case M.SELECT_CURSOR:
        //print_debug(string(stage_object.cursor_list[player mod 2]))
        attack_down = true;
        attack_down_prev = false;
        break;
    }
}
return;

#define generate_simulated_board(orig_array, _chosen_move)
var new_array = array_clone_seriously_why_isnt_this_how_it_works(orig_array);
var old_vars = orig_array[_chosen_move[0],_chosen_move[1]];

//print_debug("orig_array length before: " + string(string_length(string(orig_array))))
//print_debug("new_array length before: " + string(string_length(string(new_array))))

new_array[_chosen_move[0],_chosen_move[1]] = noone; //these 2 lines cause all the problems i have
new_array[_chosen_move[2,0],_chosen_move[2,1]] = old_vars; //fuck them

//print_debug("orig_array length after: " + string(string_length(string(orig_array))))
//print_debug("new_array length after: " + string(string_length(string(new_array))))

//print_board(new_array)
//print_board(stage_object.board_array)

return new_array;

#define minimax_root(chosen_board_state, search_depth, ismaximisingplayer) //run on the current board state
var legal_moves = get_legal_moves(chosen_board_state);
var bestMove = -9999;
//print_debug(string(legal_moves))
var bestMoveFound = undefined;
//bestMoveFound = legal_moves[3]
//return bestMoveFound;
for (var i = 0; i < array_length(legal_moves); i++) {
	var simulated_move = legal_moves[i];
	var simulated_board = generate_simulated_board(chosen_board_state, simulated_move)
	var value = minimax(simulated_board, search_depth-1, -10000, 10000, !ismaximisingplayer)
	//simulated_board = reset_simulated_board() //because fuck cloned arrays
	//print_debug(string(bestMove) + ", " + string(value))
	if value >= bestMove {
		bestMove = value;
		bestMoveFound = simulated_move;
	}
	//print_debug(string(timer))
}
//bestMoveFound = legal_moves[3]
/*
for (var j = 0; j < array_length(legal_moves); j++) {
	if bestMoveFound == legal_moves[j] {
		print_debug(string(j))
	}
}
*/
return bestMoveFound;

#define reset_simulated_board
with obj_stage_main {
	var _max = array_length_1d(move_list)-1;
	//Reset Board Array
	board_array = [];
	for(var _i = 0; _i < 9; _i++) {
	    array_push(board_array,array_create(8,noone));
	}
	for(var _i = 0;_i < array_length_1d(piece_list);_i++) {
		board_array[@piece_list[_i].x][@piece_list[_i].y] = piece_list[_i];
		//get_pos_moves(piece_list[_i]);
	}
	
	if _max > 0 {
		turn_count = move_list[_max-1][0];
	}
}

#define minimax(board_clone, search_depth, alpha, beta, ismaximisingplayer) //run for each current legal move
//var board_clone = array_clone_seriously_why_isnt_this_how_it_works(chosen_board_state);
if search_depth == 0 {
	return -evaluate_board_score(board_clone);
}
var legal_moves = get_legal_moves(board_clone);

if ismaximisingplayer {
	var best_score = -9999;
	for (var i = 0; i < array_length(legal_moves); i++) {
		var simulated_board = generate_simulated_board(board_clone, legal_moves[i]);
		best_score = max(best_score, minimax(simulated_board, search_depth - 1, alpha, beta, !ismaximisingplayer));
		alpha = max(alpha, best_score);
		if beta <= alpha {
			return best_score;
		}
	}
	return best_score;
} else {
	var best_score = 9999;
	for (var i = 0; i < array_length(legal_moves); i++) {
		var simulated_board = generate_simulated_board(board_clone, legal_moves[i]);
		best_score = min(best_score, minimax(simulated_board, search_depth - 1,  alpha, beta, !ismaximisingplayer));
		beta = min(beta, best_score);
		if beta <= alpha {
			return best_score;
		}
		//print_debug(string(beta))
	}
	return best_score;
}
return;

#define evaluate_board_score(chosen_board_state)
var totalScore = 0;
for (var i = 0; i < 8; i++) {
    for (var j = 0; j < 8; j++) {
        totalScore = totalScore + getPieceValue(chosen_board_state[i][j], i ,j);
    }
}
return totalScore;

#define getPieceValue(_piece, _x, _y)
if _piece == noone {
	return 0;
}

var absolutevalue = getabsolutevalue(_piece, _piece.player == 1, _x, 7-_y);
return _piece.player == 0 ? absolutevalue : -absolutevalue;

#define getabsolutevalue(_piece, isWhite, _x, _y)
if (_piece.type == P.PAWN) {
    return 10 + ( isWhite ? pawnEvalWhite[_y][_x] : pawnEvalBlack[_y][_x] );
} else if (_piece.type == P.ROOK) {
    return 50 + ( isWhite ? rookEvalWhite[_y][_x] : rookEvalBlack[_y][_x] );
} else if (_piece.type == P.KNIGHT) {
    return 30 + knightEval[_y][_x];
} else if (_piece.type == P.BISHOP) {
    return 30 + ( isWhite ? bishopEvalWhite[_y][_x] : bishopEvalBlack[_y][_x] );
} else if (_piece.type == P.QUEEN) {
    return 90 + evalQueen[_y][_x];
} else if (_piece.type == P.KING) {
    return 900 + ( isWhite ? kingEvalWhite[_y][_x] : kingEvalBlack[_y][_x] );
} else {
	return 0;
}

#define make_best_move(_array)
var best_move = get_best_move(_array);
var _start = [best_move[0], best_move[1]];
var _end = [best_move[2][0], best_move[2][1]]
move_piece(_start, _end)
made_move = true;
return "Best move: " + string(_start) + " - " + string(_end);

#define get_best_move(chosen_board_state)
var _depth = search_depth;
var d1 = current_time;
var bestMove = minimax_root(chosen_board_state, _depth, true);
print_debug(string(bestMove))
var d2 = current_time;
var movetime = d2 - d1;
print_debug("Calculation time: " + string(movetime))
return bestMove;

#define get_legal_moves(temp_state)
var legal_moves = [];
for (var i = 0; i < array_length(temp_state); i++) {
	for (var j = 0; j < array_length(temp_state[i]); j++) {
		if temp_state[i,j] != noone {
			if temp_state[i,j].type != noone && temp_state[i,j].player == player {
				var _moves = get_pos_moves(temp_state[i,j], temp_state);
				if array_length(_moves) != 0 {
					//print_debug(string(_moves))
					for (var _k = 0; _k < array_length(_moves); _k++) {
						var square_value = 0;
						var target_square = temp_state[_moves[_k][0]][_moves[_k][1]];
						if target_square != noone {
							square_value = target_square.type + 1;
							//print_debug(string(square_value))
						}
						//enpassant
						var _p_obj = temp_state[i,j];
						switch _p_obj.type {
						    case P.PAWN:
					        if _p_obj.player == 1 {
					        	if _p_obj.x != 7 {
						            if _p_obj.y == 4 && temp_state[_p_obj.x+1][_p_obj.y] != noone && temp_state[_p_obj.x+1][_p_obj.y].type == P.PAWN && temp_state[_p_obj.x+1][_p_obj.y].move_count == 1 && temp_state[_p_obj.x+1][_p_obj.y].move_turn == stage_object.turn_total - 1{
						                square_value = 1;
						                array_push(legal_moves, [temp_state[i,j].x, temp_state[i,j].y, [temp_state[i,j].x+1, temp_state[i,j].y+1], square_value]);
						            }
					        	}
					        	if _p_obj.x != 0 {
						            if _p_obj.y == 4 && temp_state[_p_obj.x-1][_p_obj.y] != noone && temp_state[_p_obj.x-1][_p_obj.y].type == P.PAWN && temp_state[_p_obj.x-1][_p_obj.y].move_count == 1 && temp_state[_p_obj.x-1][_p_obj.y].move_turn == stage_object.turn_total - 1 {
						                square_value = 1;
						                array_push(legal_moves, [temp_state[i,j].x, temp_state[i,j].y, [temp_state[i,j].x-1, temp_state[i,j].y+1], square_value]);
						            }
					        	}
					        }
					        if _p_obj.player == 2 {
					        	if _p_obj.x != 7 {
						            if _p_obj.y == 3 && temp_state[_p_obj.x+1][_p_obj.y] != noone && temp_state[_p_obj.x+1][_p_obj.y].type == P.PAWN && temp_state[_p_obj.x+1][_p_obj.y].move_count == 1 && temp_state[_p_obj.x+1][_p_obj.y].move_turn == stage_object.turn_total - 1{
						            	print_debug(string(temp_state[_p_obj.x+1][_p_obj.y].move_turn) + ", " + string(stage_object.turn_total))
						            	print_debug(string(temp_state[_p_obj.x+1][_p_obj.y].move_count));
						                square_value = 1;
						                array_push(legal_moves, [temp_state[i,j].x, temp_state[i,j].y, [temp_state[i,j].x+1, temp_state[i,j].y-1], square_value]);
						            }
					        	}
					        	if _p_obj.x != 0 {
						            if _p_obj.y == 3 && temp_state[_p_obj.x-1][_p_obj.y] != noone && temp_state[_p_obj.x-1][_p_obj.y].type == P.PAWN && temp_state[_p_obj.x-1][_p_obj.y].move_count == 1 && temp_state[_p_obj.x-1][_p_obj.y].move_turn == stage_object.turn_total - 1 {
						                square_value = 1;
						                array_push(legal_moves, [temp_state[i,j].x, temp_state[i,j].y, [temp_state[i,j].x-1, temp_state[i,j].y-1], square_value]);
						                print_debug(string(temp_state[_p_obj.x+1][_p_obj.y].move_count));
						            }
					        	}
					        }
					    	break;
						}
						array_push(legal_moves, [temp_state[i,j].x, temp_state[i,j].y, _moves[_k], square_value]);
					}
				}
			}
		}
	}
}
return legal_moves;
//print_debug(string(legal_moves))
#define get_pos_moves(_p_obj, _clone_array)
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
                if _clone_array[_i][_j] != noone {
                	array_push(_p_obj.cover,_clone_array[_i][_j]);
                    if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
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
                if _clone_array[_i][_j] != noone {
                	array_push(_p_obj.cover,_clone_array[_i][_j]);
                    if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
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
                if _clone_array[_i][_j] != noone {
                	array_push(_p_obj.cover,_clone_array[_i][_j]);
                    if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
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
                if _clone_array[_i][_j] != noone {
                	array_push(_p_obj.cover,_clone_array[_i][_j]);
                    if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
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
                if _clone_array[_i][_j] != noone {
                	array_push(_p_obj.cover,_clone_array[_i][_j]);
                    if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _i++;
            }
            _i = _p_obj.x;
            _j = _p_obj.y;
            _i--;
            while _i > -1 {
                 if _clone_array[_i][_j] != noone {
                 	array_push(_p_obj.cover,_clone_array[_i][_j]);
                    if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
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
                if _clone_array[_i][_j] != noone {
                	array_push(_p_obj.cover,_clone_array[_i][_j]);
                    if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _j++;
            }
            _i = _p_obj.x;
            _j = _p_obj.y;
            _j--;
            while _j > -1 {
                 if _clone_array[_i][_j] != noone {
                 	array_push(_p_obj.cover,_clone_array[_i][_j]);
                    if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                    break;
                 }
                 array_push(_moves,[_i,_j,0]);
                _j--;
            }
            break;
        case P.PAWN:
            if  _p_obj.player == 1 { //Rare case of move possibilities differing per player
                //Pawn Normal Moves
                if _p_obj.y < 7 && _clone_array[_p_obj.x][_p_obj.y+1] == noone array_push(_moves,[_p_obj.x,_p_obj.y+1,0]);
                if _p_obj.y == 1 && _clone_array[_p_obj.x][_p_obj.y+2] == noone array_push(_moves,[_p_obj.x,_p_obj.y+2,0]);
                //Pawn Capture
                if _p_obj.y < 7 && _p_obj.x < 7 && _clone_array[_p_obj.x+1][_p_obj.y+1] != noone {
                	array_push(_p_obj.cover,_clone_array[_p_obj.x+1][_p_obj.y+1]);
                	if _clone_array[_p_obj.x+1][_p_obj.y+1].player != _p_obj.player array_push(_moves,[_p_obj.x+1,_p_obj.y+1,1]);
                }
                if _p_obj.y < 7 && _p_obj.x > 0 && _clone_array[_p_obj.x-1][_p_obj.y+1] != noone {
                	array_push(_p_obj.cover,_clone_array[_p_obj.x-1][_p_obj.y+1]);
                	if _clone_array[_p_obj.x-1][_p_obj.y+1].player != _p_obj.player array_push(_moves,[_p_obj.x-1,_p_obj.y+1,1]);
                }
                
                //En Passant
                if _p_obj.x < 7 && _clone_array[_p_obj.x+1][_p_obj.y]!= noone && _clone_array[_p_obj.x+1][_p_obj.y].player != _p_obj.player && _clone_array[_p_obj.x+1][_p_obj.y].type == P.PAWN && _clone_array[_p_obj.x+1][_p_obj.y].move_count == 1 { 
                    array_push(_moves,[_p_obj.x+1,_p_obj.y+1,1]);
                }
                if _p_obj.x > 0 && _clone_array[_p_obj.x-1][_p_obj.y]!= noone && _clone_array[_p_obj.x-1][_p_obj.y].player != _p_obj.player && _clone_array[_p_obj.x-1][_p_obj.y].type == P.PAWN && _clone_array[_p_obj.x-1][_p_obj.y].move_count == 1 { 
                    array_push(_moves,[_p_obj.x-1,_p_obj.y+1,1]);
                }
                
            }
            if  _p_obj.player == 2 { 
                if _p_obj.y > 0 && _clone_array[_p_obj.x][_p_obj.y-1] == noone array_push(_moves,[_p_obj.x,_p_obj.y-1,0]);
                if _p_obj.y == 6 && _clone_array[_p_obj.x][_p_obj.y-2] == noone array_push(_moves,[_p_obj.x,_p_obj.y-2,0]);
                //Pawn Capture
                if _p_obj.y > 0 && _p_obj.x < 7 && _clone_array[_p_obj.x+1][_p_obj.y-1] != noone {
                	array_push(_p_obj.cover,_clone_array[_p_obj.x+1][_p_obj.y-1]);
                	if _clone_array[_p_obj.x+1][_p_obj.y-1].player != _p_obj.player array_push(_moves,[_p_obj.x+1,_p_obj.y-1,1]);
                }
                if _p_obj.y > 0 && _p_obj.x > 0 && _clone_array[_p_obj.x-1][_p_obj.y-1] != noone {
                	array_push(_p_obj.cover,_clone_array[_p_obj.x-1][_p_obj.y+1]);
                	if _clone_array[_p_obj.x-1][_p_obj.y-1].player != _p_obj.player array_push(_moves,[_p_obj.x-1,_p_obj.y-1,1]);
                }
                //En Passant
                if _p_obj.x < 7 && _clone_array[_p_obj.x+1][_p_obj.y] != noone && _clone_array[_p_obj.x+1][_p_obj.y].player != _p_obj.player && _clone_array[_p_obj.x+1][_p_obj.y].type == P.PAWN && _clone_array[_p_obj.x+1][_p_obj.y].move_count == 1 { 
                    array_push(_moves,[_p_obj.x+1,_p_obj.y-1,1]);
                }
                if _p_obj.x > 0 && _clone_array[_p_obj.x-1][_p_obj.y] != noone && _clone_array[_p_obj.x-1][_p_obj.y].player != _p_obj.player && _clone_array[_p_obj.x-1][_p_obj.y].type == P.PAWN && _clone_array[_p_obj.x-1][_p_obj.y].move_count == 1 { 
                    array_push(_moves,[_p_obj.x-1,_p_obj.y-1,1]);
                }
            }
            break;
        case P.KNIGHT:
            for (var _i = 0; _i < array_length_1d(knight_coords);_i++) {
                var _x = _p_obj.x + knight_coords[_i][0];
                var _y = _p_obj.y + knight_coords[_i][1];
                if _x == clamp(_x,0,7) && _y == clamp(_y,0,7) {
                    if _clone_array[_x][_y] != noone {
                    	array_push(_p_obj.cover,_clone_array[_x,_y]);
                    	if _clone_array[_x][_y].player != _p_obj.player array_push(_moves,[_x,_y,1]);
                    } else array_push(_moves,[_x,_y,0]);
                } 
            }
            break;
        case P.KING:
            for (var _i = clamp(_p_obj.x-1,0,7);_i <= clamp(_p_obj.x+1,0,7);_i++) {
                for (var _j = clamp(_p_obj.y-1,0,7);_j <= clamp(_p_obj.y+1,0,7);_j++) {
                    if _clone_array[_i][_j] != noone {
                    	array_push(_p_obj.cover,_clone_array[_i][_j]);
                        if _clone_array[_i][_j].player != _p_obj.player array_push(_moves,[_i,_j,1]);
                     } else array_push(_moves,[_i,_j,0]);
                }
            }
            //Castling Rules
            if _p_obj.is_check || _p_obj.move_count > 0 break;
            
            var _piece_count = 0;
            for (var _i = _p_obj.x+1;_i < 7;_i++) if _clone_array[_i][_p_obj.y] != noone || !check_space(_i, _p_obj.y, _p_obj.player) _piece_count++;
            if _piece_count == 0 && _clone_array[7][_p_obj.y] != noone && _clone_array[7][_p_obj.y].move_count == 0 array_push(_moves,[6,_p_obj.y,2]);
            _piece_count = 0;
            for (var _i = _p_obj.x-1;_i > 0;_i--) if _clone_array[_i][_p_obj.y] != noone || !check_space(_i, _p_obj.y, _p_obj.player) _piece_count++;
            if _piece_count == 0 && _clone_array[0][_p_obj.y] != noone && _clone_array[0][_p_obj.y].move_count == 0 array_push(_moves,[2,_p_obj.y,2]);
            break;
    }
    _p_obj.moves = _moves;
    //print_debug("GETTING MOVES: "+string(_p_obj.type)+" : "+string(_p_obj.moves));
    return _moves;
}

#define check_space(_x,_y,_player) //Check if a space has a move attacking it from a player's perspective
for(var _j = 0; _j < array_length_1d(piece_list);_j++) {
    if piece_list[_j].player != _player for(var _k = 0; _k < array_length_1d(piece_list[_j].moves);_k++) {
        if _x == piece_list[_j].moves[_k][0] && _y == piece_list[_j].moves[_k][1] {
        	return false;
        }
    }
}
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

#define array_clone_seriously_why_isnt_this_how_it_works(_shit)
var _fuck = [];
for(var _i = 0;_i < array_length_1d(_shit);_i++) {
    if is_array(_shit[_i]) array_push(_fuck,array_clone_seriously_why_isnt_this_how_it_works(_shit[_i]));
    else array_push(_fuck,_shit[_i]);
}
return _fuck;

#define reverseArray(input)
var output = []
for(var _i = array_length_1d(input) - 1;_i >= 0;_i--) {
    if is_array(input[_i]) array_push(output,array_clone_seriously_why_isnt_this_how_it_works(input[_i]));
    else array_push(output,input[_i]);
}
return output;