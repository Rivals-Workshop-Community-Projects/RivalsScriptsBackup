//post_draw.gml

//chao color compatibility
if (instance_exists(pet_obj) && "chao_type" in pet_obj)
{
    for (var i = 0; i < array_length(pet_obj.chao_colO); i++)
    {
        if (i % 4 < 3) static_colorO[i] = pet_obj.chao_colO[i]; //RGB
        else static_colorO[i] = 1; //controls transperency
    }
    for (var i = 0; i < array_length(pet_obj.chao_colB); i++) static_colorB[i] = pet_obj.chao_colB[i];
}

shader_start();

if (is_attacking) switch (attack)
{
    case AT_NAIR:
        if (play_nair_fx) draw_sprite_ext(sprite_get("fx_nairshield"), nair_fx_time, x, y, 2 * spr_dir, 2, 0, c_white, 1);
        break;
    case AT_USPECIAL:
        //changes colors whenever out on sonic's vfx
        if (can_spawn_trick_ring && image_index < 6)
        {
            shader_end();
            //shader manipulation
            rainbow_ring_shader = true;
            user_event(15);

            //drawing ring
            shader_start();
            draw_sprite_ext(
                sprite_get("fx_uspec_ringtoss"),
                image_index + (6 * free) + (12 * uses_super_sprites),
                x, y,
                2 * spr_dir, 2,
                0, c_white, 1
            );
            shader_end();
            shader_start();

            rainbow_ring_shader = false;
            user_event(15);
        }
        break;
}

if (runeC_spinjump && state == PS_FIRST_JUMP) draw_sprite_ext(sprite_get("fx_runeC_ball"), image_index, x, y, 2 * spr_dir, 2, 0, c_white, 0.3);

shader_end();

//rainbow ring color
trick_ring_hue += 6;

if (is_attacking && !hitpause)
{
    if (attack == AT_INTRO)
    {
        //plane
        draw_sprite_ext(
            sprite_get("intro_plane"),
            intro_plane_img + 8 * (alt_cur == 14),
            intro_plane_x,
            intro_plane_y,
            2 * spr_dir, 2, 0, c_white, 1
        );

        //sonic on plane
        if (window == 1 && alt_cur != 14)
        {
            shader_start();
            draw_sprite_ext(
                sprite_get("intro_plane_sonic"),
                intro_plane_img,
                intro_plane_x,
                intro_plane_y,
                2 * spr_dir, 2, 0, c_white, 1
            );
            shader_end();
        }
    }
}

//waiting notification
if (sprite_index == sprite_get("wait") && image_index >= 36 && image_index < 41)
{
    if (match_time[0] <= 99)
    {
        draw_debug_text(
            x - 18 + (spr_dir == 1 ? 8 : -6) + 4 * (match_time[0] < 10),
            y - 86,
            string(match_time[0]) + ((match_time[1]) < 10 ? ":0" : ":") +
            string(match_time[1])
        );
    }
    else //if sonic is waiting for more than 99 minutes he will put ... instead
    {
        draw_debug_text(
            x - 4 * spr_dir,
            y - 86,
            ". . ."
        );
    }
}

//final smash effects
if (is_attacking && attack == 49 && window == 5) draw_sprite_ext(sprite_get("fx_fs_ball"), state_timer * 0.5, x, y, 2 * spr_dir, 2, 0, c_white, 0.8);
with (oPlayer) if (other.fs_trapped_player[player]) with (other) //stun
{
    draw_sprite_ext(sprite_get("fx_fs_stun"), state_timer/2 + (10 * other.player), other.x, floor(other.y - char_height / 1.75), 2, 2, 0, c_white, 1);
}

if (object_index == oTestPlayer) //playtest boost meter
{
    var x_size = 80;
    var meter_r = cur_colors[boost_mode ? 0 : 1][@ 0];
    var meter_g = cur_colors[boost_mode ? 0 : 1][@ 1];
    var meter_b = cur_colors[boost_mode ? 0 : 1][@ 2];
    var meter_col = make_color_rgb(meter_r, meter_g, meter_b);

    if (room != asset_get("network_char_select") && room != asset_get("workshop_room"))
    {
        var small_meter_x = floor(x)-94;
        var small_meter_y = floor(y)-100;
        if (x < 100) small_meter_x = 100-94;
        if (x > 860) small_meter_x = 860-94;
        if (y > 466) small_meter_y = 466-100;
        if (y < 148) small_meter_y = 148-100;
    }
    else
    {
        var small_meter_x = 6;
        var small_meter_y = clamp(floor(y)-96, 48, 320);
    }

    draw_sprite_stretched_ext(sprite_get("hud_meter_fill"), 1, small_meter_x + 4, small_meter_y + 6, x_size, 8, c_black, 0.5); //back
    if (boost_cur > 0) //fill
    {
        draw_sprite_stretched_ext(sprite_get("hud_meter_fill"), 0, small_meter_x + 4, small_meter_y + 6, lerp(0, 1, boost_cur/boost_max) * x_size, 8, meter_col, 1);
        draw_sprite_ext(sprite_get("hud_meter_fill"), 1, small_meter_x + 4 + lerp(0, 1, boost_cur/boost_max) * x_size, small_meter_y + 6, 2, 1, 0, c_white, 0.5);
    }
    draw_sprite_ext(sprite_get("hud_boost_playtest"), 0, small_meter_x - 4, small_meter_y, 2, 2, 0, c_white, 1); //meter box
}