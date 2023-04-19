//draw_hud.gml

if("steam" not in self) exit;

draw_sprite(sprite_get("hud_steam_meter"), (steam / 3.13), temp_x + 31, temp_y + 24)

if(tired){
    draw_sprite(sprite_get("mode_icon"), 1, temp_x + 30, temp_y - 8)
}else{
    draw_sprite(sprite_get("mode_icon"), 0, temp_x + 30, temp_y - 8)
}

/*
if(move_cooldown[AT_NSPECIAL] <= 0){
    if(pedal_to_metal){
        draw_sprite(sprite_get("pttm"), 2, temp_x + 170, temp_y - 15)
    }else if(steam <= 0){
        draw_sprite(sprite_get("pttm"), 1, temp_x + 170, temp_y - 15)
    }else{
        draw_sprite(sprite_get("pttm"), 0, temp_x + 170, temp_y - 15)
    }
}else{
    draw_sprite(sprite_get("pttm"), 3, temp_x + 170, temp_y - 15)
}*/

//draw_debug_text(temp_x + 58, temp_y - 23, string(last_state_wl))

//draw_debug_text(temp_x + 82, temp_y - 23, string(prev_state))

