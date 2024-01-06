// animation.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/animation_scripts.html#animation-gml
// Called each frame. For manually changing your sprite_index and image_index.

if(has_rune("M") && (visible == false || grabbed_invisible)){
    visible = true;
    grabbed_invisible = false;
    sprite_index = asset_get("empty_sprite");
    draw_indicator = false;
}

if(get_gameplay_time() == 3){
    with(oPlayer){
        if(self != other){
            if(hurtboxID.sprite_index != hurtbox_spr){
                var prev_spr = hurtboxID.sprite_index;
                hurtboxID.sprite_index = hurtbox_spr;
                
                var _xx = x;
                var _yy = y - char_height/2;
                
                for(var i = 0; i < 50; i++){
                    if(!position_meeting(_xx, _yy, self)){
                        char_wideness = max((i - 1) * 2, char_wideness);
                        break;
                    } else {
                        _xx++;
                    }
                }
                
                hurtboxID.sprite_index = prev_spr;
            } else {
                
                var _xx = x;
                var _yy = y - char_height/2;
                
                for(var i = 0; i < 50; i++){
                    if(!position_meeting(_xx, _yy, hurtboxID)){
                        char_wideness = max((i - 3) * 2);
                        break;
                    } else {
                        _xx++;
                    }
                }
                
            }
        }
    }
}    

if(state == PS_SPAWN){
    sprite_index = sprite_get("entrance");
    if(state_timer >= 16){
        image_index = (state_timer-16)/5;
    } else if(state_timer < 16){
        image_index = 0;
    }
    switch(state_timer){
        case 22:
        sound_play(asset_get("sfx_shovel_hit_heavy1"));
        sound_play(asset_get("sfx_frog_dstrong"));
        sound_play(asset_get("sfx_swish_medium"));
        break;
        case 60:
        sound_play(sound_get("sfx_sludgehit_heavy"))
        break;
        case 64:
        sound_play(asset_get("sfx_shovel_hit_med2"));
        break;
    }
}
if(state == PS_IDLE && prev_state == PS_SPAWN && state_timer == 126){
    image_index = 0;
}
