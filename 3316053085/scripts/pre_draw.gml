//pre_draw.gml

shader_start();
//respawn platform
if (state == PS_RESPAWN || respawn_taunt > 0) draw_sprite_ext(sprite_get(!s_alt && alt_cur == 14 ? "plat_pre_gb" : "plat_pre"), game_time * plat_speed, x, y, 2, 2, 0, c_white, 1);

if (attack == AT_INTRO && is_attacking && state_timer < intro_total_time)
{
    if (intro_light_size > 0)
    {
        gpu_set_blendmode(bm_add)
        draw_sprite_ext(
            sprite_get("fx_intro_light"),
            state_timer * 0.3,
            x + intro_start_offset,
            y - 96, intro_light_size, intro_light_size, 0, c_white, intro_light_size/2
        );
        gpu_set_blendmode(bm_normal)
    }

    draw_sprite_ext(
        sprite_get(!s_alt && alt_cur == 14 ? "fx_intro_gate_gb" : "fx_intro_gate"),
        lerp(0, sprite_get_number(sprite_get("fx_intro_gate")), state_timer/intro_total_time),
        x + intro_start_offset,
        y, 2, 2, 0, c_white, 1
    );
}
shader_end();

if (aftimg_drawn > 0) //afterimages
{
    static_colorO[8*4+0] = static_colorO[7*4+0]; //change outline color
    static_colorO[8*4+1] = static_colorO[7*4+1]; //to the secondary vfx color
    static_colorO[8*4+2] = static_colorO[7*4+2]; //it looks cooler
    shader_start();
    gpu_set_blendmode(bm_add);
    for (var i = aftimg_drawn-aftimg_gaps+1; i > 0; i -= aftimg_gaps)
    {
        var pos = (cur_aftimg + i) % aftimg_total;
        draw_sprite_ext(
            aftimg[pos].spr,
            aftimg[pos].img, 
            aftimg[pos].xpos,
            aftimg[pos].ypos,
            2 * aftimg[pos].dir, 2,
            aftimg[pos].rot,
            merge_color(
                make_color_rgb(static_colorO[24]*255, static_colorO[25]*255, static_colorO[26]*255),
                make_color_rgb(static_colorO[28]*255, static_colorO[29]*255, static_colorO[30]*255),
                i/aftimg_total),
            (aftimg_drawn - i) / aftimg_total
        );
    }
    gpu_set_blendmode(bm_normal);
    static_colorO[8*4+0] = orig_line[0]; //changing the outline
    static_colorO[8*4+1] = orig_line[1]; //back to the normal color
    static_colorO[8*4+2] = orig_line[2]; //which is usually black
    shader_end();
}


//heal rune effect
if (is_attacking && attack == AT_DSPECIAL)
{
    if (heal_field_alpha > 0)
    {
        shader_start();
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(
            sprite_get("fx_dspec_healfield"), game_time * 0.17,
            x + get_hitbox_value(attack, 1, HG_HITBOX_X),
            y + get_hitbox_value(attack, 1, HG_HITBOX_Y),
            2, 2, 0, c_white, heal_field_alpha
        );
        gpu_set_blendmode(bm_normal);
        shader_end();
    }

    gpu_set_fog(true, make_color_rgb(static_colorO[28]*255, static_colorO[29]*255, static_colorO[30]*255), 0, 1)
    gpu_set_blendmode(bm_add);
    for (var i_x = -2; i_x <= 2; i_x += 2) for (var i_y = -2; i_y <= 2; i_y += 2) if (i_x != 0 && i_y != 0)
    {
        draw_sprite_ext(
            sprite_index, image_index, x + i_x, y + i_y + (window == 3) * lerp(0, 12, window_timer/window_end),
            (window == 3 ? lerp(2, 3, window_timer/window_end) : 2) * spr_dir,
            (window == 3 ? lerp(2, 3, window_timer/window_end) : 2),
            spr_angle, c_white,
            0.5 * lerp(1, 0, dspec_charge_fx_fade/dspec_charge_fx_fade_max)
        );
    }
    gpu_set_blendmode(bm_normal);
    gpu_set_fog(false, c_white, 0, 1);
}


//byakuren alt
if (!s_alt && alt_cur == 10) //shoutout to mr nart and frtoud for this code i took from laki lol
{
    // draw base
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir*2, 2, spr_angle, c_white, 1);
    shader_end();

    // store current draw state
    gpu_push_state();

    // make everything alpha 0
    gpu_set_alphatestenable(false);
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_sprite_stretched(sprite_get("_pixel"), 0, 0, 0, room_width+1, room_height+1);
    draw_set_alpha(1);
        
    // draw mask (the char)
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir*2, 2, spr_angle, c_white, 1);
        
    // draw second mask (the pattern) -- only gets to be drawn in the space of the char mask
    gpu_set_blendenable(true);
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
    draw_sprite_ext(sprite_get("ex1_mask"), 0, x, y - sprite_get_height(sprite_index)/2, 2, 2, spr_angle, c_white, 1);
        
    // get ready to draw the overlay
    gpu_set_colorwriteenable(true, true, true, true);
    gpu_set_alphatestenable(true);
        
    // draw overlay w/ shader silliness
    set_article_color_slot(1, 198, 97, 189); //this is the purple color
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir*2, 2, spr_angle, c_white, 1);
    shader_end();
    set_article_color_slot(1, get_color_profile_slot_r(alt_cur, 1), get_color_profile_slot_g(alt_cur, 1), get_color_profile_slot_b(alt_cur, 1));

    // playtest zone fix -- from frtoud
    if (object_index == oTestPlayer)
    {
        gpu_set_blendenable(false);
        gpu_set_alphatestenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_sprite_stretched(sprite_get("_pixel"), 0, 0, 0, room_width+1, room_height+1);
    }

    // restore old draw state
    gpu_pop_state();
}