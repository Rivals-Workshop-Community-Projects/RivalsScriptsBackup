//post-draw



if (attack == AT_DSPECIAL && tickCount > 0 && !dodgeCheck){
    if (window == 2){
        draw_sprite(sprite_get("puff"), window_timer * 0.36, x - (16 - (52 * spr_dir)), y - 16);
    }
}



// CANNON STUFF
with (obj_article3) {
  if (player_id == other.id) {
    // ARROWS
    if(player_id.attack == AT_DSPECIAL){
        if(player_id.window == 3 && player_id.weaponOut){
            if(player_id.window_timer > 1){
                if (state != 5){
                    draw_sprite(sprite_get("arrow"), 4 - state, x - 30, y - 28);
                }
            }
        }
    }
    // COUNTDOWN
    if(state == 5 && demo_timer > 0){
        draw_circle_colour(x + 16, y + 14, (demo_timer / 2) + 4, c_white, c_white, true);
        draw_sprite(sprite_get("countdown"), ceil(demo_timer / 33), x + 10, y + 8);
    }
  }
}

