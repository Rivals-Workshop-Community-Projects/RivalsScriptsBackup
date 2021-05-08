//
if (hitstop > 0)
    hitstop --
else {
    window_timer++;
    
    //Starting animation
    if (window == 1) {
        sprite_index = sprite_get("fx_nspecial_start");   
        if (window_timer <= 24) {
            image_index = ease_linear(0, 3, window_timer, 20)
        }
        if (window_timer >= 24 && window_timer <= 48) {
            image_index = ease_linear(3, 6, window_timer - 24, 20)
        }
        if (window_timer >= 48 && window_timer <= 72) {
            image_index = ease_linear(6, 9, window_timer - 48, 20)
        }
        if (window_timer == 24 && let_go) {
            window = 2;
            window_timer = 0;
        }
        if (window_timer == 48 && let_go) {
            window = 4;
            window_timer = 0;
        }
        if (window_timer == 72) {
            window = 6;
            window_timer = 0;
        }
    }
    
    //Charge 1
    if (window == 2) {
        sprite_index = sprite_get("fx_nspecial1_idle");    
        if (window_timer <= 290) {
            image_index += 0.1;
            if (image_index >= 4)
                image_index = 0
        }
        if (window_timer > 290 && window_timer < 300) {
            image_index = window_timer % 4 < 2 ? 4 : 5;
        }
        
        if (window_timer = 300) {
            window = 3;
            window_timer = 0;
        }
    }
    
    if (window == 3) {
        sprite_index = sprite_get("fx_nspecial1_attack");   
        if (window_timer < 8) {
            image_index = ease_linear(0, 1, window_timer, 8);
        }
        if (window_timer == 8) {
            image_index = 2;
            sound_play(asset_get("sfx_rag_root"))
            create_hitbox(AT_NSPECIAL, 1, round(x), round(y))
        }
        
        if (window_timer > 8 && window_timer < 42) {
            image_index = ease_linear(2, 10, window_timer - 8, 34);
        }
        
        if (window_timer == 42) {
            shoulddie = true;
        }
    }
    
    //Charge 2
    if (window == 4) {
        sprite_index = sprite_get("fx_nspecial2_idle");    
        if (window_timer <= 290) {
            image_index += 0.1;
            if (image_index >= 4)
                image_index = 0
        }
        if (window_timer > 290 && window_timer < 300) {
            image_index = window_timer % 4 < 2 ? 4 : 5;
        }
        
        if (window_timer == 300) {
            window = 5;
            window_timer = 0;
        }
    }
    
    if (window == 5) {
        sprite_index = sprite_get("fx_nspecial2_attack");   
        if (window_timer < 8) {
            image_index = ease_linear(0, 1, window_timer, 8);
        }
        if (window_timer == 8) {
            image_index = 2;
            sound_play(asset_get("sfx_rag_root"))
            create_hitbox(AT_NSPECIAL, 2, round(x), round(y))
        }
        
        if (window_timer > 8 && window_timer < 80) {
            image_index = ease_linear(2, 9, window_timer - 8, 72);
        }
        
        if (window_timer >= 80) {
            shoulddie = true;
        }
    }
    
    //Charge 3
    if (window == 6) {
        sprite_index = sprite_get("fx_nspecial3_idle");   
        if (window_timer <= 290) {
            image_index += 0.1;
            if (image_index >= 4)
                image_index = 0
        }
        if (window_timer > 290 && window_timer < 300) {
            image_index = window_timer % 4 < 2 ? 4 : 5;
        }
        
        if (window_timer == 300) {
            window = 7;
            window_timer = 0;
        }
    }
    
    if (window == 7) {
        sprite_index = sprite_get("fx_nspecial3_attack");   
        if (window_timer < 8) {
            image_index = ease_linear(0, 1, window_timer, 8);
        }
        if (window_timer == 8) {
            sound_play(asset_get("sfx_rag_root"))
            image_index = 2;
            create_hitbox(AT_NSPECIAL, 3, round(x), round(y))
        }
        
        if (window_timer == 16) {
            image_index = 3
            sound_play(asset_get("sfx_rag_plant_shoot"))
            create_hitbox(AT_NSPECIAL, 4, round(x), round(y))
        }
        if (window_timer > 16 && window_timer < 96) {
            image_index = ease_linear(4, 12, window_timer - 16, 80);
        }
        
        if (window_timer >= 96) {
            shoulddie = true;
        }
    }
}
    
//Starting animation
if (window == 8) {
    sprite_index = sprite_get("fx_nspecial_end");   
    image_index = ease_linear(3, 6, window_timer, 20)
    if (window_timer == 20) {
        shoulddie = true;
    }
}

var this_object = id;
with (pHitBox) {
    if (player_id == other.player_id) {
        if (attack == AT_NSPECIAL && type != 2) {
            with (player_id) {
                other.x_pos = ((this_object.x + get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X) * this_object.spr_dir) - x);
                other.y_pos = ((this_object.y + get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y)) - y);
                other.hsp = this_object.hsp;
                other.vsp = this_object.vsp;
            }
            if (has_hit) {
                this_object.hitstop = player_id.hitstop;
                player_id.hitstop = 0;
            }
        }
    }
}
if (shoulddie) {
    with (pHitBox) {
        if (player_id == other.player_id) {
            if (attack == AT_NSPECIAL) {
                instance_destroy(id);
                continue;
            }
        }
    }
    instance_destroy(id);
    exit;
}