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
if (targeted == true){
    with (other_player_id){
        
    switch (get_player_color(player)){
        case 0:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_red, 0.3);
        break;
        
        case 1:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_orange, 0.3);
        break;
        
        case 2:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_teal, 0.3);
        break;
        
        case 3:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_green, 0.3);
        break;
        
        case 4:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_orange, 0.3);
        break;
        
        case 5:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_white, 0.3);
        break;
        
        case 6:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_blue, 0.3);
        break;
        
        case 7:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_gray, 0.3);
        break;
        
        case 8:
        draw_sprite_ext(sprite_get("target"), 1, other.x, other.y, 1, 1, 0, c_white, 0.3);
        break;
            }  
        }
    }
}
if (maintarget == true){
    with (other_player_id){
        
    switch (get_player_color(player)){
        case 0:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_red, 0.9);
        break;
        
        case 1:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_orange, 0.9);
        break;
        
        case 2:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_teal, 0.9);
        break;
        
        case 3:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_green, 0.9);
        break;
        
        case 4:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_orange, 0.9);
        break;
        
        case 5:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_white, 0.9);
        break;
        
        case 6:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_blue, 0.9);
        break;
        
        case 7:
        draw_sprite_ext(sprite_get("target"), 0, other.x, other.y, 1, 1, 0, c_white, 0.9);
        break;
        
        case 8:
        draw_sprite_ext(sprite_get("target"), 1, other.x, other.y, 1, 1, 0, c_white, 0.9);
        break;
        }  
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

if (timestop_damage > 0){
draw_debug_text( x-6, y-64 - char_height, string( timestop_damage ) + "%");
}