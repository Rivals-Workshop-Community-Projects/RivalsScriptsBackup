//post-draw
switch (state){
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_FSPECIAL){
            if (window != 4 || window_timer == 0){
                if      get_player_color(player) == 12 draw_sprite_ext(sprite_get("fspecial_wand"), image_index+8, x, y, 2*spr_dir,2,0,c_white,1);
                else if get_player_color(player) == 13 draw_sprite_ext(sprite_get("fspecial_wand"), image_index, x, y, 2*spr_dir,2,0,c_white,1);
            }
            var sparkle_color = get_player_color(player) == 12 ? /*#*/$9ae2d3:c_white;
            if (window == 2){
                draw_sprite_ext(sprite_get("fspecial_sparkle"), 0, x, y, 2*spr_dir,2,0,sparkle_color,1);
            }
            if (window == 3 && window_timer < 10){
                draw_sprite_ext(sprite_get("fspecial_sparkle"), (window_timer/5)+1, x, y, 2*spr_dir,2,0,sparkle_color,1);
            }
        }
        if (attack == AT_USPECIAL){
            var grov_escapebeam = 0;
            if get_player_color(player) == 13 grov_escapebeam = 1;
            if get_player_color(player) == 12 grov_escapebeam = 2;
            if window == 1 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, 1.5*spr_dir ,2000,0,c_white,   max(((window_timer-12)/3)-0.5, 0)   );
            if window == 2 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, 2*spr_dir ,2000,0,c_white,   (sin((window_timer+1)*pi*0.5)+9) *0.05   ); //Hello again, Desmos
            if window == 3 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, (2*spr_dir)*max((1-(max(window_timer-2,0))/7),0) ,2000,0,c_white,   max((1-(max(window_timer-4,0))/7)-0.5,0)   );
        }
        if (attack == AT_NSPECIAL){
            var fade = 1;
            if window == 1{
                fade = ((0.5*min(window_timer+1,2)));
            }
            else if window == 3{
                fade = (1-(0.2*min(window_timer+1,5)));
            }
            draw_nspecial_ui(x+(44*spr_dir), y-42, AT_FTHROW, 2, fade);
            draw_nspecial_ui(x+(44*-spr_dir), y-42, AT_NTHROW, 0, fade);
            draw_nspecial_ui(x, y-78, AT_UTHROW, 1, fade);
            draw_nspecial_ui(x, y-4, AT_DTHROW, 3, fade);
        }
        if (attack == AT_FTHROW || attack == AT_NTHROW || attack == AT_UTHROW || attack == AT_DTHROW){
            if window == 1{
                var fade = (1-(0.2*min(window_timer+1,5)));
                draw_nspecial_ui(x+(44*spr_dir), y-42, AT_FTHROW, 2, fade);
                draw_nspecial_ui(x+(44*-spr_dir), y-42, AT_NTHROW, 0, fade);
                draw_nspecial_ui(x, y-78, AT_UTHROW, 1, fade);
                draw_nspecial_ui(x, y-4, AT_DTHROW, 3, fade);
            }
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

#define draw_nspecial_ui(draw_x, draw_y, nattack, nindex, nalpha)
var draw_color = c_white;
if move_cooldown[nattack] > 0 draw_color = c_gray;
draw_sprite_ext(sprite_get("nspecial_ui"), 0, draw_x, draw_y, 2,2,0,draw_color,nalpha);
draw_sprite_ext(sprite_get("nspecial_cooldown"), nindex, draw_x-8, draw_y-8, 2,2,0,draw_color,nalpha);