// pre-draw

 with (other_player_id){

if (attack == AT_USPECIAL && (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) 
    && window = 5){
            shader_start();
            if (runeF || has_rune("F")){
        if (spr_dir == 1){
            draw_sprite_ext(sprite_get("izuna2"), get_gameplay_time()*.3, x+25, y+10, 1, 1, 0, c_white, 1 );
        }
        if (spr_dir == -1){
            draw_sprite_ext(sprite_get("izuna2"), get_gameplay_time()*.3, x, y+10, 1, 1, 0, c_white, 1 );
        }
    }
    else {
        if (spr_dir == 1){
            draw_sprite_ext(sprite_get("izuna2"), get_gameplay_time()*.3, x+25, y-30, 1, 1, 0, c_white, 1 );
        }
        if (spr_dir == -1){
            draw_sprite_ext(sprite_get("izuna2"), get_gameplay_time()*.3, x, y-30, 1, 1, 0, c_white, 1 );
        }
    }
            shader_end();
        
    }
 }
      