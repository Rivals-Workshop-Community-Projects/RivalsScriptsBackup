//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// if attack == AT_TAUNT{ //this is debug and maybe a rune
//     if window == 1 and window_timer == 1{
//         honey_armor += 1
//     }
// }

// if taunt_down and down_down{
//     attack = AT_TAUNT_2
//     // state = PS_ATTACK_GROUND
// }

// if attack == AT_TAUNT_2 and window == 2 and window_timer >= 5{
//     print("dingdong")
// 	if taunt_down{
// 		attack = AT_TAUNT_2
// 		window_timer = 0;
// 		print("pipe")
// 	}
//     if taunt_down == false{
//     	state = PS_CROUCH
//     	if down_down{
//         state_timer = 4
//     	}
//     }
// }

if (attack == AT_NSPECIAL){
    if window == 1 and window_timer == 1{
        sacrifice = false
    }
    if window == 3 and window_timer == 1{
        if hive_count < 2 and hive_air == 0 and hive_cooldown == 0{
            instance_create( x + 48 * spr_dir, y - 4, "obj_article1" );
            hive_count += 1
            if free == true{
                hive_air = 1
            }
            // meowth_object = instance_create( x + 48 * spr_dir, y, "obj_article1" );
            // meowth_active = 1
            // meowth_timer -= 300
            // meowth_hp = 20
        }
        if hive_count >= 1{
            with (obj_article1){
                if (player_id == other.id) {
                    if state != 0{
                        hive_attack = 1
                    }
                }
            }
        }
     
        
        // else if oshawott_timer == 600 and oshawott_active == 0{
        //     osha_object = instance_create( x + 48 * spr_dir, y, "obj_article2" );
        //     oshawott_active = 1
        //     oshawott_timer -= 300
        //     oshawott_hp = 20
        // }
        // else if meowth_active == 1 and cycle == 0 and meowth_timer == 600{
        //     meowth_object.x = x + 48 * spr_dir
        //     meowth_object.y = y
        //     meowth_timer -= 300
        //     if oshawott_active{
        //         cycle = 1
        //     }
        // }
        // else if oshawott_active == 1 and cycle == 1 and oshawott_timer == 600{
        //     osha_object.x = x + 48 * spr_dir
        //     osha_object.y = y
        //     oshawott_timer -= 300
        //     if meowth_active{
        //         cycle = 0
        //     }
        // }
        can_jump = true;
    }
    
}

if (attack == AT_FSPECIAL){
    if window == 1 and window_timer == 1{
        // spawn_hit_fx(x,y,after_image)
        if free == true{
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
        }
    }
    if has_hit{
        if hive_vault == 0 and window != 4{
           set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
            hsp = 0;
            vsp = 0;
            window = 3;
        }
        if hive_vault == 1{
            hsp = 0;
            vsp = 0;
            hive_vault = 2
        }
        destroy_hitboxes();
    }
    if window == 2 and fakeout == 0{
        fakeout = 1
    }
    // if (window == 2){
    //     if (special_pressed){
    //         window = 3;
    //         window_timer = 0;
    //         destroy_hitboxes();
    //     }
    // }
    can_fast_fall = false;
    if window == 3{
        can_wall_jump = true
    }
}

if (attack == AT_USPECIAL){
    if window == 1{
        free = true
        hive_rustle = 0
    }
    if window == 1 and window_timer == 1{
        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
    }
    
    // if window == 2 and window_timer == 1{
    //     if uspec_limit_limit == 0{
    //         uspec_limit += 1
    //         uspec_limit_limit = 1
    //     }
    //     if spr_dir == 1 and left_down{
    //         spr_dir = -1
    //     }
    //     if spr_dir == -1 and right_down{
    //         spr_dir = 1
    //     }
    // }
    // if window == 2 and window_timer == 2{
    //     uspec_limit_limit = 0
    // }
    if window == 4 and free == false{
        state = PS_PRATLAND
        window_timer = 0
    }
    
    //move_cooldown[AT_USPECIAL] = 999
    if has_hit and (window == 2 or window == 3){
        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
        window = 5;
        window_timer = 0;
        destroy_hitboxes();
    }
     if window == 6{
        can_move = false
    }
    if window == 6 and window_timer == 17{
        if spr_dir == 1 and left_down{
            spr_dir = -1
        }
        if spr_dir == -1 and right_down{
            spr_dir = 1
        }
    }
    can_fast_fall = false
    if window == 3 or window == 4 or window == 7{
        can_wall_jump = true
    }
}

if (attack == AT_DSPECIAL){
    // if special_down and window == 2{
    //     attack = AT_NSPECIAL
    //     window = 1
    //     window_timer = 1
    // }
    if window == 1 and window_timer <= 1{
        set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
        //reset hitbox remove
        set_num_hitboxes(AT_DSPECIAL, 7);
        hit_assists = 0
    }
    if window == 1 and window_timer == 1{
        set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
    }
    if window == 4{
        hsp = 0
        vsp = 0
    }
    can_fast_fall = false;
    can_move = false
}

if attack == AT_UTILT{
    can_fast_fall = false
}

if attack == AT_DAIR and has_hit and window == 2{
    window = 3
    window_timer = 1
    destroy_hitboxes();
}

if attack == AT_DAIR{
    if window == 2 and window_timer == 4{
        window = 2
        window_timer = 1
        if dair_loop < 8{
            dair_loop += 1
        }
    }
    if window == 1 and window_timer == 1{
        dair_loop = 0
        set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -10);
        hive_bounce = 0
    }
    if window == 2 and dair_loop >= 8{
        can_jump = true
        can_wall_jump = true
        if has_airdodge == true and shield_pressed{
            state = PS_AIR_DODGE
            window = 1
            window_timer = 1
            vsp = 0
            destroy_hitboxes();
        }
    }
    if down_down{
        fall_through = true;
    }
    can_fast_fall = false;
}

if attack == AT_DTILT{
    if window == 2 and window_timer >= 2 or window == 3{
         can_jump = true;
        // if jump_pressed{
        //     state = PS_JUMPSQUAT
        //     window = 1
        //     window_timer = 0
        //     destroy_hitboxes();
        //     clear_button_buffer(attack)
        // }
    }
}