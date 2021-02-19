//draw-hud

if !("piece" in self) {
    exit;
}

var boardx = temp_x + 26;
var boardy = temp_y - 18;

if shake_timer != 0 {
    boardx += random_func(0, 4, false) - 2;
    boardy += random_func(1, 4, false) - 2;
}

draw_sprite_ext(sprite_get("pawn_hud"), 0, boardx, boardy, 1, 1, 0, c_white, 1)

if pawn_meter == 7 && get_gameplay_time() mod 20 > 10 {
    draw_sprite_ext(sprite_get("pawn_hud_wire"), 0, boardx, boardy, 1, 1, 0, c_yellow, 1)
}

var piecex = boardx + 10 + ease_quintInOut((clamp(pawn_meter-1, 0, 10)), pawn_meter, clamp(pawn_move_timer, 0, 10), 10)*18;
var piecey = boardy + 11;

draw_sprite_ext(sprite_get("pawn_piece_hud"), 0, piecex, piecey, 1, 1, 0, c_white, 1)

if queen_active {
    var queenx = boardx
    var queeny = boardy - 10;
    
    draw_sprite_ext(sprite_get("pawn_hud_meter"), 0, queenx, queeny, 1, 1, 0, c_white, 1)
    var _timer = abs(dsin(timer*3))
    var _r = 255
    var _g = 157 + _timer*60
    var _b = 0;
    var _col = make_color_rgb(_r,_g,_b);
    draw_rectangle_color(queenx + 2, queeny + 2, queenx + (143*queen_timer/queen_timer_max), queeny + 9, _col,_col,_col,_col, false)
}

//kirby
if ("enemykirby" in self) && enemykirby != undefined && instance_exists(enemykirby) && enemykirby.current_ability == 16 {
    var _pawn_hud = sprite_get("pawn_hud");
    var _pawn_wire_hud = sprite_get("pawn_hud_wire");
    var _pawn_piece_hud = sprite_get("pawn_piece_hud");
    with oPlayer {
        if (get_window_value(AT_EXTRA_3, 21, AG_WINDOW_ANIM_FRAMES) == 113) {
            if ability_piece == "P" {
                draw_sprite_ext(_pawn_hud, 0, temp_x + 26, temp_y - 18, 1, 1, 0, c_white, 1)
                var _piecex = temp_x + 36 + ease_quintInOut((clamp(ability_pawn_counter-1, 0, 10)), ability_pawn_counter, clamp(ability_pawn_move_timer, 0, 10), 10)*18;
                var _piecey = temp_y - 7;
                draw_sprite_ext(_pawn_piece_hud, 0, _piecex, _piecey, 1, 1, 0, c_white, 1)
                
                if ability_pawn_counter == 7 && get_gameplay_time() mod 20 > 10 {
                    draw_sprite_ext(_pawn_wire_hud, 0, temp_x + 26, temp_y - 18, 1, 1, 0, c_yellow, 1)
                }
            }
        }
    }
}