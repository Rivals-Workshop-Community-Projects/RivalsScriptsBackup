// attack_update

// F-tilt shenanigans

if (attack == AT_FTILT){
    if (window == 2 && window_timer > 8){
        if (attack_pressed){
            window = 3;
            window_timer = 0;
        }
        else{
            window = 4;
        }
    }
}

// U-air Sound
if (attack == AT_UAIR){
    if (window == 1 && window_timer = 17){
        sound_play(sound_get("firework"));
    }
}

// D-air Sound
if (attack == AT_DAIR){
    if (window == 1 && window_timer = 17){
        sound_play(sound_get("firework"));
    }
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



//Tick Tick Boom

if (attack == AT_NSPECIAL){
    if (window == 2 && window_timer == 26){
        tickCount++;
        if (tickCount == 5){
            sound_play(asset_get("sfx_ell_overheat"));
        }
    }
}

if (attack == AT_NSPECIAL_2){
    tickCount = 0;
    if(window == 2 && window_timer == 1){
        spawn_hit_fx(x, y - 36, 143);
        spawn_hit_fx(x, y - 36, 204);
        take_damage(player, -1, 10);
    }
    if(window == 3 && free == true){
        window = 4;
    }
}

if (attack == AT_FSPECIAL){
    if (window == 3 && window_timer == 17) {
         move_cooldown[AT_FSPECIAL] = 30;
         move_cooldown[AT_FSPECIAL_2] = 35;
    }
}

if (attack == AT_FSPECIAL_2){
    if(window == 1 && window_timer == 1){
        tickCount--;
    }
    
    if (window == 3 && window_timer == 17) {
         move_cooldown[AT_FSPECIAL] = 30;
         move_cooldown[AT_FSPECIAL_2] = 35;
    }
}


    
//Tick with Firework

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 9){
        if (tickCount == 0){
            sound_play(asset_get("sfx_mobile_gear_jump"));
        }
        if (tickCount > 0){
            sound_play(sound_get("thunder"));
            sound_play(sound_get("fall"));
            create_hitbox(AT_USPECIAL, 1, x - (80 * spr_dir), y - 80);
            create_hitbox(AT_USPECIAL, 2, x, y);
            spawn_hit_fx(x, y, 112);
        }
    }
    if (window == 3 && window_timer == 1){
        if (tickCount > 0 && bounceCount > 0){
            tickCount--;
            bounceCount--;
        }
        if (tickCount == 0 || bounceCount == 0){
            window = 4;
        }
    }
}

//Create article for Cannon

if (attack == AT_DSPECIAL){
    
    if (window == 1 && window_timer == 1){
        if (tickCount == 0){ //CANCEL IF WICK HAS NO TICKS
            if (!weaponOut){ //CANCEL IF WEAPONOUT IS TRUE.
            sound_play(sound_get("wrong"));
            }
            window = 3;
        }
        if (weaponOut){ //CANCEL IF WEAPONOUT IS TRUE.
            window = 3;
        }
        
    }
    
    //CREATE CANNON
    if (window == 2){
        if (window_timer == 1){
            sound_play(sound_get("countdown"));
        }
        if (window_timer == 15){
            sound_play(asset_get("sfx_metal_hit_weak"));
        }
        if (window_timer == 20){
        }
        if (window_timer == 36){
            sound_play(asset_get("sfx_shop_buy"));
        }
        if (window_timer == 42){
            if(spr_dir = 1){
                weapon = instance_create(x + 34, y - 36, "obj_article3");
            }
            else{
                weapon = instance_create(x - 70, y - 36, "obj_article3");
            }
            tickCount--;
            weaponOut = true;
            window = 3;
            window_timer = 1;
        }
    }
    
    //CHANGE ANGLE WITH DSPECIAL
    if (window == 3 && weaponOut){
        if(special_down){
            window_timer = 2;
            
            with (obj_article3) {
                if (player_id == other.id && state != 5) {
                    if(player_id.left_pressed || player_id.right_pressed || player_id.up_pressed){
                        sound_play(sound_get("onetick"));
                    }
                    if(player_id.up_down){
                        state = 2;
                    }
                    if(player_id.right_down){
                        if(player_id.up_down){
                            state = 1;
                        }
                        else state = 0;
                    }
                    if(player_id.left_down){
                        if(player_id.up_down){
                            state = 3;
                        }
                        else state = 4;
                    }
                }
            }
        }
    }
}

if (attack == AT_TAUNT){
    if(window == 1 && window_timer == 1){
        create_hitbox(AT_DSPECIAL,1,x - (16 * spr_dir),y - 32);
        spawn_hit_fx(x, y - 16, 144);
    }
    if(window == 2){
        if(window_timer == 1){
            spr_dir *= -1;
        }
    }
    if(window == 3){
        if(window_timer == 1){
            spr_dir *= -1;
        }
        if(window_timer == 30){
            create_hitbox(AT_DSPECIAL,1,x - (16 * spr_dir),y - 32);
            spawn_hit_fx(x, y - 16, 144);
        }
    }
}