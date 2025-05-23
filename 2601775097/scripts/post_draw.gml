//post-draw

//gliding UI
if (glide_ui && draw_indicator)
{
    draw_sprite_stretched_ext(spr_pixel, 0, floor(x-37), floor(y-char_height-32), 69, 6, c_black, 1); //outline
    draw_sprite_stretched_ext(spr_pixel, 0, floor(x-35), floor(y-char_height-30), 65, 2, $316f09, 1); //empty
    draw_sprite_stretched_ext(spr_pixel, 0, floor(x-35), floor(y-char_height-30), ceil(glide_stamina/(1.53*(glide_stamina_max/100))), 2, $78ff5f, 1); //full
}

if (!hitpause)
{
    //accel blitz effect
    if (accel_act_time > 0)
    {
        if (accel_action_color)
        {
            gpu_set_blendmode(bm_add);
            gpu_set_fog(1, light_col, 0, 1);
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*2, image_yscale*2, 0, light_col, 0.5);
            gpu_set_fog(0, c_white, 0, 0);
            gpu_set_blendmode(bm_normal);
        }
    }
}

shader_start();

if (charge_color)
{
    gpu_set_blendmode(bm_add);
    gpu_set_fog(1, light_col, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*2, image_yscale*2, 0, light_col, light_alpha);
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_blendmode(bm_normal);
}

//attack stuff that needs to be drawn regardless of hitpause
if (is_attacking) switch (attack)
{
    case AT_USTRONG:
        draw_sprite_ext(sprite_get("fx_ustrong"), image_index+24*burnbuff_active, x, y, 2*spr_dir, 2, 0, c_white, 1);
        break;
    case AT_NTHROW: case AT_NSPECIAL_AIR: //light dagger
        draw_sprite_ext(sprite_get("fx_skill0"), image_index+(20/(1+burnbuff_active)*free)+(40*burnbuff_active), x, y, 2*spr_dir, 2, 0, c_white, 1);
        break;
    case AT_EXTRA_2: //light hookshot
        if (attack == AT_EXTRA_2 && window < 4)
        {
            draw_sprite_ext(
                sprite_get("fx_skill9"), image_index + burnbuff_active * (image_number/2 - 2),
                x - 88 * spr_dir, y - 94 - free * 2, 2*spr_dir, 2, 0, c_white, 1
            );
        }
        break;
    case AT_EXTRA_3: //searing descent
        if (window == 6 || window == 7) draw_sprite_ext(sprite_get("fx_skill10"), state_timer*0.4, x, y, 2, 2, 0, c_white, 1);
        break;
    case AT_UTHROW: //force leap
        if (window == 2 && special_down)
        {
            var start_move = ease_quadOut(0, 1, min(window_timer, 5), 5);

            draw_sprite_ext(sprite_get("fx_skill2_range"), 0, x, y - 32, 2 * spr_dir, 2, 0, c_white, start_move*0.35);
            draw_sprite_ext(
                sprite_get("fx_skill2_arrow"),
                state_timer*0.4,
                lengthdir_x(start_move * 20, angle_saved) + x,
                lengthdir_y(start_move * 20, angle_saved) + y - 32,
                2, 2, angle_saved, c_white, start_move
            );
        }
        break;
    case AT_USTRONG_2:
        gpu_set_blendmode(bm_add);
        if (window > 3)
        {
            //ustrong2_pillar_timer
            draw_sprite_ext(
                sprite_get("fx_ustrong2"),
                get_gameplay_time(),
                x,
                view_get_yview(),
                get_hitbox_value(attack, 2, HG_WIDTH)/100+ustrong2_pillar_end_timer/10,
                4,
                0,
                c_white,
                0.8-ustrong2_pillar_end_timer/10);
        }
        gpu_set_blendmode(bm_normal);
        break;
    case 49: //lord's punishment
        //background work
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("fx_od_fg"), floor(get_gameplay_time()*0.2), view_get_xview()+view_get_wview()/2, view_get_yview(), 2, 2, 0, c_white, (0.4+od_color_flash*0.05)*od_bg_alpha);
        draw_sprite_ext(sprite_get("fx_od_fg"), floor(get_gameplay_time()*0.2), view_get_xview()+view_get_wview()/2, view_get_yview(), -2, 2, 0, c_white, (0.4+od_color_flash*0.05)*od_bg_alpha);
        draw_sprite_ext(sprite_get("fx_od_bg"), 0, view_get_xview()+view_get_wview()/2, view_get_yview(), -2, 2, 0, c_white, (0.1+!od_color_flash*0.1)*od_bg_alpha);

        draw_sprite_stretched_ext(spr_pixel, 0, view_get_xview(), view_get_yview(), view_get_wview()+1, view_get_hview()+1, light_col, od_rect_alpha);
        gpu_set_blendmode(bm_normal);

        //sword
        if (window >= 12 && window <= 18) draw_sprite_ext(sprite_get("fx_od_sword"), od_sword_image, x, y, 2*spr_dir, 2, 0, c_white, 1);
        if (window == 17) draw_sprite_ext(sprite_get("fx_od_slash"), 0, x, y, 2*spr_dir, 2, 0, c_white, od_slash_alpha);
        break;
}

shader_end();

