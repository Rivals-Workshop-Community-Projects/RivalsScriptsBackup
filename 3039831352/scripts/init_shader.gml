//init_shader.gml
var shade_will_load = (("load_shade" in self) && load_shade);

if ("css_anim_time" not in self && object_index == asset_get("cs_playerbg_obj")) exit; //prevents the game from crashing if sonic refreshes
alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player); //online alt fix
name_cur = "alt_fix" in self ? get_player_name(alt_fix) : get_player_name(player); //^ but with names instead
if (object_index == asset_get("oPlayer")) alt_cur = get_fake_alt();

var should_setup_shader = ("shader_setup_ran" not in self || "alt_prev" in self && alt_cur != alt_prev); // default condition
if (object_index == asset_get("stage_HUD")) // exception
{   
    if ("shader_setup_ran" not in self) shader_setup_ran = [0, 0, 0, 0, 0];
    if (!shader_setup_ran[player])
    {
        should_setup_shader = true;
        load_shade = true;
    }
}

//color setup
if(shade_will_load)
{
    make_cur_color();
    cur_colors = get_cur_color();
    cur_alpha = get_cur_alpha();
    set_color_data();
}

if (should_setup_shader)
{
    set_color_data();
    if (object_index == asset_get("stage_HUD")) shader_setup_ran[player] = true;  
    else shader_setup_ran = true;
}

if ("temp_outline_color" not in self) temp_outline_color = [0, 0, 0];

