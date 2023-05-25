//this code here was written by Lukaru! they're super cool!
// Trans outline
if (get_player_color(player) == 8){
    FlagPart(make_colour_rgb(85, 205, 252), 1, 0); // mayablue
    FlagPart(make_colour_rgb(247, 168, 223), 3/5, 1/5); // pink
    FlagPart(c_white, 1/5, 2/5);
    gpu_set_fog(0, c_white, 0, 0);
}

// trans flag
if ("transcounter" in self && transcounter != 0 && draw_indicator)
{
    var mayablue = make_colour_rgb(85, 205, 252);
    var pinkkk = make_colour_rgb(247, 168, 223);
    var drawyyy = y - 30;
    draw_set_alpha(0.5);
    draw_rectangle_color(x-transcounter,drawyyy-30,x+transcounter,drawyyy-19,mayablue,mayablue,mayablue,mayablue,false);
    draw_rectangle_color(x-transcounter,drawyyy-18,x+transcounter,drawyyy-7,pinkkk,pinkkk,pinkkk,pinkkk,false);
    draw_rectangle_color(x-transcounter,drawyyy-6,x+transcounter,drawyyy+5,c_white,c_white,c_white,c_white,false);
    draw_rectangle_color(x-transcounter,drawyyy+6,x+transcounter,drawyyy+17,pinkkk,pinkkk,pinkkk,pinkkk,false);
    draw_rectangle_color(x-transcounter,drawyyy+18,x+transcounter,drawyyy+29,mayablue,mayablue,mayablue,mayablue,false);
    draw_set_alpha(1);
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}