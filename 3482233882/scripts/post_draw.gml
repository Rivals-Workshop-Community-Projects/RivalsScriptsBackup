

if (!init_complete) exit;


//#region NSpecial
if (state == clamp(state, PS_ATTACK_AIR, PS_ATTACK_GROUND) && attack == AT_NSPECIAL) {
    // Flash
    if (nspec_vis_timer < 20) {
        var progress = nspec_vis_timer/20;
        var alpha = 0.2*(1-progress)*nspec_vis_level
        gpu_set_fog(true, c_white, 0, 99);
        draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, c_white, alpha);
        gpu_set_fog(false, c_white, 0, 0);
    }
    
    // Beam
    if (window == 3) {
        draw_sprite_ext(nspec_proj_index, (window_timer>=2) + 2*(num_loops%2), x-16*spr_dir, y-100, spr_dir, 1, 0, c_white, 1);
    }
    else if (window == 4) {
        draw_sprite_ext(nspec_proj_index, 4+window_timer/2, x-16*spr_dir, y-100, spr_dir, 1, 0, c_white, 1);
    }
}

//#endregion

//#region Flash

if (flash_timer > 0) {
    gpu_set_fog(true, flash_color, 0, 99);
    draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, 0, c_white, flash_timer/flash_timer_max);
    gpu_set_fog(false, c_white, 0, 0);
}

//#endregion

//#region Tri-shop selector
if (instance_exists(chest_obj) && chest_obj.state == 32 && chest_obj.trishop_vis_timer >= 0) with chest_obj {
    var progress = clamp(trishop_vis_timer / 5, 0, 1);
    var _x = x;
    var _y = other.y-50;
    
    if (other.object_index != oTestPlayer) {
        if (_x+90 < get_instance_x(asset_get("camera_obj"))-half_width) _x = get_instance_x(asset_get("camera_obj")) - half_width + 90;
        else if (get_instance_x(asset_get("camera_obj"))+half_width < _x-90) _x = get_instance_x(asset_get("camera_obj")) + half_width - 90;
    }
    
    draw_sprite_ext(sprite_get("trishop_bg_lines"), 0, _x, _y, 2, 2, 0, c_white, progress);
    
    draw_sprite_ext(sprite_get("item"), trishop_loot[0], _x-(64*progress), _y-(52*progress), 2*progress, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("item"), trishop_loot[1], _x,               _y-(66*progress), 2*progress, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("item"), trishop_loot[2], _x+(64*progress), _y-(52*progress), 2*progress, 2, 0, c_white, 1);
}
//#endregion

//#region Headstompers
if (stompers_active) {
    if (!free) draw_sprite_ext(sprite_get("vfx_item_stompers"), 4, x, y, 2, 2, 0, c_white, 1);
    else if (stompers_timer <= 4) draw_sprite_ext(sprite_get("vfx_item_stompers"), 0, x, y, 2, 2, 0, c_white, 1);
    else draw_sprite_ext(sprite_get("vfx_item_stompers"), 1+(stompers_timer/4)%3, x, y, 2, 2, 0, c_white, 1);
}
else if (stompers_timer < 9) {
    draw_sprite_ext(sprite_get("vfx_item_stompers"), 4+(stompers_timer/3)%3, x, y, 2, 2, 0, c_white, 1);
}
//#endregion

//#region Bustling Fungus

if (bungus_active) {
    if (bungus_vis_timer < 10) draw_sprite(sprite_get("vfx_item_fung"), bungus_vis_timer/3, bungus_vis_x, bungus_vis_y);
    else draw_sprite(sprite_get("vfx_item_fung"), 3, bungus_vis_x, bungus_vis_y);
}

else if (bungus_vis_timer < 3) {
    draw_sprite(sprite_get("vfx_item_fung"), 4, bungus_vis_x, bungus_vis_y);
}

//#endregion


//#region Photon Jetpack fuel

if (pjetpack_hud_alpha > 0) {
    draw_sprite_ext(asset_get("mech_steambar_spr"), 31*(pjetpack_vis_fuel/pjetpack_fuel_max), x-32, y-char_height-hud_offset-30, 2, 2, 0, c_white, pjetpack_hud_alpha);
}

//#endregion

//#region Barrier indicator

var barrier = floor(brooch_barrier + heart_barrier + jewel_barrier + aegis_barrier);

if (barrier > 0 && get_local_setting(SET_HUD_SIZE) != 0) {
    var in_col = make_color_rgb(255, 202, 94);
    var out_col = make_color_rgb(113, 88, 38);
    var bar_x_offset = (get_local_setting(SET_HUD_SIZE) == 1 ? 8 : 6) + (get_local_setting(SET_HUD_SIZE) == 1 ? 4 : 6) * (string_length(string(get_player_damage(player))));
    var bar_y_offset = (get_local_setting(SET_HUD_NAMES) ? 64 : 46) + (get_local_setting(SET_HUD_SIZE) == 1 ? 0 : 4);
    
    draw_set_font(asset_get("fName"));
    for (var i = -2; i < 3; i += 2) {
        for (var j = -2; j < 3; j += 2) {
            draw_text_color(x+bar_x_offset+i, y-char_height-hud_offset-bar_y_offset+j, string(barrier) + "%", out_col, out_col, out_col, out_col, 1);
        }
    }
    draw_text_color(x+bar_x_offset, y-char_height-hud_offset-bar_y_offset, string(barrier) + "%", in_col, in_col, in_col, in_col, 1);
}

//#endregion

//#region Clover indicator

if (clover_active && get_local_setting(SET_HUD_SIZE) != 0) {
    var _x = x;
    var _y = y - hud_offset - char_height;
    var dmg = get_player_damage(player);
    
    var name = get_player_name(player);
    var nameless = (get_player_name(player) == "P1" || get_player_name(player) == "P2" || get_player_name(player) == "P3" || get_player_name(player) == "P4");
    if (nameless) _y -= 50;
    else _y -= 66;
    
    // Oddly, CPUs have their HUD offset by 2 px
    if (get_player_hud_color(player) == c_gray) _x -= 2;
    
    // Small HUD
    if (get_local_setting(SET_HUD_SIZE) == 1) {
        if (dmg < 10) _x += 6;
        else if (dmg < 100) _x += 10;
        else _x += 14;
    }
    
    // Large HUD
    else {
        if (dmg < 10) _x += 6;
        else if (dmg < 100) _x += 11;
        else _x += 16;
    }
    
    draw_sprite(sprite_get("bloom"), 3, _x, _y);
}


//#endregion