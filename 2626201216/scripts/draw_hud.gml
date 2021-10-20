user_event(11);

draw_set_font(asset_get("tinyFont"));

if ("temp_min_x" in self && "temp_max_x" in self)
{




}

if (move_cooldown[AT_DSPECIAL] > 0)
{
draw_sprite(sprite_get("hud_inactive"), 1, temp_x + 183, temp_y-29);
}
else
{
draw_sprite(sprite_get("hud_active"), 1, temp_x + 183, temp_y-29); 
}

//draw_text_ext_transformed(temp_x+180, temp_y-34,string(hsp), 0, 40 , 1.25 , 1.25, 0);
//draw_text_ext_transformed(temp_x+230, temp_y-34,string(ground_friction), 0, 40 , 1.25 , 1.25, 0);
//draw_text_ext_transformed(temp_x+260, temp_y-34,string(old_ground_friction), 0, 40 , 1.25 , 1.25, 0);
//draw_text_ext_transformed(temp_x+180, temp_y-34,string(banana.hsp), 0, 40 , 1.25 , 1.25, 0);

//draw_text_ext_transformed(temp_x+280, temp_y-34,string(launch_dir), 0, 40 , 1.25 , 1.25, 0);
//draw_text_ext_transformed(temp_x+230, temp_y-34,string(distance), 0, 40 , 1.25 , 1.25, 0);
//draw_text_ext_transformed(temp_x+280, temp_y-34,string(max_x_puddle[2].x), 0, 40 , 1.25 , 1.25, 0);
//draw_text_ext_transformed(temp_x+280, temp_y-34,string(max_x_puddle[1].state), 0, 40 , 1.25 , 1.25, 0);


//draw_text_ext_transformed(temp_x+380, temp_y-34,string(max_x_puddle[1].x_difference), 0, 40 , 1.25 , 1.25, 0);