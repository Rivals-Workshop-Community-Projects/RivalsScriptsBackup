if "active_minion" not in self exit;

shader_start();

if (stance == "pizzaface"){

    if (move_cooldown[AT_DSPECIAL] > 0){
        draw_sprite_ext(sprite_get("hud_minions"), (minion_number + 7 - 1) % 7, temp_x - 24, temp_y - 64, 1, 1, 0, c_white, 1);
    }
    
    draw_sprite_ext(sprite_get("hud_minions"), minion_number, temp_x - 24 + floor(move_cooldown[AT_DSPECIAL]), temp_y - 64, 1, 1, 0, move_cooldown[AT_DSPECIAL]? c_gray:c_white, 1);

    draw_sprite_ext(sprite_get("hud_cog"), 0, temp_x + 156, temp_y - 64, 1, 1, 0, move_cooldown[AT_NSPECIAL]? c_gray:c_white, 1);

} else {
    draw_sprite_ext(sprite_get("pizzaheadItems_hud"), next_item_tossed, temp_x - 24, temp_y - 64, 1, 1, 0, -1, 1);
}

shader_end();


if (get_match_setting(SET_HITBOX_VIS)){
draw_debug_text(temp_x-15, temp_y - 15, "Window: " + string(window));
draw_debug_text(temp_x-15, temp_y - 30, "Timer: " + string(window_timer));
draw_debug_text(temp_x-15, temp_y - 45, "State: " + string(get_state_name(state)));
draw_debug_text(temp_x-15, temp_y - 60, "Attack: " + string(attack));
draw_debug_text(temp_x-15, temp_y - 75, "HSP: " + string(hsp));
draw_debug_text(temp_x-15, temp_y - 90, "VSP: " + string(vsp));


if (instance_exists(hit_player_obj)){
        draw_debug_text(temp_x+245, temp_y - 15, "Window: " + string(hit_player_obj.window));
        draw_debug_text(temp_x+245, temp_y - 30, "Timer: " + string(hit_player_obj.window_timer));
        draw_debug_text(temp_x+245, temp_y - 45, "State: " + string(get_state_name(hit_player_obj.state)));
        draw_debug_text(temp_x+245, temp_y - 60, "Attack: " + string(hit_player_obj.attack));
        draw_debug_text(temp_x+245, temp_y - 75, "HSP: " + string(hit_player_obj.hsp));
        draw_debug_text(temp_x+245, temp_y - 90, "VSP: " + string(hit_player_obj.vsp)); 
    }
}

