// Article 4 -- Placed Object
try
{
if (item_id == 14) // Crossbow arrow
{
    if (instance_exists(projectile)) 
        draw_sprite_ext(sprite_get("arrow"), 0, projectile.x, projectile.y, 1, 1, projectile_angle, c_white, 1);

}
if (item_id == 17) // Hockey puck
{
    //draw_debug_text(x, y, string(launch_timer) + ", " + string(image_index));
    if (instance_exists(projectile))
        draw_sprite_ext(sprite_get("hockey_puck_projectile"), 0, projectile.x, projectile.y, 1, 1, projectile_angle, c_white, 1);

}
if (item_id == 19) // Sawblade
    draw_sprite_ext(sprite_get("sawblade_blade"), 0, x, y, 1, 1, blade_rotation + image_angle, c_white, 1);
if (item_id == 21) // Wrecking Ball
    draw_sprite_ext(sprite_get("wrecking_ball_chain"), 0, x, y, 1, 1, rotation, c_white, 1);
if (item_id == 22) // Floor Saw
    draw_sprite_ext(sprite_get("floor_saw"), (get_gameplay_time() / 3) % 2, blade_x, blade_y, 1, 1, image_angle, c_white, 1);

//if (item_id == 20) // Debug
//    draw_debug_text(x, y, string(bumper_cooldown));
//if (item_id == 23) // Debug
    //draw_debug_text(floor(x), floor(y), string(hsp) + ", " + string(vsp));
    //draw_debug_text(floor(x), floor(y), string(image_index));
}
catch(_exception) {}