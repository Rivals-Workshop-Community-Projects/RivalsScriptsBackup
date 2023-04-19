//
draw_sprite_ext(sprite_get("dspec_hud"), 0, temp_x + 180, temp_y - 10, 2, 2, 0, c_white, 1.0);
if(move_cooldown[AT_DSPECIAL] > 0){
    if(dspec_hud_cd == 0){
        draw_sprite_ext(sprite_get("dspec_hud_dark"), 0, temp_x + 180, temp_y - 10, 1, 1, 0, c_white, 0.7);
    }else{
        var height = 12 * (move_cooldown[AT_DSPECIAL]/dspec_hud_cd);
        draw_sprite_part_ext(sprite_get("dspec_hud_dark"), 0, 0, 12 - height, 16, height, temp_x + 180, temp_y + 2 - height, 1, 1, c_white, 0.7);
    }
}