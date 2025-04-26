//post_draw.gml
//we use this script to draw over the player character, both text and sprites can be used here

shader_start(); //everything between this and shader_end(); will be affected by alts

//respawn platform - check if the player is either in the respawn state or taunting while in the respawn state
if (state == PS_RESPAWN || respawn_taunt > 0) draw_sprite_ext(sprite_get("plat_post"), game_time * plat_speed, x, y, small_sprites + 1, small_sprites + 1, 0, c_white, 1);

shader_end();


//particle system
for(var i = 0; i < array_length(fx_part); i++)
{
    var cur_part = fx_part[i];

    if (cur_part.shader) shader_start();
    if (cur_part.layer == -1)
    {
        gpu_set_fog(cur_part.filled, cur_part.color, 0, 1);
        draw_sprite_ext(
            cur_part.spr,
            cur_part.img,
            cur_part.xpos,
            cur_part.ypos,
            cur_part.xscale * cur_part.dir,
            cur_part.yscale,
            cur_part.angle,
            cur_part.color,
            cur_part.alpha
        )
        gpu_set_fog(false, cur_part.color, 0, 0);
    }
    if (cur_part.shader) shader_end();
}

if (is_attacking) switch (attack)
{
    //fspec indicator + fspec dusts
    case AT_FSPECIAL:
        shader_start(); //this makes it capture the pallete changes
        //draw indicator
		if (window == 1 && window_timer > 0 || window > 1 && window < 4)
        {
            draw_sprite_ext(
                sprite_get("fx_fspec_crosshair"),
                0,
                fspec_tether_pos[0], //these are the recorded coordinates of fspec, stored in an array
                fspec_tether_pos[1], //0 is X and 1 is Y, we also use them later for the tether "rope" distance
                2,
                2,
                game_time * 5, //rotates indicator based on the game_time, so it always rotates
                c_white,
                1
            );
        }
        if (window == 4) //draw tether "rope"
        {
            //the point distance stretches the tether "rope" sprite according to the distance and the width of the sprite
            draw_sprite_ext(
                sprite_get("fx_fspec_tether"),
                window_timer * 0.4,
                x+48*spr_dir,
                y-char_height/2,
                point_distance(x+48*spr_dir, y-char_height/2, fspec_tether_pos[0], fspec_tether_pos[1]) / sprite_get_width(sprite_get("fx_fspec_tether")),
                1,
                point_direction(x+48*spr_dir, y-char_height/2, fspec_tether_pos[0], fspec_tether_pos[1]), //returns an angle number between these 2 points
                c_white,
                1);
        }
        shader_end();
        break;
}

//written by muno
#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}

//text_draw(x, y, string, color, font, align, alpha, outline, line_alpha, line_col)
#define text_draw
{
    var x = argument[0];
    var y = argument[1];
    var string = argument[2];
    var color = argument[3];
    var font = argument[4];
    var align = argument[5];
    var alpha = argument_count > 6 ? argument[6] : 1;
    var outline = argument_count > 7 ? argument[7] : false;
    var line_alpha = argument_count > 8 ? argument[8] : 1;
    var line_col = argument_count > 9 ? argument[9] : c_black;

    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline && line_alpha > 0)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, line_col, line_col, line_col, line_col, line_alpha * alpha);
        }
    }

    draw_text_color(x, y, string, color, color, color, color, alpha);
}