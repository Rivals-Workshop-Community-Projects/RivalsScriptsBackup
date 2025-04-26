
//draw_hud.gml

if (debug_display)
{
    var mul = 16; //spacing
    var debug_x = 16;
    var debug_y = 256;
    
    draw_debug_text(debug_x+mul*0, debug_y+mul*-4, "state = " + string(get_state_name(state)));
    draw_debug_text(debug_x+mul*0, debug_y+mul*-3, "state_timer = " + string(state_timer));

    if (is_attacking || state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD ||
        state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_AIR_DODGE)
    {
        if (is_attacking) draw_debug_text(debug_x+mul*0, debug_y+mul*-7, "attack = " + string(attack_names[attack]));
        draw_debug_text(debug_x+mul*0, debug_y+mul*-6, "window = " + string(window));
        draw_debug_text(debug_x+mul*0, debug_y+mul*-5, "window_timer = " + string(window_timer));
    }

    draw_debug_text(debug_x+mul*0, debug_y+mul*-2, "x = " + string(x));
    draw_debug_text(debug_x+mul*0, debug_y+mul*-1, "y = " + string(y));

    draw_debug_text(debug_x+mul*5, debug_y+mul*-2, "hsp = " + string(hsp));
    draw_debug_text(debug_x+mul*5, debug_y+mul*-1, "vsp = " + string(vsp));
}

shader_start();
if ("draw_hud_type" in self)
{
    if (draw_hud_type == "childe") draw_sprite(sprite_get_skinned("hud_sonic_offscreen"), 0, temp_x + 30, temp_y + 30);
    if (draw_hud_type == "gw_demonhorde")
    {
        //check if the player is dead or not
        var dead_col = (state == PS_RESPAWN || state == PS_DEAD)*0.5;
        var hud_spr = state == PS_DEAD ? sprite_get_skinned("hud_sonic_hurt") : sprite_get_skinned("hud_sonic_norm");

        //player icon backdrop
        shader_end();
        gpu_set_fog(true, merge_color(obj_stage_main.player_hud_colors[player-1], c_black, dead_col), 1, 0);
        draw_sprite(hud_spr, 0, temp_x + 22, temp_y + 8);
        gpu_set_fog(false, c_white, 1, 0);

        //player icon real
        static_colorO[4*8 + 0] = outline_color[0]/255;
        static_colorO[4*8 + 1] = outline_color[1]/255;
        static_colorO[4*8 + 2] = outline_color[2]/255;
        shader_start();
        draw_sprite(hud_spr, 0, temp_x + 14, temp_y + 8);
        shader_end();
        static_colorO[4*8 + 0] = 0;
        static_colorO[4*8 + 1] = 0;
        static_colorO[4*8 + 2] = 0;
        colorO[4*8 + 0] = outline_color[0]/255;
        colorO[4*8 + 1] = outline_color[1]/255;
        colorO[4*8 + 2] = outline_color[2]/255;
        
        //darken sprite on death
        if (dead_col > 0) draw_sprite_ext(hud_spr, 0, temp_x + 14, temp_y + 8, 1, 1, 0, c_black, dead_col);
        shader_start();
    }
}
shader_end();

//boost mode meter
var x_size = 79*2;
var meter_r = cur_colors[boost_mode ? 0 : 1][@ 0];
var meter_g = cur_colors[boost_mode ? 0 : 1][@ 1];
var meter_b = cur_colors[boost_mode ? 0 : 1][@ 2];
var meter_col = make_color_rgb(meter_r, meter_g, meter_b);

