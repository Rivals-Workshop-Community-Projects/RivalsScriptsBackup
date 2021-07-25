if (omori_debuff && other_player_id == omori_debuff_id){
    
    var debuff_vfx = -1;
    
    with (omori_debuff_id){
        var debuff_vfx = sprite_get("arrow_debuff");
        shader_start();
    }
    
    if (debuff_vfx != -1){
        if (omori_debuff_timer < 60){
            if (omori_debuff_timer mod 6 == 0){
                draw_sprite(debuff_vfx, get_gameplay_time()*0.25, x - 20*spr_dir, y-char_height);
            }
        }
        else{
            draw_sprite(debuff_vfx, get_gameplay_time()*0.25, x - 20*spr_dir, y-char_height);
        }
    }
    
    with (omori_debuff_id){
        var debuff_vfx = sprite_get("arrow_debuff");
        shader_end();
    }
}