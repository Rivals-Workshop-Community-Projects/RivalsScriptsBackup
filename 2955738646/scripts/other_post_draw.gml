//post drawing on players

/*
with (other_player_id){
    if (telepunch <= 1){
    if (has_hit_id > 0){
    //if (has_hit_id.state == PS_HITSTUN || has_hit_id.hitpause == true || has_hit_id.hitstop == true){ //&& telepunch == false){
draw_sprite_ext(sprite_get("target"), 0, has_hit_id.x-70, has_hit_id.y - has_hit_id.char_height * 2, 0.3, 0.3, 0, c_white, 0.5);
        }
    }
}
*/

if (target_time > 0){
if (targeted == true && maintarget == false){
    with (other_player_id){
        draw_sprite_ext(sprite_get("target_lock"), 0, other.x, other.y - other.char_height, 1.3, 1.3, 0, scanner_color, 1);
        draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y, (1 + other.small_sprites) * other.spr_dir, 1 + other.small_sprites, 0, scanner_color, 1);
        }
    }
}
if (maintarget == true){
        //if (other.timeframe >= 0){ other.timeframe = ; }
    with (other_player_id){
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, scanner_color, 0.9);
                
        draw_sprite_ext(sprite_get("target_indicator"), 0, other.x-35 + other.target_X_placement, other.y+40 - other.target_Y_placement, 2, 2, 0, scanner_color, 1);
        draw_sprite_ext(sprite_get("target_numbers"), other.target_number, other.x-34 + other.target_X_placement, other.y+40 - other.target_Y_placement, 2, 2, 0, scanner_color, 1);
        draw_sprite_ext(sprite_get("target_numbers"), other.target_number + other.target_Y_placement, other.x-29 + other.target_X_placement, other.y+50 - (other.target_Y_placement / other.char_height), 2, 2, 0, scanner_color, 1);
        draw_sprite_ext(sprite_get("target_numbers"), other.target_number * other.target_Y_placement, other.x-24 + other.target_X_placement, other.y+50 - (other.target_Y_placement / other.char_height), 2, 2, 0, scanner_color, 1);
        draw_sprite_ext(sprite_get("target_numbers"), other.target_number / other.target_Y_placement / 2, other.x-19 + other.target_X_placement, other.y+50 - (other.target_Y_placement / other.char_height), 2, 2, 0, scanner_color, 1);
        draw_sprite_ext(sprite_get("target_numbers"), other.target_number + other.target_X_placement, other.x-14 + other.target_X_placement, other.y+50 - (other.target_Y_placement / other.char_height), 2, 2, 0, scanner_color, 1);
        draw_sprite_ext(sprite_get("target_numbers"), other.target_number * other.target_X_placement, other.x-9 + other.target_X_placement, other.y+50 - (other.target_Y_placement / other.char_height), 2, 2, 0, scanner_color, 1);
        draw_sprite_ext(sprite_get("target_numbers"), other.target_number / other.target_X_placement, other.x-4 + other.target_X_placement, other.y+50 - (other.target_Y_placement / other.char_height), 2, 2, 0, scanner_color, 1);
    }
}

/*
if (maintarget == true && target_time > 0){
    with (other_player_id){
        
    if (get_player_color(player) == 0) {
    draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_red, 0.9);
    }
    if (get_player_color(player) == 1) {
    draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_orange, 0.9);
    }
    if (get_player_color(player) == 2) {
    draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_teal, 0.9);
    }
    if (get_player_color(player) == 3) {
    draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_lime, 0.9);
    }
    if (get_player_color(player) == 8) {
    draw_sprite_ext(sprite_get("target"), 1, other.x, other.y, 1, 1, 0, c_white, 0.9);
    }
    
    
    }
}

/*
if (targeted == true && target_time > 0){ //Gameboy color lock-on
    with (other_player_id){
    if (get_player_color(player) == 8) {
    draw_sprite_ext(sprite_get("target"), 1, other.x, other.y, 1, 1, 0, c_white, 0.3);
        }
    }
}
if (maintarget == true && target_time > 0){
    with (other_player_id){
    draw_sprite_ext(sprite_get("target"), 1, other.x, other.y, 1, 1, 0, c_white, 0.9);
    }
}

if (targeted == true && target_time > 0){
    with (other_player_id){
    if (get_player_color(player) < 8) {
    draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_white, 0.3);
        }
    }
}
if (maintarget == true && target_time > 0){
    with (other_player_id){
    if (get_player_color(player) < 8) {
    draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_white, 0.9);
    }
}

}
*/

if (timestop_damage > 0){
//draw_debug_text( x-6, y-64 - char_height, string( timestop_damage ) + "%");
}