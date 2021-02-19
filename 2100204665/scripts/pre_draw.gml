//YOU'RE BLUE NOW! THAT'S MY ATTACK!
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
if (attack == AT_FSPECIAL){
    if (window == 2 && spr_dir == 1){
        if (window_timer < 2 && window_timer > 0){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x + 24, y, 1, 1, 0, c_white, .25);
        }
        if (window_timer < 4 && window_timer >= 2){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x + 24, y, 1, 1, 0, c_white, .5);
        }
        if (window_timer < 8 && window_timer >= 4){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x + 24, y, 1, 1, 0, c_white, .75);
        }
        if (window_timer >= 8){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x + 24, y, 1, 1, 0, c_white, 1);
        }
    }
    if (window == 2 && spr_dir == -1){
        if (window_timer < 2 && window_timer > 0){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x - 104, y, 1, 1, 0, c_white, .25);
        }
        if (window_timer < 4 && window_timer >= 2){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x - 104, y, 1, 1, 0, c_white, .5);
        }
        if (window_timer < 8 && window_timer >= 4){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x - 104, y, 1, 1, 0, c_white, .75);
        }
        if (window_timer >= 8){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x - 104, y, 1, 1, 0, c_white, 1);
        }
    }
    if (window == 3 && spr_dir == 1){
        if (window_timer < 2 && window_timer >=0){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x + 20, y + 4, 1.1, 1.1, 0, c_white, .75);
        }
        if (window_timer < 4 && window_timer >=2){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x + 16, y + 8, 1.2, 1.2, 0, c_white, .5);
        }
        if (window_timer < 8 && window_timer >=4){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x + 12, y + 12, 1.3, 1.3, 0, c_white, .25);
        }
    }
    if (window == 3 && spr_dir == -1){
        if (window_timer < 2 && window_timer >=0){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x - 108, y + 4, 1.1, 1.1, 0, c_white, .75);
        }
        if (window_timer < 4 && window_timer >=2){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x - 112, y + 8, 1.2, 1.2, 0, c_white, .5);
        }
        if (window_timer < 8 && window_timer >=4){
        draw_sprite_ext(sprite_get("bluewarning"), 0, x - 116, y + 12, 1.3, 1.3, 0, c_white, .25);
        }
    }
}
}
