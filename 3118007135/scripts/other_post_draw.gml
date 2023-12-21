if wren_riptide_id != noone{
    if (wren_riptide && other_player_id == wren_riptide_id){
        var riptide_sprite = -1;
        with (wren_riptide_id){
            //sprite_get can only be called directly by the workshop character
            if (other.land_time < 6){
                switch(other.wren_stacks){
                    case 1:
                        riptide_sprite = sprite_get("marksmallA_front");
                        break;
                    case 2:
                        riptide_sprite = sprite_get("marksmallB_front");
                        break;
                    case 3:
                        riptide_sprite = sprite_get("marksmallC_front");
                        break;
                }
            }
            else {
                switch(other.wren_stacks){
                    case 1:
                        riptide_sprite = sprite_get("marklargeA_front");
                        break;
                    case 2:
                        riptide_sprite = sprite_get("marklargeB_front");
                        break;
                    case 3:
                        riptide_sprite = sprite_get("marklargeC_front");
                        break;
                }
            }
            shader_start();
        }
        if (riptide_sprite != -1)
            draw_sprite(riptide_sprite, get_gameplay_time()*.15, x, y-char_height*.5);
        with (wren_riptide_id){
            shader_end();
        }
    }
}