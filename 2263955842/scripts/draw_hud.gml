// draw hud

if ("char_height" in self){ 
    draw_sprite(sprite_get("uspe_hud"),has_used_uspecial,temp_x + 180, temp_y - 24)
    draw_sprite(sprite_get("nspe_hud"),!move_cooldown[AT_NSPECIAL],temp_x + 155, temp_y - 24)
}


