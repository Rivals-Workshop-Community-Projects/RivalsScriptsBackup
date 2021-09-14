//post-draw
// shader_start();

switch (state){
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_FSPECIAL){
            if (window != 4 || window_timer == 0){
                if      get_player_color(player) == 12 draw_sprite_ext(sprite_get("fspecial_wand"), image_index+8, x, y, 2*spr_dir,2,0,c_white,1);
                else if get_player_color(player) == 13 draw_sprite_ext(sprite_get("fspecial_wand"), image_index, x, y, 2*spr_dir,2,0,c_white,1);
            }
            if (window == 2){
                draw_sprite_ext(sprite_get("fspecial_sparkle"), 0, x, y, 2*spr_dir,2,0,c_white,1);
            }
            if (window == 3 && window_timer < 10){
                draw_sprite_ext(sprite_get("fspecial_sparkle"), (window_timer/5)+1, x, y, 2*spr_dir,2,0,c_white,1);
            }
        }
        if (attack == AT_USPECIAL){
            var grov_escapebeam = 0
            if get_player_color(player) == 13 grov_escapebeam = 1
            if get_player_color(player) == 12 grov_escapebeam = 2
            if window == 1 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, 1.5*spr_dir ,2000,0,c_white,   max(((window_timer-12)/3)-0.5, 0)   );
            if window == 2 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, 2*spr_dir ,2000,0,c_white,   (sin((window_timer+1)*pi*0.5)+9) *0.05   ); //Hello again, Desmos
            if window == 3 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, (2*spr_dir)*max((1-(max(window_timer-2,0))/7),0) ,2000,0,c_white,   max((1-(max(window_timer-4,0))/7)-0.5,0)   );
        }
        if (attack == AT_NSPECIAL){
            if (window == 2){
                char_height = grov_char_height + 26
                // Forward
                draw_nspecial_ui(x+(44*spr_dir), y-42, AT_FTHROW, 2)
                // Back
                draw_nspecial_ui(x+(44*-spr_dir), y-42, AT_NTHROW, 0)
                // Up
                draw_nspecial_ui(x, y-78, AT_UTHROW, 1)
                // Down
                draw_nspecial_ui(x, y-4, AT_DTHROW, 3)
            }
            else char_height = grov_char_height
        }
        if (attack == AT_DTHROW){
            if (image_index == 1){
                if      get_player_color(player) == 12 draw_sprite_ext(sprite_get("dthrow_trail"), 2, x, y, 2*spr_dir,2,0,c_white,1);
                else if get_player_color(player) == 13 draw_sprite_ext(sprite_get("dthrow_trail"), 0, x, y, 2*spr_dir,2,0,c_white,1);
            }
            if (image_index == 2){
                if      get_player_color(player) == 12 draw_sprite_ext(sprite_get("dthrow_trail"), 3, x, y, 2*spr_dir,2,0,c_white,1);
                else if get_player_color(player) == 13 draw_sprite_ext(sprite_get("dthrow_trail"), 1, x, y, 2*spr_dir,2,0,c_white,1);
            }
        }
    break;
}

// shader_end();

#define draw_nspecial_ui(draw_x, draw_y, nattack, nindex)
var draw_color = c_white;
if move_cooldown[nattack] > 0 draw_color = c_gray;
draw_sprite_ext(sprite_get("nspecial_ui"), 0, draw_x, draw_y, 2,2,0,draw_color,1);
draw_sprite_ext(sprite_get("nspecial_cooldown"), nindex, draw_x-8, draw_y-8, 2,2,0,draw_color,1);
