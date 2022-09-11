if (flower_crowned && other_player_id == flower_crown_id){
    
    var flower_crown_vfx = -1;
    
    with (flower_crown_id){
        var flower_crown_vfx = sprite_get("flower_crown");
        shader_start();
    }
    
    var flower_crown_x_offset = 0;
    var flower_crown_y_offset = 2;
    
    if (flower_crown_vfx != -1){
        if (flower_crown_timer < 40){
            if (flower_crown_timer mod 12 < 6){
                draw_sprite(flower_crown_vfx, get_gameplay_time()*0.25, x + flower_crown_x_offset*spr_dir, y-char_height + flower_crown_y_offset);
            }
        }
        else{
            draw_sprite(flower_crown_vfx, get_gameplay_time()*0.25, x + flower_crown_x_offset*spr_dir, y-char_height + flower_crown_y_offset);
        }
    }
    
    with (flower_crown_id){
        var flower_crown_vfx = sprite_get("flower_crown");
        shader_end();
    }
}