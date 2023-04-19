if (is_attacking && attack == AT_DSPECIAL) {
    var box_open_frames = 6; 
    var desc_open_frames = 6; 
    var box_xoff = x-48;
    var box_yoff = y-192;
    
    var desc_xoff = x-48;
    var desc_yoff = y-192-64;
    
    var box_color = can_select_skill ? c_white : c_gray;
    
    if (window == 3) {
        if (window_timer >= window_end - box_open_frames - desc_open_frames) {
           sprite_draw_hud(sprite_get("hud_main"), clamp(ease_linear(0, 3, window_timer - ( window_end - box_open_frames - desc_open_frames), box_open_frames), 0, 3), box_xoff, box_yoff, box_color, 1);
        }
        if (window_timer >= window_end - box_open_frames) {
           sprite_draw_hud(sprite_get("hud_desc"), clamp(ease_linear(0, 3, window_timer - ( window_end - box_open_frames), box_open_frames), 0, 3), desc_xoff, desc_yoff, box_color, 1);
        }
    }
    
    if (window == 4 || (window == 5 && window_timer <= 12)) {
        sprite_draw_hud(sprite_get("hud_main"), 3, box_xoff, box_yoff, box_color, 1);
        sprite_draw_hud(sprite_get("hud_desc"), 3, desc_xoff, desc_yoff, box_color, 1);
    }
    
    if (window == 5 && window_timer > 12) {
        if (window_timer <= 12 + box_open_frames) {
           sprite_draw_hud(sprite_get("hud_main"), clamp(ease_linear(3, 0, window_timer, box_open_frames), 0, 3), box_xoff, box_yoff, box_color, 1);
        }
        if (window_timer >= 12 + box_open_frames && window_timer <= 12 + box_open_frames + desc_open_frames) {
           sprite_draw_hud(sprite_get("hud_desc"), clamp(ease_linear(3, 0, window_timer - box_open_frames,  desc_open_frames), 0, 3), desc_xoff, desc_yoff, box_color, 1);
        }
    } 
    if (window == 6) {
        if (window_timer <= box_open_frames) {
           sprite_draw_hud(sprite_get("hud_main"), clamp(ease_linear(3, 0, window_timer, box_open_frames), 0, 3), box_xoff, box_yoff, box_color, 1);
        }
        if (window_timer >= box_open_frames && window_timer <= box_open_frames + desc_open_frames) {
           sprite_draw_hud(sprite_get("hud_desc"), clamp(ease_linear(3, 0, window_timer - box_open_frames,  desc_open_frames), 0, 3), desc_xoff, desc_yoff, box_color, 1);
        }
    }
}

if (state == PS_RESPAWN || respawn_taunt > 0)
{
    draw_sprite_ext(sprite_get("plat_b"), 0, x, y, spr_dir * 2, 2, 0, c_white, 1);
}

#define sprite_draw_hud(_spr, _img, _x, _y, _color, _alpha)
draw_sprite_ext(_spr, _img, _x, _y, 2, 2, 0, _color, _alpha);