if(shade_will_load) {
//set secret alt to overwrite every alt
if (name_cur == "461225") 
{
    alt_cur = 1993;

    //base form
    cur_colors[0] = [96, 64, 162];
    cur_colors[1] = [1, 1, 128];
    cur_colors[2] = [0, 0, 0];
    cur_colors[3] = [96, 64, 162];
    cur_colors[4] = [1, 1, 128];
    cur_colors[5] = [96, 64, 162];
    cur_colors[6] = [0, 0, 0];
    cur_colors[7] = [96, 64, 162];
    cur_colors[8] = cur_colors[0]; //just in case

    temp_outline_color = [
        floor(lerp(1, 94, 0.5)),
        floor(lerp(1, 64, 0.5)),
        floor(lerp(128, 162, 0.5))
    ];

    for (var i = 0; i < 8; i ++) set_character_color_shading(i, 1);

    cur_alpha = [1, 1, 1, 1, 1, 1, 1, 1];
}
//exceptions / colormapping
else
{
    switch (alt_cur)
    {
        case 0: //default
            cur_colors[1] = [34, 44, 224];
            cur_colors[2] = [15, 189, 15];
            cur_colors[3] = [255, 209, 158];
            cur_colors[5] = [255, 255, 255];
            cur_colors[7] = [67, 146, 241];
            cur_colors[11] = cur_colors[3];
            break;
        case 5: //chaos
            for (var i = 0; i < 8; i ++) if (i != 0 && i != 2 && i != 6)
            {
                cur_alpha[i] = (
                    "cur_spr_set" in self && cur_spr_set ||
                    "_barsonic_final_color" in self && _barsonic_final_color[player][0][0] != get_color_profile_slot_r(alt_cur, 0) ||
                    object_index == asset_get("result_screen_box")
                    ) ? 1 : 0.3; //super / normal
                if ("super_col_lerp_time" in self && super_col_lerp_time > 0) cur_alpha[i] = lerp(0.3, 1, super_col_lerp_time/super_col_lerp_time_max);
            }

            temp_outline_color = [10, 36, 107];
            break;
        case 14: //early access
            temp_outline_color = [15, 56, 15];
            set_color_profile_slot_range(3, 21, 55, 31); //include buckle
            set_color_profile_slot_range(6, 155, 10, 20); //include whites
            break;
        case 15:
            set_color_profile_slot_range(3, 21, 55, 31); //include buckle
            set_color_profile_slot_range(6, 1, 1, 20);
            break;
        case 16: //seasonals
            if (get_match_setting(SET_SEASON) == 3) //lord X
            {
                if ("is_fake_x" in self && !is_fake_x && object_index != 327 && object_index != 4) //real form
                {
                    /* pallete testing, ignore
                        //OG look
                        for (var i = 0; i < 7; i ++) cur_colors[i] = [lord_x_decay_col[i][0][0], lord_x_decay_col[i][0][1], lord_x_decay_col[i][0][2]];
                        shading_data[alt_cur][@ 1] = 0.75; //blue
                        shading_data[alt_cur][@ 4] = 0.75; //red

                        //decayed look
                        for (var i = 0; i < 7; i ++) cur_colors[i] = [lord_x_decay_col[i][1][0], lord_x_decay_col[i][1][1], lord_x_decay_col[i][1][2]];
                        shading_data[alt_cur][@ 1] = 0.5; //blue
                        shading_data[alt_cur][@ 4] = 0.5; //red
                    */
                    
                    if ("lord_x_decaying" not in self || !lord_x_decaying)
                    {
                        cur_colors[0] = [56, 0, 82]; //aura
                        cur_colors[1] = [60, 59, 89]; //blue
                        cur_colors[2] = [255, 0, 70]; //green
                        cur_colors[3] = [235, 143, 105]; //skin
                        cur_colors[4] = [39, 36, 37]; //red
                        cur_colors[5] = [223, 221, 208]; //white - clothes
                        cur_colors[6] = [0, 0, 0]; //white - eyes

                        shading_data[alt_cur][@ 1] = 0.5; //blue
                        shading_data[alt_cur][@ 2] = 1.2; //green
                        shading_data[alt_cur][@ 4] = 0.5; //red

                        shading_data[alt_cur][@ 9] = 1; //blue
                    }
                    else
                    {
                        lord_x_decay_time = lord_x_decay_over ? 0 : get_game_timer() / (get_match_setting(SET_TIMER)*60*60);
                        if (get_game_timer() == 0) lord_x_decay_over = true;

                        for (var i = 0; i < 7; i ++)
                        {
                            cur_colors[i] = [
                                floor(lerp(lord_x_decay_col[i][1][0], lord_x_decay_col[i][0][0], lord_x_decay_time)),
                                floor(lerp(lord_x_decay_col[i][1][1], lord_x_decay_col[i][0][1], lord_x_decay_time)),
                                floor(lerp(lord_x_decay_col[i][1][2], lord_x_decay_col[i][0][2], lord_x_decay_time))
                            ];
                        }

                        shading_data[alt_cur][@ 1] = lerp(0.75, 0.5, lord_x_decay_time); //blue
                        shading_data[alt_cur][@ 4] = lerp(0.75, 0.5, lord_x_decay_time); //red
                    }

                    //super form is the illegal instruction screen
                    cur_colors[8] = [56, 0, 82]; //aura
                    cur_colors[9] = [1, 0, 255]; //blue
                    cur_colors[10] = [255, 43, 0]; //green
                    cur_colors[11] = [255, 194, 0]; //skin
                    cur_colors[12] = [39, 36, 37]; //red
                    cur_colors[13] = [255, 43, 0]; //white - clothes
                    cur_colors[14] = [0, 0, 0]; //white - eyes
                }
                else
                {
                    //fake sonic shade data
                    if (alt_cur < 32) 
                    {
                        shading_data[alt_cur] = [
                            1, 1, 1, 1, 1, 1, 1, 1,
                            1, -2, 1, 1, 1, 1, 1, 1
                        ];
                    }
                }
            }
            break;
        case 22: //snick
            if (current_day == 31 && current_month == 10) //snick.exe
            {
                cur_colors[2] = [255, 255, 255]; //green
                cur_colors[3] = [88, 0, 184]; //skin
                cur_colors[6] = [0, 0, 0]; //white - eyes

                cur_colors[10] = cur_colors[2]; //green
                cur_colors[14] = cur_colors[6]; //white - eyes (super)
            }
            break;
        case 27: //hud color
            var hud_r = color_get_red(get_player_hud_color(player));
            var hud_g = color_get_green(get_player_hud_color(player));
            var hud_b = color_get_blue(get_player_hud_color(player));
            
            cur_colors[0] = [floor(lerp(61, min(255, hud_r), 0.75)), floor(lerp(206, min(255, hud_g), 0.75)), floor(lerp(255, min(255, hud_b), 0.75))]; //aura
            cur_colors[1] = [floor(lerp(61, min(255, hud_r), 0.75)), floor(lerp(206, min(255, hud_g), 0.75)), floor(lerp(255, min(255, hud_b), 0.75))]; //blue
            cur_colors[4] = [floor(min(255, hud_r + 150)), floor(min(255, hud_g + 150)), floor(min(255, hud_b + 150))]; //red
            cur_colors[5] = [floor(hud_r/1.5), floor(hud_g/1.5), floor(hud_b/1.5)]; //white - clothes
            cur_colors[7] = [min(255, hud_r + 150), min(255, hud_g + 150), min(255, hud_b + 150)]; //portrait light

            cur_colors[12] = cur_colors[4] //red (super)
            cur_colors[13] = cur_colors[5]; //white - clothes (super)
            break;
    }
}
}

