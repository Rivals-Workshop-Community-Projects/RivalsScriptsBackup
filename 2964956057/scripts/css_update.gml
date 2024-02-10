var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;

var currently_hovering = false;

if "alt_changed" in self {
    if(alt_changed != get_player_color(player)){
        if(get_player_color(player) == 22){
            sound_play(sound_get("glitch_select"));
        }
    }
    alt_changed = get_player_color(player);
}


if "customizer_active" not in self{
    customizer_active = 0;
}
if "hovering" not in self{
    hovering = 0;
}

if get_player_color(real_player) == 23{
    if get_instance_x(cursor_id) > x + 180 && get_instance_x(cursor_id) < x + 210 && get_instance_y(cursor_id) > y + 102 + runes_mode && get_instance_y(cursor_id) < y + 132 + runes_mode && !instance_exists(oTestPlayer){
        currently_hovering = true;
        if hovering != 40{
            hovering = 40;
            sound_play(asset_get("mfx_hover"));
        }
        if !(menu_lb_pressed || menu_rb_pressed){
            suppress_cursor = true;
        }
        if menu_a_pressed{
            sound_play(asset_get("mfx_forward"));
            champ_cur = (champ_cur + 1) % array_length(champ_name);
        }
        if menu_b_pressed{
            sound_play(asset_get("mfx_back"));
            champ_cur = (champ_cur - 1);
            if champ_cur < 0{
                champ_cur += array_length(champ_name);
            }
        }
    }
    else{
        hovering = -1;
    }
    set_synced_var(player, champ_cur);
}

