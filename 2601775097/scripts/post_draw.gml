//post-draw

//gliding UI
if (glide_ui)
{
    draw_sprite_stretched_ext(spr_pixel, 0, floor(x-37), floor(y-char_height-32), 69, 6, c_black, 1); //outline
    draw_sprite_stretched_ext(spr_pixel, 0, floor(x-35), floor(y-char_height-30), 65, 2, $316f09, 1); //empty
    draw_sprite_stretched_ext(spr_pixel, 0, floor(x-35), floor(y-char_height-30), ceil(glide_stamina/(1.53*(glide_stamina_max/100))), 2, $78ff5f, 1); //full
}

if (!hitstop)
{
    //dust effects
    if (is_attacking)
    {
        switch (attack)
        {
            case AT_UTILT:
                if (window == 3 && window_timer == 0) spawn_base_dust(x, y+10, "jump");
                break;
            case AT_FTILT:
                if (window == 3 && window_timer == 0) spawn_base_dust(x+(48*spr_dir), y, "dash_start", -1*spr_dir);
                break;
            case AT_FSTRONG:
                if (window == 3 && window_timer == 1) spawn_base_dust(x-(16*spr_dir), y, "dash_start");
                break;
            case AT_UTHROW: //force leap
                if (window == 4 && window_timer == 0) spawn_base_dust(x, y-28, "djump", 0, angle_saved-90);
                break;
            case AT_EXTRA_2: //light hookshot
                if (window == 5 && window_timer == 0) spawn_base_dust(x, y-28, "djump", 0, -80*spr_dir);
                break;
            case AT_EXTRA_1: //chasm burster
                if (window_timer == 0)
                {
                    switch (window)
                    {
                        case 1:
                            if (free) spawn_base_dust(x, y, "djump");
                            break;
                        case 4:
                            spawn_base_dust(x-(16*spr_dir), y, "dash_start");
                            break;
                    }
                }
                break;
            case AT_FSTRONG_2:
                if ((window == 3 && window_timer == 0 || window == 7 && window_timer == 4) && !free) spawn_base_dust(x, y, "dash_start");
                break;
        }
    }

    //accel blitz effect
    if (accel_act_time > 0)
    {
        if (charge_color)
        {
            gpu_set_blendmode(bm_add);
            gpu_set_fog(1, light_col, 0, 1);
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, light_col, 0.5);
            gpu_set_fog(0, c_white, 0, 0);
            gpu_set_blendmode(bm_normal);
        }
    }

    //rune A airdash dust
    if (rune_A_active && state == PS_AIRDASH && state_timer == 1) spawn_base_dust(x-32*spr_dir, y-28, "djump", 0, -85*spr_dir);
}

