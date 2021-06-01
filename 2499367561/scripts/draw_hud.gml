//draw_hud

if(move_cooldown[AT_DSPECIAL] <= 0){
    draw_sprite(sprite_get("void_icon"), 0, temp_x + 180, temp_y - 18)
}else{
    draw_sprite(sprite_get("void_icon"), 1, temp_x + 180, temp_y - 18)
}