if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40)
{
    if (uses_super_colors) for (var i = 0; i < 8; i ++) set_character_color_shading(i, shading_data[alt_cur][i + 8]);
}
else
{
    //CSS Coloring
    if ("cur_spr_set" in self) var pos = 8 * cur_spr_set;
    else var pos = 0;
    
    //lighting color fix
    if (("cur_spr_set" in self && cur_spr_set == 1 && get_color_profile_slot_r(alt_cur, 9) == 999) || ("uses_super_colors" in self && uses_super_colors))
    {
        cur_colors[15][@ 0] = clamp(cur_colors[9][@ 0] + 150, 0, 255);
        cur_colors[15][@ 1] = clamp(cur_colors[9][@ 1] + 150, 0, 255);
        cur_colors[15][@ 2] = clamp(cur_colors[9][@ 2] + 150, 0, 255);
    }
    var alt_change = ("hitpause" not in self) || !(hitpause || perfect_dodging) //variable made so it would only change your color if youre not in parry or hitpause.
    
    //set proper colors
    if(alt_change && alt_cur == 5 || shade_will_load && alt_cur != 5) //ONLY DO THIS ONCE FOR THE NORMAL COLORS or keep continuing if youre transforming or chaos.
    {
        for (var i = 0; i < 8; i ++)
        {
            if (alt_cur != 5) set_character_color_slot(i, cur_colors[i + pos][0], cur_colors[i + pos][1], cur_colors[i + pos][2]);
            else set_character_color_slot(i, cur_colors[i + pos][0], cur_colors[i + pos][1], cur_colors[i + pos][2], cur_alpha[i]);

            set_article_color_slot(i, cur_colors[i + pos][0], cur_colors[i + pos][1], cur_colors[i + pos][2], cur_alpha[i]);

            if (alt_cur < 32) set_character_color_shading(i, shading_data[alt_cur][i + pos]);
        }  
        if ("hitpause" in self) load_shade = false; 
    }

    if(pos == 0) user_event(1);
}

