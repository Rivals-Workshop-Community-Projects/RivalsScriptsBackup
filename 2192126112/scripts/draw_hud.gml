//demoman more like lamoman

var temp_color = c_white;
draw_set_colour(c_white);

//draw_text_ext_transformed(temp_x+180, temp_y-34,string(hsp), 0, 40 , 1.25 , 1.25, 0);


if (call_count = 0)
{
    draw_sprite_ext(sprite_get("callicon"), 0, temp_x+170, temp_y-40, 1, 1, 0, temp_color, 1);
    draw_sprite_ext(sprite_get("callicon"), 0, temp_x+135, temp_y-40, 1, 1, 0, temp_color, 1);
    draw_sprite_ext(sprite_get("callicon"), 0, temp_x+100, temp_y-40, 1, 1, 0, temp_color, 1);
}

if (call_count = 1)
{
    draw_sprite_ext(sprite_get("callicon"), 0, temp_x+170, temp_y-40, 1, 1, 0, temp_color, 1);
    draw_sprite_ext(sprite_get("callicon"), 0, temp_x+135, temp_y-40, 1, 1, 0, temp_color, 1);

}

if (call_count = 2)
{
    draw_sprite_ext(sprite_get("callicon"), 0, temp_x+170, temp_y-40, 1, 1, 0, temp_color, 1);

}



if (meem_num = 0)
{

draw_sprite_ext(sprite_get("meemicon"), 0, temp_x+200, temp_y-37, 1, 1, 0, temp_color, 1);
}

if (meem_num != 0)
{

draw_sprite_ext(sprite_get("meemiconx"), 0, temp_x+200, temp_y-37, 1, 1, 0, temp_color, 1);
}

//draw_debug_text( temp_x+210, temp_y-30, string( hsp ));
//draw_debug_text( temp_x+0, temp_y-30, string( y ));

//draw_debug_text( temp_x+170, temp_y-30, string( meem_num ));