if (!has_superform) //boost meter
{
    //this setup is used to set the colors to the normal state's colors
    var temp_values = [ //records currently used values
        static_colorB[0], static_colorB[4], //shading
        static_colorO[0], static_colorO[1], static_colorO[2], static_colorO[3], //aura
        static_colorO[4], static_colorO[5], static_colorO[6], static_colorO[7] //blue
    ];
    for (var i = 0; i < 2; i ++)
    {
        var pos = i * 4;
        static_colorB[pos] = 1;
        static_colorO[pos] = cur_colors[i][0]/255;
        static_colorO[pos + 1] = cur_colors[i][1]/255;
        static_colorO[pos + 2] = cur_colors[i][2]/255;
        static_colorO[pos + 3] = 1;
    }

    //the meter itself
    draw_sprite_stretched_ext(sprite_get("hud_meter_fill"), 1, temp_x + 6, temp_y - 8, x_size, 8, c_black, 0.5); //back
    if (boost_cur > 0) //fill
    {
        draw_sprite_stretched_ext(sprite_get("hud_meter_fill"), 0, temp_x + 6, temp_y - 8, lerp(0, 1, boost_cur/boost_max) * x_size, 8, meter_col, 1); //fill
        draw_sprite_ext(sprite_get("hud_meter_fill"), 1, temp_x + 6 + lerp(0, 1, boost_cur/boost_max) * x_size, temp_y - 8, 2, 1, 0, c_white, 0.5); //fill support line
    }
    draw_sprite_ext(sprite_get("hud_meter"), 0, temp_x - 4, temp_y - 38, 2, 2, 0, c_white, 1); //meter box

    //boost mode symbol + boost mode glow
    shader_start();
    draw_sprite_ext(sprite_get("hud_meter"), 1, temp_x - 4, temp_y - 38, 2, 2, 0, c_white, 1);
    if (boost_mode) draw_sprite_ext(sprite_get("hud_meter"), 2, temp_x - 4, temp_y - 38, 2, 2, 0, c_white, (game_time % 8 > 4) ? 0.75 : 0.5);
    shader_end();


    //set colors back to normal
    static_colorB[0] = temp_values[0];
    static_colorB[4] = temp_values[1];
    
    static_colorO[0] = temp_values[2];
    static_colorO[1] = temp_values[3];
    static_colorO[2] = temp_values[4];
    static_colorO[3] = temp_values[5];

    static_colorO[4] = temp_values[6];
    static_colorO[5] = temp_values[7];
    static_colorO[6] = temp_values[8];
    static_colorO[7] = temp_values[9];

    //boost gain display
    tempvar = 0;
    repeat (array_length(combo_display_time)) 
    {
        if (combo_display_time[tempvar] > 0 && (combo_display_time[tempvar] > 40 || combo_display_time[tempvar] % 4 == 2) )
        {
            draw_debug_text(
                temp_x + (has_blast ? 168 : floor(ease_circIn(88, 112, combo_display_time[tempvar], combo_display_time_max)) ),
                temp_y - (has_blast ? floor(ease_circIn(10, 28, combo_display_time[tempvar], combo_display_time_max)) : 22),
                "+" + string(combo_boost_display[tempvar])
            );
        }

        tempvar ++;
    }

    //boostmode testing
    if (get_match_setting(SET_PRACTICE) && !has_superform && temp_level == 0)
    {
        draw_sprite_ext(sprite_get("_pixel"), 0, temp_x, temp_y - 24 - 12, 200, 14, 0, c_black, 1);
        draw_debug_text(temp_x, temp_y - 22 - 12, "DOWN+TAUNT = infinite boost")
    }
}
else //super sonic rings
{
    draw_sprite_ext(sprite_get("hud_rings"), (alt_cur == 16 && get_match_setting(SET_SEASON) == 3), temp_x + 4, temp_y - 24, 2, 2, 0, c_white, 1);
    text_draw(
        temp_x + 36, temp_y - 18, ring_text(rings_cur, 3),
        rings_cur == 0 ? ring_col_output : c_white,
        "medFont", fa_left, 1, true
    );

    //ring gain display
    tempvar = 0;
    repeat (array_length(combo_display_time))
    {
        if (combo_display_time[tempvar] > 0 && (combo_display_time[tempvar] > 40 || combo_display_time[tempvar] % 4 == 2) )
        {
            var ringbox_x = 24;
            var ringbox_y = -88;

            draw_sprite_ext(sprite_get("hud_ringbox"), 0, temp_x + ringbox_x, temp_y + ringbox_y, 2, 2, 0, c_white, 1);
            text_draw(temp_x + ringbox_x, temp_y + ringbox_y + 24, string(combo_boost_display[tempvar]), $3be8ff, "fName", fa_left, 1, 1)
        }
        
        tempvar ++;
    }
}

//combo counter
if (combo_timer > 0 && combo_hits > 1)
{
    draw_debug_text(temp_x, temp_y - 68, string(combo_hits) + " HITS");

    if (get_match_setting(SET_PRACTICE))
    {
        draw_debug_text(temp_x + 80, temp_y - 68, "TIME: " + string(floor(combo_timer)+1) + " / " + string(floor(combo_timer_full)+1));
        draw_sprite_ext(sprite_get("_pixel"), 0, temp_x - 2, temp_y - 58, 104, 8, 0, c_black, 1);
        draw_sprite_ext(sprite_get("_pixel"), 0, temp_x, temp_y - 56, lerp(0, 1, combo_timer/combo_timer_full) * 100, 4, 0, c_white, 1);
    }
}
if (combo_text_display_time > 0 && cur_combo_text > -1) draw_sprite_ext(sprite_get("compliments"), cur_combo_text, temp_x - 8, temp_y - 56, 2, 2, 0, c_white, 1);

