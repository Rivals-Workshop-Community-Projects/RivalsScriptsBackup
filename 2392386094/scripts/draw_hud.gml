//draw_hud
if !game_going exit;
enum P {
    PAWN,
    ROOK,
    BISHOP,
    QUEEN,
    KNIGHT,
    KING,
    SIZE
}



/*
draw_sprite_ext(board_sprite,0,board_x+intensity_x,board_y+intensity_y,2,2,0,c_white,1);

//Cursor Draws
for (var _i = 0; _i < array_length_1d(cursor_list); _i++) {
    var _alpha = 1 - .7*(turn_player != cursor_list[_i].player);
    draw_sprite_ext(cursor_list[_i].sprite_index,0,
    board_x+cursor_list[_i].x*64+intensity_x,board_y+board_s-cursor_list[_i].y*64-cursor_list[_i].move_cooldown-64+intensity_y,2,2,0,get_player_hud_color(cursor_list[_i].player),_alpha);
}

//Moves Draws
for (var _i = 0; _i < array_length_1d(piece_list); _i++) {
    if piece_list[_i].moves_visible {
        var _move_sh = piece_list[_i].moves;
        for (var _j = 0; _j < array_length_1d(_move_sh); _j++) {
            draw_sprite_ext(moves_spr,0,
            board_x+_move_sh[_j][0]*64+intensity_x,board_y+board_s-_move_sh[_j][1]*64-64+intensity_y,2,2,0,get_player_hud_color(piece_list[_i].player),0.5);
            //draw_debug_text(board_x+_move_sh[_j][0]*64,board_y+_move_sh[_j][1]*64,string(_move_sh[_j][2]));
        }
    }
}
//Piece Draws
for (var _i = 0; _i < array_length_1d(piece_list); _i++) {
    draw_sprite_ext(piece_list[_i].sprite_index,0,
    board_x+piece_list[_i].x*64+intensity_x,board_y+board_s-piece_list[_i].y*64-64+intensity_y,2,2,0,get_player_hud_color(piece_list[_i].player),1);
    draw_debug_text(board_x+piece_list[_i].x*64+32+intensity_x,floor(board_y+board_s-piece_list[_i].y*64-32+intensity_y),string(array_length_1d(piece_list[_i].moves)));
}
var _max = array_length_1d(move_list)-1;
for (var _i = 0;_i < 10 && _max -_i > -1; _i++) {
    draw_debug_text(400,500-_i*16,string(move_list[_max -_i]));
}*/

//Window Draws

//draw_rectangle_color(-100,-100,1000,1000,c_black,c_black,c_black,c_black,false);
win_call = 0;
user_event(2);

if get_gameplay_time() < 240 {
    //draw_sprite_ext(sprite_get("countdown"),0,0,0,2,2,0,c_white,1);
    if get_gameplay_time() < 90 draw_sprite_ext(sprite_get("countdown"),
    ((get_gameplay_time() > 29) + (get_gameplay_time() > 59) + (get_gameplay_time() > 89)),
    0,0,2,2,0,c_white,((30-(get_gameplay_time() % 30))/30));
    else {
        draw_sprite_ext(sprite_get("countdown"), 3,
    0,0,2,2,0,c_white,((60-(get_gameplay_time()-90))/(60)));
    }
}
if debug draw_debug_text(2,2,string(fps));
draw_set_font(asset_get("medFont"));

with oPlayer {
    if other.is_aether {
        var chess_timer_str;
        if floor(floor(chess_timer/60) % 60) < 10 chess_timer_str = string(floor(floor(chess_timer/60)/60))+":0"+string(floor(floor(chess_timer/60) % 60));
        else chess_timer_str = string(floor(floor(chess_timer/60)/60))+":"+string(floor(floor(chess_timer/60) % 60));
    }
    if player == 1 {
        if other.is_aether draw_text_ext_transformed_color(32*2+8,308,chess_timer_str,16,400,1,1,0,get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),1);
        draw_text_ext_transformed_color(32*3-(string_width(name)/2),506,name,16,400,1,1,0,get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),1);
    } else {
        if other.is_aether draw_text_ext_transformed_color(32*26+8,216,chess_timer_str,16,400,1,1,0,get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),1);
        draw_text_ext_transformed_color(32*27-(string_width(name)/2),16,name,16,400,1,1,0,get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),get_player_hud_color(player),1);
        
    }
}