//Results screen color correction
if (object_index == asset_get("draw_result_screen") || object_index == asset_get("result_screen_box"))
{
    if ("_barsonic_final_color" not in self)
    {
        _barsonic_final_color = [-4, -4, -4, -4, -4];
        _barsonic_final_shade = [-4, -4, -4, -4, -4];
        _barsonic_hyper_check = false;
    }
    with (hit_fx_obj) if ("is_sonic_persist" in self)
    {
        other._barsonic_final_color[real_player] = colors;
        other._barsonic_final_shade[real_player] = shades;
        other._barsonic_hyper_check = is_hyper;
    }

    //actually set the colors
    for (var i = 0; i < 8; i++)
    {
        var pos = i * 4;
        colorO[pos] = _barsonic_final_color[player][i][0]/255;
        colorO[pos + 1] = _barsonic_final_color[player][i][1]/255;
        colorO[pos + 2] = _barsonic_final_color[player][i][2]/255;
        colorB[pos] = _barsonic_final_shade[player][i];
    }

    if ("real_time" in self)
    {
        if (alt_cur == 5) //chaos mask
        {
            if (_barsonic_final_color[player][0][0] == get_color_profile_slot_r(alt_cur, 0)) //checks if he isn't super sonic
            {
                var water_alpha = 0.75;
                maskHeader();
                draw_sprite_ext(sprite_get("portrait_ex1"), 0, portrait_x, portrait_y, 2, 2, 0, c_white, min((real_time - 50)/70 * water_alpha, water_alpha) );
                maskMidder();
                draw_sprite_tiled(sprite_get("alt_chaos"), real_time * 0.15, portrait_x, portrait_y + (-real_time / 8));
                maskFooter();
            }
        }
        if (_barsonic_hyper_check) //hyper sonic colors in the results screen
        {
            if ("hyper_color" not in self) hyper_color = 0;
            hyper_color += 1;
            if (hyper_color >= 255) hyper_color = 0;

            var color_rgb = make_color_rgb(255, 0, 0);
            var hue = (color_get_hue(color_rgb)+hyper_color) % 255;
            var hyper_hsv = make_color_hsv(hue, color_get_saturation(color_rgb), color_get_value(color_rgb));

            colorO[4] = floor( (min(color_get_red(hyper_hsv), 255) + 255)/2 )/255;
            colorO[5] = floor( (min(color_get_green(hyper_hsv), 255) + 255)/2 )/255;
            colorO[6] = floor( (min(color_get_blue(hyper_hsv), 255) + 255)/2 )/255;

            colorO[8] = 190/255;
            colorO[9] = 18/255;
            colorO[10] = 238/255;

            colorO[28] = 255/255;
            colorO[29] = 255/255;
            colorO[30] = 255/255;
        }
    }
}

///////////////////////////////////////////////////////
#region CUSTOM FUNCTIONS
///////////////////////////////////////////////////////

//massive shoutout to supersonic for coding this part of the color logic
#define make_cur_color()
{
    var col_data = [];
    var alpha_data = [];
    // put data array in the right place
    if (object_index == asset_get("stage_HUD"))
    {
        if ("cur_colors" not in self)
        {
            cur_colors = [-4, -4, -4, -4, -4];
            cur_alpha = [-4, -4, -4, -4, -4];
        }
        if (cur_colors[player] == -4)
        {
            cur_colors[player] = col_data;
            cur_alpha[player] = alpha_data;
        }
    }
    else if ("cur_colors" not in self)
    {
        cur_colors = col_data;
        cur_alpha = alpha_data;
    }
    // now from here fill out data with what should be in cur_colors and cur_alpha
}

#define get_cur_color()
{ return (object_index == asset_get("stage_HUD")) ? cur_colors[player] : cur_colors; }

#define get_cur_alpha()
{ return (object_index == asset_get("stage_HUD")) ? cur_alpha[player] : cur_alpha; }

#define get_fake_alt
{
    true_alt = get_player_color(player);
    fake_alt = true_alt;
    var test_alt = get_player_color(player);
    for (var i = 0; i < 4; i ++)
    {
        if (get_color_profile_slot_r(test_alt, 7) == round(colorO[28] * 255) &&
            get_color_profile_slot_g(test_alt, 7) == round(colorO[29] * 255) &&
            get_color_profile_slot_b(test_alt, 7) == round(colorO[30] * 255))
        {
            fake_alt = test_alt;
            break;
        }
        test_alt ++;
        if (test_alt >= 6) test_alt = 0;
    }
    
    return test_alt;
}

