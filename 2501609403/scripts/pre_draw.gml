// pre-draw

//Jackpot
if (jackpot_shading = true){
    if (jackpot_timer == 1){
        var jack_stars = spawn_hit_fx((x), y, fx_jackstars);
        jack_stars.x = x;
        jack_stars.y = y;
    }
}

//This is a modified version of Lukaru's flag code
if (ani_alt == true){

FlagPart(make_colour_rgb(255, 255, 255), 1/5, 0); // white
FlagPart(make_colour_rgb(255, 48, 48), 1/5, 1/5); // red
FlagPart(make_colour_rgb(255, 132, 232), 1/5, 2/5); // pink
FlagPart(make_colour_rgb(25, 176, 254), 1/5, 3/5); // blue
FlagPart(make_colour_rgb(186, 246, 1), 1/5, 4/5); // green
gpu_set_fog(0, c_white, 0, 0);

}
//Lukaru Flag Code
#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*0+draw_x-sprite_xoffset*(1+small_sprites), y+j*0+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}