//team blast meter
if (has_blast)
{
    if (!blast_meter_go_down) //yellow box going up
    {
        draw_sprite_ext(
            sprite_get("hud_fs_meter"), 1, temp_x + 20 + (64 * has_superform),
            temp_y - 34 - ease_linear(0, 28, blast_meter_anim_timer, blast_meter_anim_length) + (8 * has_superform),
            2, 2, 0, c_white, 1
        );
    }
    
    if (blast_meter_anim_timer < blast_meter_anim_length) //fs meter
    {
        draw_sprite_ext(
            sprite_get("hud_fs_meter"), 0,
            temp_x + 20 + (64 * has_superform), temp_y - 34 + (8 * has_superform),
            2, 2, 0, c_white, 1
        );

        var x_size = 94;
        draw_sprite_stretched_ext( //fill
            sprite_get("hud_fs_fill"), 0,
            temp_x + 38 + (64 * has_superform),
            temp_y - 22 + (8 * has_superform),
            lerp(0, 1, blast_cur/blast_max) * x_size,
            8, c_white, 1
        );
        draw_sprite_ext( //fill support line
            sprite_get("hud_fs_fill"), 1,
            temp_x + 38 + lerp(0, 1, blast_cur/blast_max) * x_size + (64 * has_superform),
            temp_y - 22 + (8 * has_superform),
            2, 2, 0, c_white, 1
        );
    }
    
    if (blast_meter_go_down) //yellow box going down
    {
        draw_sprite_ext(
            sprite_get("hud_fs_meter"), blast_meter_ready_img, temp_x + 20 + (64 * has_superform),
            temp_y - 34 - ease_linear(28, 0, blast_meter_anim_timer, blast_meter_anim_length) + (8 * has_superform),
            2, 2, 0, c_white, 1
        );
    }

    if (blast_post_timer > 0)
    {
        draw_sprite_part_ext(
            sprite_get("hud_fs_meter"), 3,
            0, 0,
            lerp(0, 1, blast_post_timer/blast_post_deplete_time) * 62,
            12,
            temp_x + 20 + (64 * has_superform),
            temp_y - 34 + (8 * has_superform),
            2, 2, c_white, 1
        );
    }
}

//text_draw(x, y, string, color, font, align, ?alpha, ?outline, ?line_alpha, ?line_col)
#define text_draw
{
    var x = argument[0];
    var y = argument[1];
    var string = argument[2];
    var color = argument[3];
    var font = argument[4];
    var align = argument[5];
    var alpha = argument_count > 6 ? argument[6] : 1;
    var outline = argument_count > 7 ? argument[7] : false;
    var line_alpha = argument_count > 8 ? argument[8] : 1;
    var line_col = argument_count > 9 ? argument[9] : c_black;

    
    draw_set_font(asset_get(font));
    draw_set_halign(align);

    if (outline && line_alpha > 0)
    {
        for (var i_x = -1; i_x < 2; ++i_x) for (var i_y = -1; i_y < 2; ++i_y)
        {
            draw_text_color(x + i_x * 2, y + i_y * 2, string, line_col, line_col, line_col, line_col, line_alpha * alpha);
        }
    }

    draw_text_color(x, y, string, color, color, color, color, alpha);
}

#define ring_text(number, amount)
{
    var str = "";
    var padding_char = "0";
    var num = string(number);
    repeat(amount-string_length(num)) str += padding_char;
    str += num;

    return str;
}

#define sprite_get_skinned
{
	var sprite = argument[0];
	var skin = argument_count > 1 ? argument[1] : _ssnksprites.skin_active;

	///Gets a skinned sprite based on its name.
	var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
	with obj if (_ssnksprites.skin_active != -1 || argument_count > 1)  {
		
		var skindata = argument_count > 1 ? -1 : _ssnksprites.skins_n[_ssnksprites.skin_active];
		if is_string(skin) {
			if skin in _ssnksprites.skins skindata = variable_instance_get(_ssnksprites.skins, skin);
			else print(`Skin ${skin} not found.`);
		} else if is_number(skin) {
			if skin < array_length(_ssnksprites.skins_n) skindata = _ssnksprites.skins_n[skin];
			else print(`Skin ${skin} not found.`);
		}
		if !is_array(skindata) return sprite_get(sprite);
		var skinname = skindata[0];
		var suffix = skindata[1];
		var name_raw = skindata[2];
		var cache = variable_instance_get(_ssnksprites.cache,name_raw, -1);
		var spr;
		if sprite in cache return variable_instance_get(cache,sprite);
		spr = sprite_get(sprite);
		
		if string(spr) in _ssnksprites.names {
			var sproot = sprite_get(`${suffix? //if suffix
										sprite+skinname: //suffix
										skinname+sprite}`); //prefix
			if sproot == asset_get('net_disc_spr') { //no X allowed
				variable_instance_set(cache,sprite,spr);
				return spr;
			}
			if sprite_get_xoffset(sproot) == 0 && sprite_get_yoffset(sproot) == 0 {
				sprite_change_offset(sproot,sprite_get_xoffset(spr),sprite_get_yoffset(spr));
			}
			variable_instance_set(cache,sprite,sproot); //put sprite in cache
			return sproot;
		} else {
			variable_instance_set(cache,sprite,spr);
			return spr;
		}
	}
	return sprite_get(sprite);
}