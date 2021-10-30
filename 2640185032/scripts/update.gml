
if(!free){
    uspec_bounce = 0;
    uspec_can_grab = true;
}


with(asset_get("oPlayer")){
    //Reduces Hitstun counter
    if("hitstun_counter" in self){
        if(hitstun > 0 && hitstun_counter > -1 && state == PS_HITSTUN){
            if(!is_frozen && !hitpause)hitstun_counter--;
        }else{
            hitstun_counter = -1;
        }
    }
    //Full stack vfx
    if("knife_stack" in self && knife_stack >= 3 && self != other){
        var r = floor(other.col_R / 2) * sin(degtorad(6 * (get_gameplay_time() % 30)));
        var g = floor(other.col_G / 2) * sin(degtorad(6 * (get_gameplay_time() % 30)));
        var b = floor(other.col_B / 2) * sin(degtorad(6 * (get_gameplay_time() % 30)));
        outline_color = [r, g, b];
        init_shader();
        outline_color = [0, 0, 0];
        if(get_gameplay_time() % 2 == 0){
            other.particle_x = x + (-25 + random_func(0, 50, true));
            other.particle_y = y - random_func(1, char_height + 20, true);
            with(other)spawn_hit_fx( particle_x, particle_y, vfx_flake );
        }
    }
    if("knife_stack" in self){
        if(state == PS_DEAD || state == PS_RESPAWN){
            knife_stack = 0;
        }
    }
    
}

//Freeze
if(frozen_timer > 0){
    
    if(frozen_timer == 60) sound_play(sound_get("sfx_countdown"));
    
    with(asset_get("oPlayer")){
        if("is_frozen" in self && self != other){
            if(is_frozen){
                hitpause = true;
                hitstop = 2;
                hsp = 0;
                vsp = 0;
                invincible = true;
                invince_time = 2;
            }
        }
    }
    frozen_timer--;
}else if(frozen_timer == 0){
    with(asset_get("oPlayer")){
        if("is_frozen" in self && self != other){
            if(is_frozen){
                outline_color = [0, 0, 0];
                init_shader();
                invincible = true;
                invince_time = 0;
                is_frozen = false;
                old_hsp = store_hsp;
                old_vsp = store_vsp;
                hitstop = 0;
                other.frozen_timer++;
                //To  apply speed in a not-jank way, I mess with old_hsp/vsp one frame, and
                // then normal hsp/vsp the next. So frozen_timer is equal to 0 for two frames.
                
                ////// huh
            }else{
                hsp = store_hsp;
                vsp = store_vsp;
                store_hsp = 0;
                store_vsp = 0;
            }
        }
    }
    frozen_timer--;
    if(frozen_timer == 0){
        sound_play(sound_get("sfx_shatter2"));
    }
}

if(fspec_fog_timer > -1){
    fspec_fog_timer--;
}

if(ftilt_knife_cd > -1){
    ftilt_knife_cd--;
}

//afterimage instance
if(((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && 
(attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && window == 2 && window_timer == 1 && !hitpause)){
    after_image_timer += 5;
}else if((state == PS_AIR_DODGE || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && window == 1 && window_timer == 1){
    after_image_timer += 6;
}

//variable setting
if(after_image_timer > -1 && get_gameplay_time() % 2 == 0 && !hitpause){
    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y, spr_dir:spr_dir, alpha:15};
    after_image_timer--;
    
}
//fade handler
for (var i = 0; i < 10; i++){
   if(after_image[i] != -1){
       after_image[i].alpha--;
       if(after_image[i].alpha == 0){
           after_image[i] = -1;
       }
   } 
}

//Alt System
if(start_timer <= 120 && alt_swap){
    start_timer++;
    switch(get_player_color(player)){
        
        case 4:
            //JPEG dev alt
            if(taunt_pressed && down_down){
                alt_select = 0;
                init_shader();
                alt_swap = false;
                sound_play(asset_get("sfx_diamond_collect"));
            }
            break;
        
        case 10:
            //Chimera
            if(taunt_pressed && down_down){
                alt_select = 3;
                init_shader();
                
                col_R = 48;
                col_G = 227;
                col_B = 131;
                alt_swap = false;
                sound_play(asset_get("mfx_star"));
            }
            break;
        
        case 11:
            //Parasol
            if(taunt_pressed && down_down){
                alt_select = 1;
                init_shader();
                
                col_R = 255;
                col_G = 59;
                col_B = 59;
                alt_swap = false;
                sound_play(asset_get("mfx_star"));
            }
            break;
        
        case 13:
            //Kerkyeion
            if(taunt_pressed && down_down){
                alt_select = 2;
                init_shader();
                
                col_R = 37;
                col_G = 214;
                col_B = 255;
                alt_swap = false;
                sound_play(asset_get("mfx_star"));
            }
            break;
    }
}