//post-draw

//munophone
muno_event_type = 4;
user_event(14);


shader_start();
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
    //Ustrong effect
    if (attack == AT_USTRONG) draw_sprite_ext(fx_ustrong_lightaxe_sprite, image_index, x, y, 1*spr_dir, 1, 0, c_white, 1);

    //light dagger spawning effects
    if (attack == AT_SKILL0) draw_sprite_ext(fx_lightdagger, image_index, x-64*spr_dir, y-94, 1*spr_dir, 1, 0, c_white, 1);
    if (attack == AT_SKILL0_AIR) draw_sprite_ext(fx_lightdagger_air, image_index, x-(64*spr_dir), y-94, 1*spr_dir, 1, 0, c_white, 1);

    //accel blitz indicator
    if (attack == AT_SKILL4 && window == 2 && window_timer > 0)
    {
        if (user_event_1_active) draw_sprite_ext(fx_accel_indicator, get_player_color(player)+26, accel_drawpoint_x, accel_drawpoint_y, 2, 2, 0, c_white, 0.8);
        else
        {
            if (!is_8bit && alt_cur != 9) draw_sprite_ext(fx_accel_indicator, get_player_color(player), accel_drawpoint_x, accel_drawpoint_y, 2, 2, 0, c_white, 0.8);
            else draw_sprite_ext(fx_accel_indicator, get_player_color(player), accel_drawpoint_x, accel_drawpoint_y, 2, 2, 0, c_white, 1);
        }
    }

    //light hookshot effect
    if (attack == AT_SKILL9)
    {
        if (free) draw_sprite_ext(fx_lighthookshot, image_index, x, y-2, 1*spr_dir, 1, 0, c_white, 1);
        else draw_sprite_ext(fx_lighthookshot, image_index, x, y, 1*spr_dir, 1, 0, c_white, 1);
    }

    //overdrive attack background
    if (attack == AT_OVERDRIVE)
    {
        if (is_8bit)
        {
            draw_sprite_ext(sprite_get("fx_lordpunishment_firehand"), image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);

            if (window >= 12 && window <= 18 && OD_sword_image <= 24) draw_sprite_ext(sprite_get("fx_lordpunishment_greatsword_8bit"), OD_sword_image, x, y, 2*spr_dir, 2, 0, c_white, 1);
            if (window == 17) draw_sprite_ext(sprite_get("fx_lordpunishment_slash_8bit"), 0, x, y, 2*spr_dir, 2, 0, c_white, OD_slash_alpha);
        }
        else
        {
            if (window >= 12 && window <= 18 && OD_sword_image <= 24) draw_sprite_ext(sprite_get("fx_lordpunishment_greatsword"), OD_sword_image, x, y, 2*spr_dir, 2, 0, c_white, 1);
            if (window == 17) draw_sprite_ext(sprite_get("fx_lordpunishment_slash"), 0, x, y, 2*spr_dir, 2, 0, c_white, OD_slash_alpha);
        }

        if (OD_stop_timer > 0) draw_sprite_ext(sprite_get("fx_screen"), 0, view_get_xview(), view_get_yview(), 1, 1, 0, c_white, 1);
    }
}

//platform post draw
if (state == PS_RESPAWN || attack == AT_TAUNT && state == PS_ATTACK_GROUND && free == true) draw_sprite(plat_post_sprite, plat_frame, x, y);
shader_end();

//dust effects
if (!hitstop)
{
    if (attack == AT_FTILT && window == 3 && window_timer == 0) spawn_base_dust(x+(48*spr_dir), y, "dash_start", -1*spr_dir);
    if (attack == AT_UTILT && window == 3 && window_timer == 0 && state != PS_AIR_DODGE) spawn_base_dust(x, y+10, "jump");
    if (attack == AT_FSTRONG && window == 3 && window_timer == 1) spawn_base_dust(x-(16*spr_dir), y, "dash_start");
    if (attack == AT_SKILL2 && window == 4 && window_timer == 0) spawn_base_dust(x, y-28, "djump", 0, leap_angle);
    if (attack == AT_SKILL5 && window == 4 && window_timer == 0) spawn_base_dust(x-(16*spr_dir), y, "dash_start");
    if (attack == AT_SKILL5 && window == 1 && window_timer == 0 && free) spawn_base_dust(x, y, "djump");
    if (attack == AT_SKILL9 && window == 5 && window_timer == 0) spawn_base_dust(x, y-28, "djump", 0, -80*spr_dir);
    if ((has_rune("A") || fuck_you_cheapies && theikos_active) && runeA_dash && runeA_dash_timer == 2 && free) spawn_base_dust(x-32*spr_dir, y-28, "djump", 0, -90*spr_dir);
    if (attack == AT_FSTRONG_2 && (window == 3 && window_timer == 0 || window == 7 && window_timer == 4) && !free) spawn_base_dust(x, y, "dash_start");
}