//i did this tho lol
#define set_color_data
{
    
    //color range
    set_color_profile_slot_range(3, 16, 17, 31);
    set_color_profile_slot_range(6, 1, 1, 20);

    //           normal form                   super form
    if(!variable_instance_exists(id,"shading_data"))
    {
        shading_data = [
            [1, 1, 1.5, 1, 1, 1, 1, 1,      -5, -1, 1, 1, 1, 1, 1, 1], //default
            [1, 0.75, 1, 1, 1, 1, 1, 1,     1, -1, 1, 1, 1, 1, 1, 1], //eggman
            [1, 1, 1, 1, 1, 1, 1, 1,        -5, -1, 1, 1, 1, 1, 1, 1], //tails
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //knuckles
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //amy
            [1, 1, 0, 1, 1, 1, 1, 1,        -5, -1, 0, 1, 1, 1, 1, 1], //chaos
            [-5, 0.5, 1, 1, 1, 1, 1, 1,     -1, -1, 1, 1, 1, 1, 1, 1], //shadow
            [1, 1, 1.5, 1, 1, 0.3, 1, 1,    1, -1, 1, 1, 1, 1, 1, 1], //rouge
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //cream
            [1, 1, 1, 1, 1, 0.75, 1, 1,     1, -1, 1, 1, 1, 0.75, 1, 1], //scourge
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //mario
            [1, 1, 1, 1, 1, 1, 1, 1,        -5, -1, 1, 1, 1, 1, 1, 1], //spark
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //lilac
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //abyss
            [0, 0, 0, 0, 0, 0, 0, 0,        0, 0, 0, 0, 0, 0, 0, 0], //gameboy / early access
            [1, 1, 1, 1, 1, 1, 1, 1,        0.5, -1, 1, 1, 1, 1, 1, 1], //milestone
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //seasonal (should use a different method)
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //infamous
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //gold rank
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -2, 1, 1, 1, 1, 1, 1], //sonic 1
            [1, 0.75, 1, 1, 1, 1, 1, 1,     1, 1, 0, 1, 1, 1, 1, 1], //dark sonic
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //the flash
            [1, 0, 0, 0, 0, 0, 0, 0,        1, 0, 0, 0, 0, 0, 0, 1], //snick
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //maypul
            [1, 1, 1, 1, 1, 0.5, 1, 1,      -5, -1, 1, 1, 1, 0.5, 1, 1], //bar
            [1, 1, 1, 1, 1, 1, 1, 1,        1, -1, 1, 1, 1, 1, 1, 1], //keqing
            [1, 1, 1, 1, 1, 0.5, 1, 1,      1, -1, 1, 1, 1, 0.5, 1, 1], //rumia
            [1, 1, 1, 1, 1, 1, 1, 1,        -5, -1, 1, 1, 1, 1, 1, 1] //player color
        ];
    }

    for (var i = 0; i < 16; i++)
    {
        cur_colors[i] = [
            get_color_profile_slot_r(alt_cur, i),
            get_color_profile_slot_g(alt_cur, i),
            get_color_profile_slot_b(alt_cur, i)
        ];

        cur_alpha[i] = 1; //transperency
        
        if (i >= 8) //super sonic copying colors from base form
        {
            if (cur_colors[i][0] == 999)
            {
                cur_colors[i][@ 0] = cur_colors[i-8][0];
                cur_colors[i][@ 1] = cur_colors[i-8][1];
                cur_colors[i][@ 2] = cur_colors[i-8][2];
            }
        }
    }
}

#define maskHeader
{
    //set the mask to take effect on pretty much everything in the room
    //below this function, add the MASK
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
#define maskMidder
{
    //sets the thing underneath the mask to be drawn
    //below this function, add the TEXTURE
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
#define maskFooter
{
    //go back to drawing normally again
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
#endregion