//small MP guage
if (mp_mini_timer > 0 && draw_indicator)
{
    var mp_x = floor(x) - 24;
    var mp_y = floor(y) + 16;

    //MP gauge
    var alpha = mp_mini_timer/20;
    draw_sprite_stretched_ext(spr_pixel, 0, mp_x + 2, mp_y - 4, 52, 4, mp_cur <= 100 ? $8b1733 : $e9973e, alpha); // background
    for (var i = 0; i <= 2; ++i) //fill
    {
        draw_sprite_stretched_ext(
            spr_pixel, 0,
            mp_x + 0 + i * 2,
            mp_y - 2 - i * 2,
            floor(mp_cur)/2 + 2 - 50 * (mp_cur > 100),
            2,
            mp_cur <= 100 ? mp_color : mp_color_ex,
            alpha
        );
    }

    draw_sprite_ext(sprite_get("hud_mp_small"), 0, mp_x - 4, mp_y - 18, 2, 2, 0, c_white, alpha); //frame
    draw_set_alpha(alpha);
    draw_debug_text(mp_x - 2, mp_y - 14, string(floor(mp_cur))); //text
    draw_set_alpha(1);
}

//skill select (playtest mode)
if (playtesting)
{
    if (room != asset_get("network_char_select") && room != asset_get("workshop_room"))
    {
        var small_meter_x = floor(x)-104;
        var small_meter_y = floor(y)+16;
        if (x < 100) small_meter_x = 100-104;
        if (x > 860) small_meter_x = 860-104;
        if (y > 466) small_meter_y = 466+16;
        if (y < 148) small_meter_y = 148+16;
    }
    else
    {
        var small_meter_x = 4;
        var small_meter_y = clamp(floor(y)+24, 168, 440);
    }

    draw_sprite_stretched_ext(spr_pixel, 0, small_meter_x + 14, small_meter_y - 104, 52, 4, mp_cur <= 100 ? $8b1733 : $e9973e, 1); // background

    for (var i = 0; i <= 2; ++i) //fill
    {
        draw_sprite_stretched_ext(
            spr_pixel, 0,
            small_meter_x + 12 + i * 2,
            small_meter_y - 102 - i * 2,
            floor(mp_cur)/2 + 2 - 50 * (mp_cur > 100),
            2,
            mp_cur <= 100 ? mp_color : mp_color_ex,
            1
        );
    }


    draw_sprite_ext(sprite_get("hud_mp_small"), 0, small_meter_x + 8, small_meter_y - 118, 2, 2, 0, c_white, 1); //frame
    draw_debug_text(small_meter_x + 12, small_meter_y - 90, "MP: " + string(floor(mp_cur))); //text
}

if (fury_indc_time > 0)
{
    gpu_set_fog(true, fire_col, 0, 1)
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, 2*spr_dir, 2, spr_angle, c_white, fury_indc_time/skill_indc_time_set);
    gpu_set_fog(false, c_white, 0, 1)
}
if (polaris_indc_time > 0)
{
    gpu_set_fog(true, light_col, 0, 1)
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, 2*spr_dir, 2, spr_angle, c_white, polaris_indc_time/skill_indc_time_set);
    gpu_set_fog(false, c_white, 0, 1)
}

if (alt_cur == 19) //genesis alt effect
{
    if (genesis_window_timer > 0) //genesis alt stopped responding wait anim
    {
        gpu_set_fog(1, c_white, 0, 1);
        draw_sprite_ext(sprite_index, image_index, x, y, 2 * spr_dir, 2, spr_angle, c_white, 0.5);
        gpu_set_fog(0, c_white, 0, 0);

        //genesis wait animation stops responding
        draw_sprite_ext(sprite_get("fx_genesis_window"), lerp(0, 3, genesis_window_timer/genesis_window_timer_max), x - 32, y - 48, 2, 2, 0, c_white, 1);
        if (genesis_window_timer >= genesis_window_timer_max && genesis_window_timer <= genesis_window_timer_max+2)
        {
            draw_sprite_ext(spr_pixel, 0, x - 24, y - 32, lerp(0, 48, genesis_load_tracker/wait_length), 6, 0, $3ded5d, 1);
        }
    }

    if (state == PS_HITSTUN || hitpause && (!is_attacking || attack != 3) || is_attacking && attack == AT_INTRO && window == 6 || notice_time > -1)
    {
        gpu_set_blendmode(bm_add);
        static_colorO[8*4+0] = 255;
        static_colorO[8*4+1] = 0;
        static_colorO[8*4+2] = 0;
        shader_start();
        draw_sprite_ext(
            sprite_index,
            image_index,
            x + draw_x + (random_func(0, 3, true)-1)*(2 + abs(hitpause ? old_hsp : hsp)),
            y + draw_y + (random_func(1, 3, true)-1)*(2 + abs(hitpause ? old_vsp : vsp)),
            2 * spr_dir,
            2,
            spr_angle,
            c_white,
            state == PS_HITSTUN ? lerp(1, 0, state_timer/hitstun_full) : (notice_time > -1 ? 0.5 : 1)
        );
        static_colorO[8*4+0] = colorO[8*4+0];
        static_colorO[8*4+1] = colorO[8*4+1];
        static_colorO[8*4+2] = colorO[8*4+2];
        shader_end();
        gpu_set_blendmode(bm_normal);
    }
}

/// textDraw(x, y, string, color = c_white, font = "fname", align = fa_center, outline = false, alpha = 1)
#define textDraw
{
    //textDraw(x, y, string, color, font, align, outline, alpha)
    var x = argument[0], y = argument[1], string = argument[2];
    var color = argument_count > 3 ? argument[3] : c_white;
    var font = argument_count > 4 ? argument[4] : "fname";
    var align = argument_count > 5 ? argument[5] : fa_center;
    var outline = argument_count > 6 ? argument[6] : false;
    var alpha = argument_count > 7 ? argument[7] : 1;

    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, c_black, c_black, c_black, c_black, alpha);
        }
    }
    if (alpha != 1) alpha = alpha;

    draw_text_color(x, y, string, color, color, color, color, alpha);
}