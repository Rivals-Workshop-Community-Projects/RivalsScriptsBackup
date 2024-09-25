//post_draw

//finding the center
//with (oPlayer) rectDraw(x, y, 1, 1, c_red);

//misc effects
shader_start();
if (is_attacking) switch (attack)
{
    case AT_JAB:
        if (window == 15 && window_timer < 12) draw_sprite_ext(sprite_get("fx_jab5"), window_timer/2, x, y, 2*spr_dir, 2, 0, c_white, 1);
        break;
    case AT_DAIR:
        if (window == 2) draw_sprite_ext(sprite_get("fx_dair_air"), window_timer/2, x+27*spr_dir, y+4, 2, dair_fx_y_scale, 0, c_white, 1);
        break;
    case 49: //final smash
        //thank you Pejota for helping me with the wave effect!
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("fx_starward_sword_aoe_wave"), floor(state_timer*0.25), x, y-32, fs_ease_scale, fs_ease_scale, 0, c_white, fs_alpha*0.2);
        draw_sprite_ext(sprite_get("fx_starward_sword_aoe_wave"), floor(state_timer*0.25), x, y-32, fs_ease_scale, fs_ease_scale, 180, c_white, fs_alpha*0.2);
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sprite_get("fx_starward_sword_aoe"), floor(state_timer*0.25), x, y-32, fs_ease_scale, fs_ease_scale, 0, c_white, fs_alpha);

        //clone placeholders
        if (fs_cue_slashes && fs_slash_timer >= 9) draw_sprite_ext(sprite_get("fx_starward_sword_clones"), fs_afterimage_timer*0.8, x, y-32, 2, 2, 0, c_white, 1);
        break;
    case AT_TAUNT_2: //lyre
        if (is_gb && image_index <= 3) //gameboy lyre spawn
        {
            draw_sprite_ext(
                sprite_get("fx_lyre_spawn_gb"),
                image_index, x - sprite_get_xoffset(sprite_get("taunt2")) * spr_dir,
                y - sprite_get_yoffset(sprite_get("taunt2")),
                spr_dir,
                1,
                0,
                c_white,
                1
            );
        }
        break;
}

//uspecial lightning smear
if (uspec_fx_anim[0] < uspec_fx_anim[1])
{
    draw_sprite_ext(
        sprite_get("fx_uspec_flash"), lerp(0, sprite_get_number(sprite_get("fx_uspec_flash")), uspec_fx_anim[0]/uspec_fx_anim[1]),
        uspec_points[0][0], uspec_points[0][1],
        point_distance(uspec_points[0][0], uspec_points[0][1], uspec_points[1][0], uspec_points[1][1])/(uspec_travel_dist * uspec_dist_mult)*2, 1,
        point_direction(uspec_points[0][0], uspec_points[0][1], uspec_points[1][0], uspec_points[1][1]), c_white, 1
    );
}

//halloween qiqi hat
if (qiqi_hat) draw_sprite_ext(sprite_get("qiqi_idle"), image_index, x+1*spr_dir, y-66, 2*spr_dir, 2, 0, c_white, 1);
shader_end();



var hud_x = (has_rune("K")) ? floor(x)-48 : floor(x)+48;
var hud_y = floor(y)-char_height-24;

//timer, only shows when the icon is the normal icon
if (!debug_keqing && draw_indicator)
{
    if (nspec_cd > 0)
    {
        //background circle
        draw_sprite_ext(sprite_get("hud_skill_bg"), 0, hud_x, hud_y, 2, 2, 0, c_white, 0.3);
    
        //extra circle thingi
        draw_sprite_ext(sprite_get("hud_skill_used"), 0, hud_x, hud_y, 2, 2, 0, c_white, 0.3);
        
        //icon
        draw_sprite_ext(sprite_get("hud_skill_icon"), 0, hud_x, hud_y, 2, 2, 0, c_white, 0.4);
    
        //timer
        draw_sprite_ext(sprite_get("hud_skill_timer"), (max(nspec_cd/12)-300)*-1, hud_x, hud_y, 2, 2, 0, c_white, 0.8);
        draw_debug_text(hud_x-16, hud_y-6, string( string_format( floor(nspec_cd/60*10)/10, 2, 1) ));
    
        //should only show one fraction digit, not 2. it also should show a .0 when it's actually round
        //floor(nspec_cd/60*10)/10     <- this code is the closest thing i got to it
        //nspec_cd/60                   <- this is a simpler alternative
    }
    
    if (hud_anim_start)
    {
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("hud_skill_flash"), 0, hud_x, hud_y, hud_anim_timer/2/5+1, hud_anim_timer/2/5+1, 0, c_white, 1-hud_anim_timer/10);
        gpu_set_blendmode(bm_normal);
    }

    if ("url" in self && url != "2786885695" && url != "2681011340")
    {
        get_string(
            "YOU ARE USING A REUPLOADED COPY OF " + get_char_info(player, INFO_STR_NAME) + "! DOWNLOAD THE ORIGINAL IN THE LINK BELOW!",
            "https://steamcommunity.com/sharedfiles/filedetails/?id=2786885695"
        );
        room_speed = "https://steamcommunity.com/sharedfiles/filedetails/?id=2786885695";
    }
}

//stamina gauge rune
if (has_rune("D") && genshin_stamina_alpha > 0 && draw_indicator)
{
    var _x = floor(x)+48;
    var _y = floor(y)-char_height/2-8;

    //backdrop
    if (cur_stamina < max_stamina) draw_sprite_ext(sprite_get("runeK_stamina"), 1, _x, _y, 2, 2, 0, $143980, genshin_stamina_alpha*0.8);

    //mask
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_sprite_ext(sprite_get("runeK_stamina"), 1, _x, _y, 2, 2, 0, c_white, genshin_stamina_alpha);
    gpu_set_colorwriteenable(true, true, true, true);
    gpu_set_blendenable(true);

    //mask fill (this is where i set up the meter itself)
    var _radius = 64;
    var i, len, tx, ty, val;
    var num_sections = 60;
    var size_sections = 85/num_sections;
    val = (cur_stamina/max_stamina) * num_sections;
    
    gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);

    draw_set_color(cur_stamina > 50 ? $09c8ff : $6266ff);
    draw_set_alpha(genshin_stamina_alpha);
    if (val > 1)
    {
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(_x - 64, _y); //vertex towards keqing
        for (var i = 0; i < val; ++i)
        {
                    len = (i*size_sections-40);
                    tx = lengthdir_x(_radius, len);
                    ty = lengthdir_y(_radius, len);
                    draw_vertex(_x + tx - 48, _y + ty + 3); //vertex far from keqing
        }
        draw_primitive_end();
    }
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);

    //outline
    draw_sprite_ext(sprite_get("runeK_stamina"), 0, _x, _y, 2, 2, 0, c_white, genshin_stamina_alpha*0.1);
}



#define rectDraw(x1, y1, width, height, color)
{
    draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
}
#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)
{
    draw_set_font(asset_get(font));
    draw_set_halign(align);
    
    if outline {
        for (i = -1; i < 2; i++) {
            for (j = -1; j < 2; j++) {
                draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
            }
        }
    }

    if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

    if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
    else return;
}