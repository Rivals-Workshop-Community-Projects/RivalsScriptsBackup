//draw_hud.gml

if (debug_display && temp_level == 0)
{
    var mul = 16; //spacing
    var debug_x = 16;
    var debug_y = 256;

    var state_name = get_state_name(state);
    switch (state) //new workshop state names don't actually have a state name for get_state_name
    {
        case PS_FLASHED: state_name = "PS_FLASHED"; break;
        case PS_CRYSTALIZED: state_name = "PS_CRYSTALIZED"; break;
        case PS_BURIED: state_name = "PS_BURIED"; break;
    }
    
    draw_debug_text(debug_x+mul*0, debug_y+mul*-4, "state = " + string(state_name));
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

if (angles_debug)
{
    if (last_rune_hit != noone) for (var i = 0; i < array_length(artc_rune); i++) if (artc_rune[i] == last_rune_hit)
    {
        draw_debug_text(temp_x, temp_y - 64, "last rune: " + string(i) + " (id: " + string(last_rune_hit) + ")");
        break;
    }
}

if ("draw_hud_type" in self && draw_hud_type == "gw_demonhorde")
{
    //check if the player is dead or not
    var dead_col = (state == PS_RESPAWN || state == PS_DEAD)*0.5;
    var hud_spr = state == PS_DEAD ? _demonhorde_hud_hurt_spr : _demonhorde_hud_spr;

    //player icon backdrop
    gpu_set_fog(true, merge_color(obj_stage_main.player_hud_colors[player-1], c_black, dead_col), 1, 0);
    draw_sprite(hud_spr, 0, temp_x + 22, temp_y + 8);
    gpu_set_fog(false, c_white, 1, 0);

    //player icon real
    draw_sprite(hud_spr, 0, temp_x + 14, temp_y + 8);
    
    //darken sprite on death
    if (dead_col > 0) draw_sprite_ext(hud_spr, 0, temp_x + 14, temp_y + 8, 1, 1, 0, c_black, dead_col);
}

var dymc_col = charge_hud_flash > 10 ? c_white : merge_color(ui_active_color, c_white, charge_hud_flash/10);

//base meter
draw_sprite_ext(sprite_get("hud_meter"), double_meter_rune, temp_x - 16, temp_y - 50, 2, 2, 0, c_white, 1);
for (var chrg = 0; chrg < charge_max/100; chrg ++) //full segment fills
{
    draw_sprite_ext(
        sprite_get("hud_meter_segfull"), double_meter_rune,
        temp_x + 36 + chrg * (meter_length + meter_spacing),
        temp_y - 14,
        2, 2, 0, (chrg < floor(charge_cur/100)) ? dymc_col : ui_inactive_color, 1
    );
}
//currently charging segment
for (var meterline = 0; meterline < 4; meterline ++) for (var chrg = 0; chrg < charge_max/100; chrg ++) if (chrg == floor(charge_cur/100) && charge_cur > chrg*100 + 0.99)
{
    draw_sprite_ext(
        sprite_get("_pixel"), 0,
        temp_x + 36 + meterline * 2 + chrg * (meter_length + meter_spacing),
        temp_y - 8 - meterline * 2,
        (lerp(0, 1, charge_cur/100) % 1) * meter_length,
        2, 0, dymc_col, 1
    );
}

//charges heart
draw_sprite_ext(sprite_get("hud_charges"), 4, temp_x - 10, temp_y - 42, 2, 2, 0, ui_inactive_color, 1); //back heart
draw_sprite_ext(sprite_get("hud_charges"), 0, temp_x - 10, temp_y - 42, 2, 2, 0, ui_active_color, floor(charge_cur/100)/meter_segments); //heart
if (charge_hud_flash > 0) draw_sprite_ext(sprite_get("hud_charges"), 0, temp_x - 10, temp_y - 42, 2, 2, 0, c_white, charge_hud_flash/10); //white flash

if (floor(charge_cur/100) > 0 && floor(charge_cur/100)/2 > 0.5)
{
    draw_sprite_ext(
        sprite_get("hud_charges"),
        double_meter_rune ? floor(charge_cur/100)/2 : floor(charge_cur/100),
        temp_x - 10, temp_y - 42, 2, 2, 0, dymc_col, 1
    );
}
//^ charges indicator (it's the arrows out of the heart)

draw_debug_text(temp_x + 96, temp_y - 30, string(floor(charge_cur - floor(charge_cur/100)*100) ) );


//overdrive/fs meter
if (can_overdrive > 0)
{
    draw_sprite_ext(sprite_get("hud_od"), can_overdrive - 1, temp_x + 34, temp_y - 20, 2, 2, 0, c_white, 1);
    draw_sprite_stretched_ext(sprite_get("_pixel"), 0, temp_x + 52, temp_y - 2, lerp(0, 2, od_cur/od_max)*64 , 2, od_color, 1);

    if (using_overdrive >= 1) draw_sprite_ext(sprite_get("hud_od_star"), can_overdrive - 1, temp_x + 182, temp_y - 16, 2, 2, 0, od_color, 1);
}



if (!s_alt && alt_cur == 10) //byakuren alt - set HSV values back to normal
{
    set_color_profile_slot_range(1, orig_hsv[0][0], orig_hsv[0][1], orig_hsv[0][2]);
    set_color_profile_slot_range(6, orig_hsv[1][0], orig_hsv[1][1], orig_hsv[1][2]);
}

//meter debug text
if (get_match_setting(SET_PRACTICE) && temp_level == 0)
{
    draw_debug_text(temp_x - 8, temp_y - 64, "UP + TAUNT = Add charge");
    draw_debug_text(temp_x - 8, temp_y - 48, "DOWN + TAUNT = Remove charge");
}