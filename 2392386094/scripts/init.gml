//Init
enum P {
    PAWN,
    ROOK,
    BISHOP,
    QUEEN,
    KNIGHT,
    KING,
    SIZE
}

debug = false;
game_start_time = 120;

piece_sprites = [
	sprite_get("0_sprite"),
	sprite_get("1_sprite"),
	sprite_get("2_sprite"),
	sprite_get("3_sprite"),
	sprite_get("4_sprite"),
	sprite_get("5_sprite"),
	];
check_sprite = sprite_get("check_sprite");
checking_pieces = [];
board_sprite = sprite_get("board");
board_x = 200;
board_y = -1000;

board_x_final = board_x;
board_y_final = 16;

board_s = 64*8;
//Would use a bitboard, but naah
board_array = [];
for(var _i = 0; _i < 8; _i++) {
    array_push(board_array,array_create(8,noone));
}
//if debug print_debug("BOARD ARRAY: "+string(board_array));

game_going = true;
game_time = 0;
move_list = [];
piece_list = [];
cursor_list = [];
moves_spr = sprite_get("moves_spr");

turn_player = 1;
turn_count = 1;
player_count = 0;
local_player = noone;
with oPlayer if is_player_on(player) {
    with other add_cursor(other.player);
    if get_player_hud_color(player) == 15297156 local_player = -1; //Flag for setting
    //if get_player_hud_color(player) == 6612290 other.local_player = id;
    other.player_count++;
}
with oPlayer if other.local_player == -1 && is_player_on(player) other.local_player = id;

for (var _i = 0; _i < array_length_1d(cursor_list);_i++) {
    switch cursor_list[_i].player {
        case 1:
            break;
        case 2:
            cursor_list[_i].x = 3;
            cursor_list[_i].y = 4;
            break;
    }
}
//print_debug("A Game with "+string(player_count)+" players");

check_piece = P.KING; //Piece that needs to be checkmated
knight_coords = [[-2,-1],[-1,-2],[ 1,-2],[ 2,-1],[-2, 1],[-1, 2],[ 1, 2],[ 2, 1]]; //hard-coding for ease of use
move_count = array_create(player_count);
winner = 0;
game_over = false;

shaking = false;
intensity_max = 0;
intensity_x = 0;
intensity_y = 0;
shake_time = 0;

movelist_x = 770;
movelist_y = 500;

is_aether = is_aether_stage();
add_time = get_match_setting(SET_STOCKS);

if debug cursor_sprite = sprite_get("arrow");
else cursor_sprite = asset_get("empty_sprite");
//TALKING??? asset_get("sfx_may_arc_talk") asset_get("sfx_may_arc_talkstart")
//Board Zoom-In asset_get("sfx_ice_dspecial_form")
//Page Turn asset_get("sfx_clairen_hair")
//GUI Fall Away asset_get("sfx_clairen_sword_deactivate")
//GUI popup asset_get("sfx_holy_textbox")

start_sound = asset_get("sfx_frog_gong_hit");
select_sound = asset_get("sfx_clairen_hair");
cancel_sound = asset_get("sfx_shop_invalid"); //asset_get("sfx_absa_gp");
move_sound = asset_get("sfx_shop_move");//asset_get("sfx_waveland_wra"); //asset_get("sfx_bird_nspecial2");
turn_end_sound = asset_get("sfx_holy_textbox"); //asset_get("sfx_burnend");
capture_sound = asset_get("sfx_holy_lightning"); //asset_get("sfx_waterhit_medium");
check_sound = asset_get("sfx_bird_screech");
checkmate_sound = asset_get("sfx_absa_8b"); //asset_get("sfx_shovel_knight_fanfare")
lose_sound = asset_get("sfx_dizzy");
promote_sound = asset_get("sfx_fish_collect");
menu_sound = asset_get("sfx_clairen_hair");

take_sfx = 0;

win_call = 1;
user_event(2);

if local_player != noone {
	array_push(active_win,[[224,-1000,0,0,0,0,0],array_clone_seriously_why_isnt_this_how_it_works(win_data[1])]);
	if local_player.player == 1 array_push(active_win,[[-128,0,0,0,0,0,1],array_clone_seriously_why_isnt_this_how_it_works(win_data[2])]);
	else array_push(active_win,[[-128,-400,0,0,0,0,1],array_clone_seriously_why_isnt_this_how_it_works(win_data[2])]);
	if local_player.player == 2 array_push(active_win,[[-128,0,0,0,0,0,2],array_clone_seriously_why_isnt_this_how_it_works(win_data[2])]);
	else array_push(active_win,[[-128,-400,0,0,0,0,2],array_clone_seriously_why_isnt_this_how_it_works(win_data[2])]);
	if local_player.player == 2 array_push(active_win,[[400,-128,0,0,0,0,1],array_clone_seriously_why_isnt_this_how_it_works(win_data[4])]);
	else array_push(active_win,[[-128,-128,0,0,0,0,1],array_clone_seriously_why_isnt_this_how_it_works(win_data[4])]);
	if local_player.player == 1 array_push(active_win,[[400,-128,0,0,0,0,2],array_clone_seriously_why_isnt_this_how_it_works(win_data[4])]);
	else array_push(active_win,[[-128,-128,0,0,0,0,2],array_clone_seriously_why_isnt_this_how_it_works(win_data[4])]);
} else {
	array_push(active_win,[[224,-1000,0,0,0,0,0],array_clone_seriously_why_isnt_this_how_it_works(win_data[1])]);
	array_push(active_win,[[-128,0,0,0,0,0,1],array_clone_seriously_why_isnt_this_how_it_works(win_data[2])]);
	array_push(active_win,[[-128,256,0,0,0,0,2],array_clone_seriously_why_isnt_this_how_it_works(win_data[2])]);
	array_push(active_win,[[400,-128,0,0,0,0,1],array_clone_seriously_why_isnt_this_how_it_works(win_data[4])]);
	array_push(active_win,[[400,-128,0,0,0,0,2],array_clone_seriously_why_isnt_this_how_it_works(win_data[4])]);
}

pos_to = [578,290];
bg_port = sprite_get("bg_port");

sub_menu_hide = -128;
sub_menu_active = 0;
sub_menu_offset = sub_menu_hide;
tb_menu_hide = -128;
tb_menu_active = 256;
tb_menu_offset = tb_menu_hide;

#define add_cursor(_player)
var cursor_obj = {
    x: 4,
    y: 3,
    sprite_index: sprite_get("cursor_spr"),
    player: _player,
    player_id: other.id,
    move_cooldown_max: 5,
    move_cooldown: 0,
    selecting: false,
    select_piece: noone
};
array_push(cursor_list,cursor_obj);
return true;
#define array_clone_seriously_why_isnt_this_how_it_works(_shit)
var _fuck = [];
for(var _i = 0;_i < array_length_1d(_shit);_i++) {
	if array_length_1d(_shit[_i]) > 0 array_push(_fuck,array_clone_seriously_why_isnt_this_how_it_works(_shit[_i]));
	else array_push(_fuck,_shit[_i]);
}
return _fuck;