//other-post-draw

with other_player_id {
    var spr = sprite_get("reticle");
}

if draw_reticle {
    var clr = get_player_hud_color(other_player_id.player)
    draw_sprite_ext(spr, 0, x, y - char_height/2, spr_dir, 1, 0, clr, 1);
}

//kirby
if ("enemykirby" in other_player_id) && other_player_id.enemykirby != undefined && instance_exists(other_player_id.enemykirby) {
    if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3 && get_window_value(AT_EXTRA_3, 21, AG_WINDOW_ANIM_FRAMES) == 113) {
        if ability_piece == "Q" || ability_piece == "P" {
            var width = 0;
            
            if window == 2 {
                width = 30;
            } else if window == 3 {
                width = clamp(30 - window_timer*2, 0, 100)
            }
            
            var startx = x;
            var starty = y-50;
            
            var laser_angle = 60;
            draw_line_width_color(startx, starty, startx+dcos(laser_angle)*1000*spr_dir, starty-dsin(laser_angle)*1000, width, c_white, c_white);
            draw_circle_color(startx, starty, width, c_white, c_white, false)
        }
    }
}