shader_start();
//attack stuff that needs to be drawn regardless of hitpause
if (is_attacking) switch (attack)
{
    case AT_USTRONG:
        draw_sprite_ext(sprite_get("fx_ustrong"), image_index+24*burnbuff_active, x, y, 2*spr_dir, 2, 0, c_white, 1);
        break;
    case AT_NTHROW: case AT_NSPECIAL_AIR:
        draw_sprite_ext(sprite_get("fx_skill0"), image_index+(20/(1+burnbuff_active)*free)+(40*burnbuff_active), x, y, 2*spr_dir, 2, 0, c_white, 1);
        break;
    case AT_EXTRA_2: //light hookshot
        if (window < 4) draw_sprite_ext(
            sprite_get("fx_skill9"), image_index + burnbuff_active * (image_number/2 - 2),
            x - 88 * spr_dir, y - 94 - free * 2, 2*spr_dir, 2, 0, c_white, 1
        );
    case AT_DTHROW: //photon blast
        if (charge_color)
        {
            gpu_set_blendmode(bm_add);
            gpu_set_fog(1, light_col, 0, 1);
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*2, image_yscale*2, 0, light_col, light_alpha);
            gpu_set_fog(0, c_white, 0, 0);
            gpu_set_blendmode(bm_normal);
        }
        break;
    case AT_EXTRA_3:
        if (window == 6 || window == 7) draw_sprite_ext(sprite_get("fx_skill10"), state_timer*0.4, x, y, 2, 2, 0, c_white, 1);
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
if (mp_mini_timer > 0)
{
    var mp_x = floor(x) - 24;
    var mp_y = floor(y) + 16;

    //MP gauge
    var alpha = mp_mini_timer/20;
    if (mp_current <= 100) //normal version
    {
        draw_sprite_stretched_ext(spr_pixel, 0, mp_x + 2, mp_y - 4, 52, 4, $8b1733, alpha); // background
        for (var i = 0; i <= 2; ++i) draw_sprite_stretched_ext(spr_pixel, 0, mp_x + 0 + i * 2, mp_y - 2 - i * 2, floor(mp_current)/2 + 2, 2, mp_color, alpha); // fill
    }
    else if (mp_current > 100) //double mana version
    {
        draw_sprite_stretched_ext(spr_pixel, 0, mp_x + 2, mp_y - 4, 52, 4, $e9973e, alpha); // background
        for (var i = 0; i <= 2; ++i) draw_sprite_stretched_ext(spr_pixel, 0, mp_x + 0 + i * 2, mp_y - 2 - i * 2, floor(mp_current)/2 + 2, 2, mp_color_ex, alpha); // fill
    }
    draw_sprite_ext(sprite_get("hud_mp_small"), 0, mp_x - 4, mp_y - 18, 2, 2, 0, c_white, alpha); //frame
    draw_set_alpha(alpha);
    draw_debug_text(mp_x - 2, mp_y - 14, string(floor(mp_current))); //text
    draw_set_alpha(1);
}

//skill select (playtest mode)
if (playtesting)
{
    menu_x = floor(x)-104;
    menu_y = floor(y)+16;

    if (x < 100) menu_x = 100-104;
    if (x > 860) menu_x = 860-104;
    if (y > 466) menu_y = 466+16;
    if (y < 148) menu_y = 148+16;

    draw_sprite_stretched_ext(spr_pixel, 0, menu_x + 14, menu_y - 104, 52, 4, $8b1733, 1); // background
    for (var i = 0; i <= 2; ++i) draw_sprite_stretched_ext(spr_pixel, 0, menu_x + 12 + i * 2, menu_y - 102 - i * 2, floor(mp_current)/2 + 2, 2, mp_color, 1); // fill
    draw_sprite_ext(sprite_get("hud_mp_small"), 0, menu_x + 8, menu_y - 118, 2, 2, 0, c_white, 1); //frame
    draw_debug_text(menu_x + 12, menu_y - 90, "MP: " + string(floor(mp_current))); //text
    
    /*
    //just in case online CSS messes up again
    if (room == 113)
    {
        if (menu_active) //skill select
        {
            skill_script_type = 2;
            user_event(2);
        }
        else draw_debug_text(menu_x + 16, menu_y + 32, "UP + TAUNT = skill select"); //text
    }
    */
}

#define textDraw
/// textDraw(x, y, string, color = c_white, font = "fname", align = fa_center, outline = false, alpha = 1)
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
#define spawn_base_dust
{
    /// spawn_base_dust(x, y, name, dir = 0, angle = 0)
    ///spawn_base_dust(x, y, name, ?dir, ?angle)

    //This function spawns base cast dusts. Names can be found below.
    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dust_color = 0;
    var x = argument[0], y = argument[1], name = argument[2];
    var dir = argument_count > 3 ? argument[3] : 0;
    var angle = argument_count > 4 ? argument[4] : 0;

    switch (name) {
        default: 
        case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
        case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
        case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
        case "doublejump": 
        case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
        case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
        case "land": dlen = 24; dfx = 0; dfg = 2620; break;
        case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
        case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    }
    var newdust = spawn_dust_fx(floor(x),floor(y),asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if (dir != 0) newdust.spr_dir = dir; //set the spr_dir
    newdust.draw_angle = angle; //sets the angle of the dust sprite
    return newdust;
}