if (state == PS_SPAWN)
{
    draw_sprite_ext(
        sprite_get("boot_sequence"), 
        clamp(state_timer / 5, 0, 13), 
        round(x), 
        round(y), 
        2 * spr_dir, 2, 0, c_white, 1.0 - clamp((state_timer - 60) / 30.0, 0.0, 1.0));
}
if (soft_armor > 0)
{
	gpu_set_fog(1, make_color_rgb(40, 140, 255), 0, 1);
	draw_outline(0.25);
	gpu_set_fog(0, c_white, 0, 0);
	draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), 2 * spr_dir, 2, image_angle, make_color_rgb(30, 248, 255), 0.9);
	gpu_set_fog(1, make_color_rgb(125, 210, 255), 0, 1);
    draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), 2 * spr_dir, 2, image_angle, c_white, 0.3);
	gpu_set_fog(0, c_white, 0, 0);
    
}
if (custom_clone)
{
	var outline_color = invincible ? c_white : make_color_rgb(80, 210, 255);
	
	gpu_set_fog(1, outline_color, 0, 1);
	draw_outline(invincible ? 0.7 : 0.25);
	gpu_set_fog(0, c_white, 0, 0);
    shader_start();
    var xOffset = spr_dir - 1;
    for (var i = 0; i < abs(sprite_width); i++)
    {
        var color = make_color_rgb(150, 210, 255);
        if (i % 2 == 0)
            color = make_color_rgb(90, 110, 140);
        var xScale = 2;
        var yScale = 2;
        draw_sprite_part_ext(sprite_index, image_index, i, 0, 1, sprite_height, floor(x) + (i * xScale * spr_dir) - (sprite_xoffset * xScale) + xOffset, floor(y) - (sprite_yoffset * yScale), xScale, yScale, color, 0.75);
        
    }
    shader_end();
    var playername = get_player_name(player);
    var hud_color = get_player_hud_color(player);
    if (playername != "P1" && playername != "P2" && playername != "P3" && playername != "P4")
    {
    	draw_set_halign(fa_center);
    	draw_set_valign(fa_bottom);
    	draw_outlined_text(x, y - char_height, playername, 1, hud_color);
    }
    draw_sprite_ext(spr_arrow, 0, x, y - char_height - 9, 1, 1, 0, hud_color, 1);
    //draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), 2 * spr_dir, 2, image_angle, c_blue, 1);
}
#define draw_outline(alpha)
{
    draw_sprite_ext(sprite_index, image_index, floor(x) - 2, floor(y), 2 * spr_dir, 2, image_angle, c_white, alpha);
    draw_sprite_ext(sprite_index, image_index, floor(x) + 2, floor(y), 2 * spr_dir, 2, image_angle, c_white, alpha);
    draw_sprite_ext(sprite_index, image_index, floor(x), floor(y) - 2, 2 * spr_dir, 2, image_angle, c_white, alpha);
    draw_sprite_ext(sprite_index, image_index, floor(x), floor(y) + 2, 2 * spr_dir, 2, image_angle, c_white, alpha);
}
#define draw_outlined_text(xx, yy, text, alpha, color)
{
    draw_set_font(asset_get("fName"));
    draw_text_color(xx + 2, yy - 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx - 2, yy + 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx + 2, yy + 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx - 2, yy - 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx + 2, yy, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx - 2, yy, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx, yy + 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx, yy - 2, text, c_black, c_black, c_black, c_black, alpha);
    draw_text_color(xx, yy, text, color, color, color, color, alpha);
}