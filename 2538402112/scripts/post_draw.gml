//post-draw
// shader_start();

switch (state){
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_FSPECIAL && window != 4){
            if get_player_color(player) == 15 draw_sprite_ext(sprite_get("fspecial_wandEA"), image_index, x, y, 2*spr_dir,2,0,c_white,1);
            else if get_player_color(player) == 14 draw_sprite_ext(sprite_get("fspecial_wand_abyss"), image_index, x, y, 2*spr_dir,2,0,c_white,1);
            else draw_sprite_ext(sprite_get("fspecial_wand"), image_index, x, y, 2*spr_dir,2,0,c_white,1);
        }
        if (attack == AT_FSPECIAL && window == 2){
            draw_sprite_ext(sprite_get("fspecial_sparkle"), 0, x, y, 2*spr_dir,2,0,c_white,1);
        }
        if (attack == AT_FSPECIAL && window == 3 && window_timer < 10){
            draw_sprite_ext(sprite_get("fspecial_sparkle"), (window_timer/5)+1, x, y, 2*spr_dir,2,0,c_white,1);
        }
        if (attack == AT_USPECIAL){
            var grov_escapebeam = 0
            if get_player_color(player) == 14 grov_escapebeam = 1
            if get_player_color(player) == 15 grov_escapebeam = 2
            if window == 1 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, 1.5*spr_dir ,2000,0,c_white,   max(((window_timer-12)/3)-0.5, 0)   );
            if window == 2 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, 2*spr_dir ,2000,0,c_white,   (sin((window_timer+1)*pi*0.5)+9) *0.05   ); //Hello again, Desmos
            if window == 3 draw_sprite_ext(sprite_get("escapebeam"), grov_escapebeam, x, y-1000, (2*spr_dir)*max((1-(max(window_timer-2,0))/7),0) ,2000,0,c_white,   max((1-(max(window_timer-4,0))/7)-0.5,0)   );
        }
    break;
}

// shader_end();