//why are you afraid?
if (bibical) draw_sprite_ext(sprite_get("bibical_idle"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
//add "else" here

//theikos U-strong effect
gpu_set_blendmode(bm_add);
if (attack == AT_USTRONG_2 && (window == 4 || window == 5))
{
	shader_start();
    draw_sprite_ext(fx_lightpillar, lightpillar_frame, x, view_get_yview(), lightpillar_xscale*2, 4, 0, c_white, lightpillar_alpha);
    shader_end();
}
gpu_set_blendmode(bm_normal);

//small MP guage
if (show_miniMP && !fuck_you_cheapies)
{
    draw_sprite_ext(sprite_get("hud_mp_small"), 0, x-30, y-6, 2, 2, 0, c_white, miniMP_alpha);

    //layering gauge
    draw_sprite_ext(sprite_get("hud_mp_gauge_small"), floor(mp_current/4), x-24, y+8, 2, 2, 0, gauge_color, miniMP_alpha);
    if (mp_current > 100)
    {
        draw_sprite_ext(sprite_get("hud_mp_gauge_small"), 25, x-24, y+8, 2, 2, 0, gauge_color, miniMP_alpha);
        draw_sprite_ext(sprite_get("hud_mp_gauge_small"), floor(mp_current/4)+1, x-24, y+8, 2, 2, 0, gauge_EX_color, miniMP_alpha); //the cooler mana
    }

    if (miniMP_time < miniMP_time_limit-10) draw_debug_text(x-32,y-2,string(floor(mp_current)));
}

//no MP message's flashing arrow
if (mp_error_active) draw_sprite_ext(sprite_get("no_mp"), mp_error_frame, x, y-(char_height+23), 1, 1, 0, c_white, 1);


//gliding stamina stuff
if (show_glide_ui)
{
    rectDraw(x-37, y-char_height-32, x+34, y-char_height-32+5, c_black); //outline
    rectDraw(x-35, y-char_height-32+2, x+32, y-char_height-32+3, $316f09); //empty
    rectDraw(x-35, y-char_height-32+2, x+floor(glide_time/(1.45*(glide_time_max/100)))-36, y-char_height-32+3, $78ff5f); //full
}


//when testing, the skill select can be brought up with up+taunt
var temp_x = x-104;
var temp_y = y+16;

if (x < 100) temp_x = 100-104;
if (x > 860) temp_x = 860-104;

if (y > 466) temp_y = 466+16;
if (y < 148) temp_y = 148+16;

with (oTestPlayer) if ("menu_open" in self)
{
    draw_debug_text(temp_x + 16, temp_y + 32, "UP + TAUNT = Skill Select");
    
    //select script
    if (menu_open)
    {
        if(menu_timer <= 120)
        {
            draw_sprite_ext(sprite_get("hud_menu_bg_playtest"), 0, temp_x + 4, temp_y - 116 , 2, 2, 0, c_white, 1);
            var menuy = -124;
            var i;
            var k = 0;
            for(var menux = 38; menux <= 178; menux += 38){
                menuy = -130;
                switch (menux){
                    case 38:
                        i = 0;
                        break;

                    case 76:
                        i = 1;
                        break;

                    case 114:
                        i = 2;
                        break;

                    case 152:
                        i = 3;
                        break;
                }
                for(var j = 0; j < 3; j ++){
                    if(specs_chosen[i, j] == true){
                        draw_sprite_ext(sprite_get("skillicons"), i + (j*4), temp_x + menux, temp_y + 46 + menuy, 2, 2, 0, c_white, 1);
                    }else{
                        draw_sprite_ext(sprite_get("skillicons_disabled"), i + (j*4), temp_x + menux, temp_y + 46 + menuy, 2, 2, 0, c_white, 1);
                    }
                    menuy += 32;
                }
            }

            if (arrow_anim_up) draw_sprite_ext(sprite_get("hud_menu_arrow"), arrow_frame, temp_x, temp_y - 52, 2, 2, 90, c_white, 1);
            if (arrow_anim_side) draw_sprite_ext(sprite_get("hud_menu_arrow"), arrow_frame, temp_x + 2, temp_y - 52, 2, 2, 0, c_white, 1);
            if (arrow_anim_down) draw_sprite_ext(sprite_get("hud_menu_arrow"), arrow_frame, temp_x + 34, temp_y - 18, 2, 2, 270, c_white, 1);

            if(active_col >= 0 && active_col < 4){
                draw_sprite_ext(sprite_get("skillselect_cursor"), (cursor_timer/3), temp_x + (38 * (active_col + 1)), temp_y - 84, 2, 2, 0, c_white, 1);
            }

            switch (active_col)
            {
                case -1:
                    draw_debug_text(temp_x + 36, temp_y - 100, "Skill Select Cancelled");
                    break;
                case 0:
                    draw_debug_text(temp_x + 36, temp_y - 100, "Selecting: " + "N-SPECIAL");
                    break;
                case 1:
                    draw_debug_text(temp_x + 36, temp_y - 100, "Selecting: " + "F-SPECIAL");
                    break;
                case 2:
                    draw_debug_text(temp_x + 36, temp_y - 100, "Selecting: " + "U-SPECIAL");
                    break;
                case 3:
                    draw_debug_text(temp_x + 36, temp_y - 100, "Selecting: " + "D-SPECIAL");
                    break;
                case 4:
                    draw_debug_text(temp_x + 42, temp_y - 100, "Selection Complete");
                    break;
            }
        }
    }
}




#define spawn_base_dust {
    /// spawn_base_dust(x, y, name, dir = 0)
    ///spawn_base_dust(x, y, name, ?dir)
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
    var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
    newdust.dust_fx = dfx; //set the fx id
    if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if (dir != 0) newdust.spr_dir = dir; //set the spr_dir
    newdust.draw_angle = angle; //sets the angle of the dust sprite
    return newdust;
}

#define rectDraw(x1, y1, x2, y2, color) {
    draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);

    //according to the positive axis
    //x1 / y1 = top left
    //x2 / y2 = bottom right
}