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

if (get_player_color(player) == 8) {
    if (targeted == true && target_time > 0){
    with (other_player_id){
    draw_sprite_ext(sprite_get("target"), 1, other.x, other.y, 1, 1, 0, c_white, 0.3);
    }
}

if (maintarget == true && target_time > 0){
    with (other_player_id){
    draw_sprite_ext(sprite_get("target"), 1, other.x, other.y, 1, 1, 0, c_white, 0.9);
    }
}
    
} else {

if (targeted == true && target_time > 0){
    with (other_player_id){
    //spawn_hit_fx(x, y, (target_locked));
    draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_white, 0.3);
    }
}

if (maintarget == true && target_time > 0){
    with (other_player_id){
    //spawn_hit_fx(x, y, (target_locked));
    draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_white, 0.9);
    }
}

}

if (timestop_damage > 0){
draw_debug_text( x-6, y-64 - char_height, string( timestop_damage ) + "%");
}