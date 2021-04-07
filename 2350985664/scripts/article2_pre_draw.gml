//article2_pre_draw
// drawing yinyang effect

if (state != 1)
{
    draw_sprite_ext(sprite_get("familiar_circle"),image,x,y,scale,scale,0,col,1)
}

if (has_rune("L"))
{
    draw_sprite(sprite_get("familiar_sing"),sing_image,x,y)
}

