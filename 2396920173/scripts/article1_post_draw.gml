//article1_post_draw

if hitbox_active && wire_sprite != undefined && !(perform_attack && piece == "B") {
     draw_sprite_ext(wire_sprite,0,x,y,spr_dir,1,0,c_gray,1)
}

//king armour
if king_armour {
    //draw_sprite_ext(wire_sprite,0,x,y,spr_dir,1,0,c_white,1)
    draw_sprite_ext(sprite_get("armour_outline"),0,x,y,spr_dir,1,0,c_white,0.75)
    
    draw_sprite(sprite_get("armour_meter"), 0, x, y - 91)
    var _col = c_red;
    draw_rectangle_color(x - 28, y - 91 - 2, x + 27 - (armour_timer/120)*55, y - 91 + 1, _col,_col,_col,_col, false)
}

if perform_attack {
    //pawn
    if piece == "P" && player_id.pawn_meter == 7 {
        var width = 100;
        draw_set_alpha(0)
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
    if piece == "Q" {
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
}

if range_dist != 0 {
    draw_sprite_ext(sprite_get("range_circle"), 0, x, y - 30, range_dist/110, range_dist/110, 0, c_white, 0.5);
}

if draw_missile {
    if window == 2 {
        draw_sprite_ext(sprite_get("Bfspecial_charge"), floor(window_timer/5), x, y - 30, 1, 1, missile_angle + 180, c_white, 1);
    } else if window == 3 {
        draw_sprite_ext(sprite_get("Bfspecial_missile"), floor(window_timer/5), x, y - 30, 1, 1, missile_angle + 180, c_white, 1);
    }
}

//visible masks
if timer > 1 && (player_id.hitbox_view && player_id.practice_mode) {
    draw_sprite_ext(mask_index, image_index, x, y, 1, 1, 0, c_white, 0.5);
}

//hp < 0
if hp <= 0 && not_hitpause_timer mod 10 >= 5 {
    draw_sprite_ext(wire_sprite, image_index, x, y, spr_dir, 1, 0, c_red, 1)
    for (var i = 0; i < hp_max; i++) {
        draw_sprite_ext(sprite_get("hp_segment"), 0, x - (hp_max*6) + 6 + i*12, y-height-16, 1, 1, 0, c_red, 1)
    }
}

//hp bar
if hp > 0 && not_hitpause_timer < 90 {
    for (var i = 0; i < hp_max; i++) {
        var _col = c_white;
        if i < hp_max - hp {
            _col = c_red
        }
        draw_sprite_ext(sprite_get("hp_segment"), 0, x - (hp_max*6) + 6 + i*12, y-height-16, 1, 1, 0, _col, 2 - not_hitpause_timer/30)
    }
}