else if !customizer_active && get_instance_x(cursor_id) > x + 180 && get_instance_x(cursor_id) < x + 210 && get_instance_y(cursor_id) > y + 102 + runes_mode && get_instance_y(cursor_id) < y + 132 + runes_mode && !instance_exists(oTestPlayer) && get_player_color(real_player) == 24 {
    currently_hovering = true;
    if hovering != 40{
        hovering = 40;
        sound_play(asset_get("mfx_hover"));
    }
    if !(menu_lb_pressed || menu_rb_pressed){
        suppress_cursor = true;
    }
    if menu_a_pressed{
        sound_play(asset_get("mfx_forward"));
        custom_palette = face_color * 100000000 + petals_color * 1000000 + stem_color * 100000 + thorns_color * 10000 + soul_color * 1000 + lefteye_color * 100 + righteye_color * 10 + mouth_color;
        set_synced_var(player, custom_palette);
        customizer_active = 1;
        customizer_closing = -1;
    }
}
else if customizer_active{
    customizer_timer -= customizer_closing;
    preview_frame += previews[preview_animation][1];
    if customizer_timer <= 0{
        customizer_active = 0;
    }
    if customizer_timer > 60{
        set_ui_element(UI_CHARSELECT, asset_get("empty_sprite"));
        customizer_timer = 60;
    }
    else{
        set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
        if customizer_closing{
            mouth_color = get_synced_var(real_player) % 10;
            righteye_color = ((get_synced_var(real_player) - mouth_color) / 10) % 10;
            lefteye_color = ((get_synced_var(real_player) - mouth_color - (righteye_color * 10)) / 100) % 10;
            soul_color = ((get_synced_var(real_player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100)) / 1000) % 10;
            thorns_color = ((get_synced_var(real_player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100) - (soul_color * 1000)) / 10000) % 10;
            stem_color = ((get_synced_var(real_player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100) - (soul_color * 1000) - (thorns_color * 10000)) / 100000) % 10;
            petals_color = ((get_synced_var(real_player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100) - (soul_color * 1000) - (thorns_color * 10000) - (stem_color * 100000)) / 1000000) % 100;
            face_color = ((get_synced_var(real_player) - mouth_color - (righteye_color * 10) - (lefteye_color * 100) - (soul_color * 1000) - (thorns_color * 10000) - (stem_color * 100000) - (petals_color * 1000000)) / 100000000) % 100;
        }
    }
    if customizer_timer < 0{
        customizer_timer = 0;
    }
    if !customizer_closing && get_instance_x(cursor_id) > x + 12 && get_instance_x(cursor_id) < x + 36 && get_instance_y(cursor_id) > y + 126 + runes_mode && get_instance_y(cursor_id) < y + 142 + runes_mode && !instance_exists(oTestPlayer){
        currently_hovering = true;
        if hovering != 41{
            hovering = 41;
            sound_play(asset_get("mfx_hover"));
        }
        if menu_a_pressed{
            sound_play(asset_get("mfx_forward"));
            preview_animation = (preview_animation + 1) % array_length(previews);
            preview_frame = 0;
        }
        if menu_b_pressed{
            sound_play(asset_get("mfx_back"));
            preview_animation = (preview_animation - 1) % array_length(previews);
            if preview_animation < 0{
                preview_animation = array_length(previews) - 1;
            }
            preview_frame = 0;
        }
    }
    else if !customizer_closing && get_instance_x(cursor_id) > x + 38 && get_instance_x(cursor_id) < x + 66 && get_instance_y(cursor_id) > y + 120 + runes_mode && get_instance_y(cursor_id) < y + 146 + runes_mode && !instance_exists(oTestPlayer){
        currently_hovering = true;
        if hovering != 42{
            hovering = 42;
            sound_play(asset_get("mfx_hover"));
        }
        if menu_a_pressed{
            sound_play(asset_get("mfx_confirm"));
            custom_palette = face_color * 100000000 + petals_color * 1000000 + stem_color * 100000 + thorns_color * 10000 + soul_color * 1000 + lefteye_color * 100 + righteye_color * 10 + mouth_color;
            set_synced_var(player, custom_palette);
        }
    }
    else if !customizer_closing && get_instance_x(cursor_id) > x + 68 && get_instance_x(cursor_id) < x + 90 && get_instance_y(cursor_id) > y + 124 + runes_mode && get_instance_y(cursor_id) < y + 142 + runes_mode && !instance_exists(oTestPlayer){
        currently_hovering = true;
        if hovering != 43{
            hovering = 43;
            sound_play(asset_get("mfx_hover"));
        }
        if menu_a_pressed{
            if selected_slot == -1{
                customizer_closing = 1;
            }
            else{
                selected_slot = -1;
            }
            sound_play(asset_get("mfx_back"));
        }
    }
    else if selected_slot == -1{
        for (var i = 0; i < 8; i++;){
            if !customizer_closing && get_instance_x(cursor_id) > x + 94 + (30 * (i % 4)) && get_instance_x(cursor_id) < x + 116 + (30 * (i % 4)) && get_instance_y(cursor_id) > y - 2 + (30 * (1 + round(((i + 2.5) / 4)))) + (runes_mode * 1.5) && get_instance_y(cursor_id) < y + 18 + (30 * (1 + round(((i + 2.5) / 4)))) + (runes_mode * 1.5) && !instance_exists(oTestPlayer){
                currently_hovering = true;
                if hovering != 50 + i{
                    hovering = 50 + i;
                    sound_play(asset_get("mfx_hover"));
                }
                if menu_a_pressed{
                    selected_slot = i;
                    sound_play(asset_get("mfx_forward"));
                }
            }
        }
    }
    else if selected_slot != -1{
        for (var i = 0; i < (selected_slot <= 1? 30:10); i++;){
            if !customizer_closing && get_instance_x(cursor_id) > x + 118 + (18 * (i % 5)) && get_instance_x(cursor_id) < x + 138 + (18 * (i % 5)) && get_instance_y(cursor_id) > y + 0 + (18 * (1 + round(((i + 3) / 5)))) + (runes_mode * 1.5) && get_instance_y(cursor_id) < y + 20 + (18 * (1 + round(((i + 3) / 5)))) + (runes_mode * 1.5) && !instance_exists(oTestPlayer){
                currently_hovering = true;
                if hovering != i{
                    hovering = i;
                    sound_play(asset_get("mfx_hover"));
                }
                if menu_a_pressed{
                    switch selected_slot{
                        case 0:
                            face_color = i;
                        break;
                        case 1:
                            petals_color = i;
                        break;
                        case 2:
                            stem_color = i;
                        break;
                        case 3:
                            thorns_color = i;
                        break;
                        case 4:
                            soul_color = i;
                        break;
                        case 5:
                            lefteye_color = i;
                        break;
                        case 6:
                            righteye_color = i;
                        break;
                        case 7:
                            mouth_color = i;
                        break;
                    }
                    sound_play(asset_get("mfx_confirm"));
                }
            }
        }
    }
    if currently_hovering == false{
        hovering = -1;
        hovering_timer = 0;
    }
    suppress_cursor = true;
}
else if customizer_active == false{
    hovering = -1;
    hovering_timer = 0;
    suppress_cursor = false;
    set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
}

if hovering >= 0{
    hovering_timer = (hovering_timer + 1) % 60;
}