// dspecial2

//dspecial 2
switch (inv_selection_unend){
    case 1:
        vial_imagination += 50;
        inv_count[inv_selection] = 0;
        sound_play(sfx_what, false, false, 0.1);
        sound_stop(sfx_item_get);
        window = 3;
        break
        
    case 2:
        if (floor(window_timer / 12) == ceil(window_timer / 12)){
            sound_play(sfx_gulp)
            intoxication += 60;
        }
        if (!special_down && window_timer > 24){
            window = 3;
        }
    break
    
    case 3:
        if (window_timer == 11){
            vial_vim = 200;
            sound_play(sfx_gulp);
            generic_effect = spawn_hit_fx(x - 2 * spr_dir, y - 68, vfx_empty_coffee);
            generic_timer.hsp = -6 * spr_dir;
            generic_effect.vsp = -5;
            generic_effect.depth = 10;
            generic_effect.grav = 0.8;
        }
        if (window_timer >= 16){
            window = 3;
            inv_count[inv_selection] -= 1;
        }
    break
            
    case 4:
        if (generic_timer == 0){
            sound_play(sfx_chime2);
            generic_timer += 1
            hat_store += 1
            inv_count[inv_selection] -= 1
        }
        if (window_timer == 4){
            window = 3;
        }
    break
            
    case 5:
        if (window_timer == 41){
            sound_play(asset_get("sfx_swipe_medium2"))
        }
        
        if (window_timer == 42){
            sound_play(asset_get("sfx_swipe_weak1"))
        }
        if (window_timer >= 56){ 
            sound_play(sfx_bom);
            if (instance_exists(window_art[1])){
                with (window_art[1]){
                    other.x = x + other.hsp;
                    other.y = y + other.vsp;
                    other.vsp = other.vsp * sign(-other.vsp) - 4;
                    telecooldown = 60;
                }
            } else
            if (instance_exists(window_art[0])){
                with (window_art[0]){
                    other.x = x + other.hsp;
                    other.y = y + other.vsp;
                    other.vsp = other.vsp * sign(-other.vsp) - 4;
                    telecooldown = 60;
                }
            } else{
                take_damage(player, player, 1);
                sound_play(asset_get("sfx_shovel_hit_med2"));
                spawn_hit_fx(x, y - 52, HFX_GEN_OMNI);
            }
        window = 3;
        }
    break
            
    case 6:
        if (generic_timer == 0){
            generic_timer = random_func(6, 4, true) + 1
        }
        if (window_timer == 5){ 
            sound_play(asset_get("sfx_land_light"), false, false, 2, 1.5);
            if (generic_timer == 4){
                lobbed_item = create_hitbox(AT_FSPECIAL, itm_knifebear, x + 12, y - 32)
                lobbed_item.hsp = -3 * spr_dir;
                lobbed_item.vsp = 2;
                lobbed_item.can_hit_self = true
                inv_count[inv_selection] -= 1;
            } else{
                vial_imagination += 25
                vial_vim += 15
                vial_pulchritude += 20
            }
        }
        if (window_timer == 10){
            sound_play(asset_get("sfx_land_light"), false, false, 2, 1.5);
        }
        if (window_timer == 16){ 
            window = 3
        }
    break
            
    case 7:
        if (window_timer == 31){ 
            shades_wearing = 2 * inv_count[inv_selection];
            inv_slot[inv_selection] = itm_busted_bust;
        }
        
        if (window_timer == 20){ 
            sound_play(sound_get("glare"))
        }
        
        if (window_timer == 38){ 
            window = 3;
        }
    break
            
    case 8:
        if (window_timer == 1){
            sound_play(sound_get("bag_rustle"))
        }
        if (window_timer < 60){
            intoxication += 2.5
        }
        if (window_timer == 60){
            sound_play(sfx_chime2)
        }
        if (window_timer == 70){ 
            hat_store += 3;
        }
        if (window_timer == 75){ 
            window = 3;
        }
    break
            
    case 9:
        if (floor(image_index) != generic_timer){
            if (floor(image_index) == 3 || floor(image_index) == 4 || floor(image_index) == 6 || floor(image_index) == 9 || floor(image_index) == 11){
                sound_play(sound_get("click"))
                generic_timer = floor(image_index);
            }
        } 
        if (window_timer < 600){
            generic_timer2 += 0.1;
            if (generic_timer2 >= 12){
                generic_timer2 = 0;
            }
        }
        if (window_timer == 600){ 
            sound_play(sfx_glimmer)
            hat_store = 5;
            vial_imagination = vial_limit;
            vial_pulchritude = vial_limit;
            vial_vim = vial_limit;
            allresource[1] = allresource_max;
            allresource[2] = allresource_max;
            allresource[3] = allresource_max;
            allresource[4] = allresource_max;
            shades_wearing = 20;
            ammo = 6;
            object_duality = -1;
            inv_count[0] = 0;
            inv_count[1] = 0;
            inv_count[2] = 0;
            inv_count[3] = 0;
            inv_count[4] = 0;
        }
        if (window_timer == 650 || window_timer > 60 && special_down == false){ 
            window = 3;
        }
    break
            
    case 10:
        if (window_timer == 7){ 
            if (weapon_locked == 0){
                weapon_locked = 60000;
                sound_play(sound_get("heavy_lock"), false, false, 1, 1);
            } else{
                weapon_locked = 0;
                sound_play(sfx_lock, false, false, 1, 2);
            }
        }
        if (window_timer == 14){ 
            window = 3;
        }
    break
            
    case 11:
        if (window_timer == 6){
            sound_play(asset_get("sfx_swipe_weak2"));
        }
        if (window_timer == 8){
            sound_play(sound_get("click"));
            ammo = 6;
            inv_count[inv_selection] -= 1;
        }
        if (window_timer == 17){
            sound_play(sfx_gunload, false, false, 1, 1);
        }
        if (window_timer == 30){ 
            window = 3;
        }
    break
            
    case 12:
        if (window_timer == 20){ 
            allresometer[inv_selection_unend - 11] += allresource_cost * 2;
            inv_count[inv_selection] -= 1
        }
        if (window_timer == 24){
            window = 3
        }
    break
            
    case 13:
        if (window_timer == 20){ 
            allresometer[inv_selection_unend - 11] += allresource_cost * 2;
            inv_count[inv_selection] -= 1
        }
        if (window_timer == 24){
            window = 3
        }
    break
            
    case 14:
        if (window_timer == 20){ 
            allresometer[inv_selection_unend - 11] += allresource_cost * 2;
            inv_count[inv_selection] -= 1
        }
        if (window_timer == 24){
            window = 3
        }
        break
        
    case 15:
        if (window_timer == 20){ 
            allresometer[inv_selection_unend - 11] += allresource_cost * 2;
            inv_count[inv_selection] -= 1
        }
        if (window_timer == 24){
            window = 3
        }
    break

    default:
        if (window_timer > 24){
            window = 3;
        }
}