//post-draw
//uspecial ballon detaching and flying away
if(balloon_active){
    if(balloon_y < get_stage_data( SD_Y_POS ) - get_stage_data( SD_TOP_BLASTZONE )){
        balloon_active = false;
    }
    
    shader_start();
    draw_sprite_ext(sprite_get("balloon"), get_gameplay_time()/6, balloon_x, balloon_y, spr_dir, 1, 0, c_white, 1);
    shader_end();
    
    balloon_x += BALLOON_H_SPEED * b_spr_dir;
    balloon_y += BALLOON_V_SPEED;
}

//dust effect when changing stance
if(spawn_dust){
    spawn_dust = false;
    if(!free){
        spawn_hit_fx(x, y, dust_fore);
    }
}

/*//gunshot effects
for(k = 0; k < active_fx_size; ++k){
    //draw effect if fx is found
    if(active_fx[k, 0] != noone){
        switch(active_fx[k, 0]){
            case "dair":
                draw_sprite_ext(sprite_get("dair_fx"), 
                active_fx[k, 5], 
                active_fx[k, 1], active_fx[k, 2], 
                spr_dir, 1, 0, c_white, 1);
                break;
            case "bair":
                draw_sprite_ext(sprite_get("bair_fx"), 
                active_fx[k, 5], 
                active_fx[k, 1], active_fx[k, 2], 
                spr_dir, 1, 0, c_white, 1);
                break;
            case "fair1":
                draw_sprite_ext(sprite_get("fair_fx1"), 
                active_fx[k, 5], 
                active_fx[k, 1], active_fx[k, 2], 
                spr_dir, 1, 0, c_white, 1);
                break;
            case "fair2":
                draw_sprite_ext(sprite_get("fair_fx2"), 
                active_fx[k, 5], 
                active_fx[k, 1], active_fx[k, 2], 
                spr_dir, 1, 0, c_white, 1);
                break;
            case "fair3":
                draw_sprite_ext(sprite_get("fair_fx3"), 
                active_fx[k, 5], 
                active_fx[k, 1], active_fx[k, 2], 
                spr_dir, 1, 0, c_white, 1);
                break;
            default:
                break;
        }
    }
}*/