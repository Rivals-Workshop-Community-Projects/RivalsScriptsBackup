// Post draw for other players

if (SpamNeoStringPlayerId == other_player_id.id) {
    if (SpamNeoString == true) {
        if (SpamNeoSPoison == false) {
            with (other_player_id) {
                shader_start();
                draw_sprite_ext(sprite_get("stringcharge_meter"), other.SpamNeoStringCharge, other.x, other.y - other.char_height - 4, 1, 1, 0, c_white, 1);
                shader_end();
            }
            
            if (SpamNeoSPoisonOutlineFix == false) {
                outline_color = [0, 0, 0];
                SpamNeoSPoisonOutlineFix = true;
            }
        } else {
            
            draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, c_lime, 0.3);
            
            with (other_player_id) {
                shader_start();
                draw_sprite_ext(sprite_get("stringcharge_metersp"), other.SpamNeoStringCharge, other.x, other.y - other.char_height - 4, 1, 1, 0, c_white, 1);
                shader_end();
            }
        }
    } else {
        if (SpamNeoSPoisonOutlineFix == false) {
            outline_color = [0, 0, 0];
            SpamNeoSPoisonOutlineFix = true;
        }
    }
    
    if (SpamNeoSnapAnim == true) {
        with (other_player_id) {
            shader_start();
            draw_sprite_ext(sprite_get("shrinking"), other.SpamNeoPointerFrame, other.x, other.y - other.char_height / 2 - 4, 1, 1, 0, c_white, 1);
            shader_end();
        }
    }
}
