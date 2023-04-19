// pre_draw.gml

// SL Mode Glow Color
if(SL_mode_active && !((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_EXTRA_2 || attack == AT_EXTRA_3) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)))
{
    var shade_slot = 6; // Color slot for SL
    var col_R = get_color_profile_slot_r( get_player_color(player), shade_slot);
    var col_G = get_color_profile_slot_g( get_player_color(player), shade_slot);
    var col_B = get_color_profile_slot_b( get_player_color(player), shade_slot);
    
    // Set color to temp variable
    var temp_SL_color = make_color_rgb(col_R,col_G,col_B)
    
    gpu_set_fog(true, temp_SL_color ,0,0);
    // Smaller
    draw_sprite_ext(sprite_index, image_index, x, y + floor(char_height * 0.025), spr_dir * 1.05, 1.05, image_angle, temp_SL_color, .8); // Make a glow from him
    //Bigger
    draw_sprite_ext(sprite_index, image_index, x, y + floor(char_height * 0.05), spr_dir * 1.1, 1.1, image_angle, temp_SL_color, .5); // Make a glow from him
    gpu_set_fog(false,temp_SL_color,0,0);
    
    /*
    // set the character's outline color to red:
    outline_color = [ col_R, col_G, col_B ];
    // tell the shader to update the character's colors:
    init_shader();
    // set the character's outline color back to black, but don't tell the shader that you changed it. This way, if the character action is interrupted before you can manually set the outline color back to black, it will still change back:
    outline_color = [ 0, 0, 0 ];
    */
}
