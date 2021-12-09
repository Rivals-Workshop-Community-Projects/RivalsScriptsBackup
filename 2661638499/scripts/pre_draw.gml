//pre-draw

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
{
    if (attack == UNOWN_ATK.I)
    {
        //the prong is vertical on sprite: needs adjustment
        var angle = (360 + unown_i_angle - 90) % 180;
        shader_start();
        draw_sprite_ext(unown_i_prongs_spr, image_index, 
                        x, y-unown_eye_center_offset, 2, 2, angle, c_white, 1);
        shader_end();
    }
}

if (unown_y_water.timer > 0)
{
    var water_distance = abs(unown_y_water.start_y - unown_y_water.tip_y) - 6;
    var water_max = 64; //size of sprite
    var beam_scale = max(1, water_distance/(water_max * 2));
    
    draw_sprite_part_ext(unown_y_waterbeam_spr, unown_y_water.index, 
                         0, max(0, water_max-floor(water_distance/2)), 
                         20, min(floor(water_distance/2), water_max), 
                         unown_y_water.start_x - 20, unown_y_water.start_y, 2, 2*beam_scale, c_white, 1);

    //ends of the beam
    draw_sprite_ext(unown_y_waterstart_spr, unown_y_water.index, 
                    unown_y_water.start_x, unown_y_water.start_y, 2, 2, 0, c_white, 1);

    draw_sprite_ext(unown_y_watertip_spr, unown_y_water.index, 
                    unown_y_water.tip_x, unown_y_water.tip_y, 2, 2, 0, c_white, 1);
}

if (inward_hidden_power_timer > 0)
{
    shader_start();
    draw_sprite(vfx_hiddenpower_spr, floor(inward_hidden_power_timer/2), x, y - unown_eye_center_offset);
    shader_end();
}

//==================================================================
//none of this should ever affect gameplay
draw_x = 0;
draw_y = 0;
if (unsafe_corrupt_timer > 0)
{
    if (0 == random_func(unsafe_corrupt_timer%24, 8, true))
    {
        unsafe_frame = random_func((1 + unsafe_corrupt_timer)%24, 8, true);
    }
    var shudder_factor = 0.01 * ease_quadIn(0, 100, unsafe_corrupt_timer, unsafe_corrupt_timer_max);
    draw_y = -8 + random_func((2 + unsafe_corrupt_timer)%24, 16, true);
    draw_x = -8 + random_func((3 + unsafe_corrupt_timer)%24, 16, true);
    draw_y *= shudder_factor; draw_x *= shudder_factor;
    sprite_index = unsafe_spr;
    image_index = unsafe_frame; 
    unsafe_corrupt_timer--;
}