//post-draw

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    //pawn
    if attack == AT_DTHROW {
        var width = 100;
        if window == 1 {
            draw_set_alpha((window_timer/10)*0.7)
            width -= (10 - window_timer)*10;
        } else if window == 2 {
            draw_set_alpha(0.7)
        } else if window == 3 {
            draw_set_alpha(0.7 - (window_timer/10)*0.7)
            width -= window_timer*10;
        }
        var col = c_white;
        draw_rectangle_color(x-width/2, 0, x+width/2, 1000, col,col,col,col, false)
        draw_set_alpha(1)
    }
    
    //queen
    if attack == AT_FSPECIAL_2 {
        var width = 0;
        if window == 1 {
            var drawx = x-22*spr_dir;
            var drawy = y-80;
            var drawwidth = window_timer;
            if image_index == 1 {
                drawx = x-36*spr_dir;
                drawy = y-68;
            } else if image_index == 2 {
                drawx = x-40*spr_dir;
                drawy = y-66;
            }
            draw_circle_color(drawx, drawy, drawwidth/2, c_white, c_white, false)
        } else if window == 2 {
            width = 30;
        } else if window == 3 {
            width = clamp(30 - window_timer*2, 0, 100)
        }
        
        var startx = x+26*spr_dir;
        var starty = y-90;
        
        draw_line_width_color(startx, starty, startx+dcos(laser_angle)*1000*spr_dir, starty-dsin(laser_angle)*1000, width, c_white, c_white);
        draw_circle_color(startx, starty, width, c_white, c_white, false)
        
        var _width = 100;
        if window == 4 {
            draw_set_alpha((window_timer/10)*0.7)
            _width -= (10 - window_timer)*10;
        } else if window == 5 {
            draw_set_alpha(0.7)
        } else if window == 6 {
            draw_set_alpha(0.7 - (window_timer/10)*0.7)
            _width -= window_timer*10;
        } else {
            _width = 0
        }
        var col = c_white;
        if _width != 0 draw_rectangle_color(x-_width/2, 0, x+_width/2, 1000, col,col,col,col, false)
        draw_set_alpha(1)
    }
    
    //final smash
    if attack == 49 {
        var _width = 100;
        if window == 6 {
            draw_set_alpha((window_timer/10)*0.7)
            _width -= (10 - window_timer)*10;
        } else if window == 7 {
            draw_set_alpha(0.7)
        } else if window == 8 {
            draw_set_alpha(0.7 - (window_timer/10)*0.7)
            _width -= window_timer*10;
        } else {
            _width = 0
        }
        var col = c_white;
        if _width != 0 draw_rectangle_color(x-_width/2, 0, x+_width/2, 1000, col,col,col,col, false)
        draw_set_alpha(1)
    }
}

if piece_id != undefined && instance_exists(piece_id) && piece_id.piece == "Q" && piece_id.perform_attack == true {
    var width = 0;
    draw_set_alpha(1)
    with piece_id {
        if window == 1 {
            var drawx = x-22*spr_dir;
            var drawy = y-80;
            var drawwidth = window_timer;
            if image_index == 1 {
                drawx = x-36*spr_dir;
                drawy = y-68;
            } else if image_index == 2 {
                drawx = x-40*spr_dir;
                drawy = y-66;
            }
            with other draw_circle_color(drawx, drawy, drawwidth/2, c_white, c_white, false)
        } else if window == 2 {
            width = 30;
        } else if window == 3 {
            width = clamp(30 - window_timer*2, 0, 100)
        }
    
        var startx = x+26*spr_dir;
        var starty = y-90;
        
        with other {
            draw_line_width_color(startx, starty, startx+dcos(laser_angle)*1000*other.spr_dir, starty-dsin(laser_angle)*1000, width, c_white, c_white);
            draw_circle_color(startx, starty, width, c_white, c_white, false)
        }
    }
}

if range_dist != 0 {
    draw_sprite_ext(sprite_get("range_circle"), 0, x, y - 30, range_dist/110, range_dist/110, 0, c_white, 0.5);
}

if draw_missile {
    shader_start();
    if window == 2 {
        draw_sprite_ext(sprite_get("Bfspecial_charge"), floor(window_timer/5), x, y - 30, 1, 1, missile_angle + 180, c_white, 1);
    } else if window == 3 {
        draw_sprite_ext(sprite_get("Bfspecial_missile"), floor(window_timer/5), x, y - 30, 1, 1, missile_angle + 180, c_white, 1);
    }
    shader_end();
}

//plat numbers
if state == PS_RESPAWN {
    var plat_timer = 5 - (state_timer/60);
    draw_debug_text(x-31, y+14, string_format(plat_timer, 1, 2))
    draw_debug_text(x+5, y+14, "5.00")
}

//king armour
if king_armour {
    draw_sprite(sprite_get("armour_meter"), 0, x, y - 91)
    var _col = c_red;
    draw_rectangle_color(x - 28, y - 91 - 2, x + 27 - (armour_timer/120)*55, y - 91 + 1, _col,_col,_col,_col, false)
} else if piece == "K" && armour_cooldown > 0 {
    draw_set_alpha(0.5)
    draw_sprite(sprite_get("armour_meter"), 0, x, y - 91)
    var _col = c_maroon;
    draw_rectangle_color(x - 28, y - 91 - 2, x + 27 - (armour_cooldown/120)*55, y - 91 + 1, _col,_col,_col,_col, false)
    draw_set_alpha(1)
}

//final smash
if sprite_index == sprite_get("finalsmash_chessatron") {
    draw_sprite_ext(sprite_get("finalsmash_vfx_front"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
}