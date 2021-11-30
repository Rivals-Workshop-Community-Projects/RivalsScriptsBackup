if (get_player_color(player) == 24)
{
    FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
    FlagPart(make_colour_rgb(247, 168, 223), 3/40, 18/40); // pink
    FlagPart(c_white, 1/40, 19/40);
    gpu_set_fog(0, c_white, 0, 0);
}

if(attack == AT_USTRONG && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if(window == 2 && window_timer >= 8){
        shader_start()
        draw_sprite_ext(sprite_get("ustrong"),image_index,x-hsp,y+15-vsp,1*spr_dir,1,0,c_white,0.3)
        draw_sprite_ext(sprite_get("ustrong"),image_index,x-hsp,y+35-vsp,1*spr_dir,1,0,c_white,0.1)
        shader_end()
    }
    if(window == 3 && window_timer <= 4){
        shader_start()
        draw_sprite_ext(sprite_get("ustrong"),image_index,x-hsp,y+15-vsp,1*spr_dir,1,0,c_white,0.3)
        draw_sprite_ext(sprite_get("ustrong"),image_index,x-hsp,y+35-vsp,1*spr_dir,1,0,c_white,0.1)
        shader_end()
    }
}
if(attack == AT_DAIR && (state == PS_ATTACK_AIR)){
    if(window == 3){
        shader_start()
        draw_sprite_ext(sprite_index,image_index,x-hsp,y-15-vsp,1*spr_dir,1,0,c_white,0.3)
        draw_sprite_ext(sprite_index,image_index,x-hsp,y-35-vsp,1*spr_dir,1,0,c_white,0.1)
        shader_end()
    }
}
#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}