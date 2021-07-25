//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    
    if (window == 1){
        clear_button_buffer( PC_JUMP_PRESSED );
    }
    
    if (window == 2){
        menu_open = true;
        if (window_timer == 99){
            window_timer = 1;
        }
    }
    if (window == 3){
        menu_open = false;
    }
    
    //selecting things
    if (menu_open){
        
        can_jump = true;
        
        //happy
        if (up_pressed || up_pressed){
            
            if (happy_cooldown <= 0){
                if (emotion != 1){
                    
                    switch (emotion){
                        
                        case 1:
                            happy_cooldown = emotion_cooldown;
                        break;
                                
                        case 2:
                            sad_cooldown = emotion_cooldown;
                        break;
                                
                        case 3:
                            angry_cooldown = emotion_cooldown;
                        break;
                                
                    }
                    
                    handle_cooldown = true;
                    emotion = 1;
                    happy_timer = emotion_default_timer;
                }
                else{
                    happy_cooldown = emotion_cooldown;
                    emotion = 0;
                    sound_play(sound_get("miss"));
                }
                
                should_end_window = true;
                clear_button_buffer( PC_UP_STICK_PRESSED );
            }
            
            else{
                sound_stop(asset_get("sfx_shop_invalid"));
                sound_play(asset_get("sfx_shop_invalid"));
            }
            
        }

        
        //sad
        if (left_pressed || left_stick_pressed){
            
            if (sad_cooldown <= 0){
                if (emotion != 2){
                    
                    switch (emotion){
                        
                        case 1:
                            happy_cooldown = emotion_cooldown;
                        break;
                                
                        case 2:
                            sad_cooldown = emotion_cooldown;
                        break;
                                
                        case 3:
                            angry_cooldown = emotion_cooldown;
                        break;
                                
                    }
                    
                    emotion = 2;
                    sad_timer = emotion_default_timer;
                }
                else{
                    sad_cooldown = emotion_cooldown;
                    emotion = 0;
                    sound_play(sound_get("miss"));
                }
                    
                should_end_window = true;
                clear_button_buffer( PC_LEFT_STICK_PRESSED );
            }
            
            else{
                sound_stop(asset_get("sfx_shop_invalid"));
                sound_play(asset_get("sfx_shop_invalid"));
            }
            
        }

        
        //angry
        if (right_pressed || right_stick_pressed){
            
            if (angry_cooldown <= 0){
                if (emotion != 3){
                    
                    switch (emotion){
                        
                        case 1:
                            happy_cooldown = emotion_cooldown;
                        break;
                                
                        case 2:
                            sad_cooldown = emotion_cooldown;
                        break;
                                
                        case 3:
                            angry_cooldown = emotion_cooldown;
                        break;
                                
                    }
                    
                    emotion = 3;
                    angry_timer = emotion_default_timer;
                }
                else{
                    angry_cooldown = emotion_cooldown;
                    emotion = 0;
                    sound_play(sound_get("miss"));
                }
                
                should_end_window = true;
                clear_button_buffer( PC_RIGHT_STICK_PRESSED );
            }
            else{
                sound_stop(asset_get("sfx_shop_invalid"));
                sound_play(asset_get("sfx_shop_invalid"));
            }
            
        }
        
        
        /*
        //neutral
        if (shield_pressed || down_pressed || down_stick_pressed){
            emotion = 0;    
            should_end_window = true;
            
            sound_play(sound_get("miss"));
            
            clear_button_buffer( PC_SHIELD_PRESSED );
            clear_button_buffer( PC_DOWN_HARD_PRESSED );
            clear_button_buffer( PC_DOWN_STICK_PRESSED );
            
        }
        */
        
        //neutral
        if (shield_pressed){
            
            switch (emotion){
                        
                case 1:
                    happy_cooldown = emotion_cooldown;
                break;
                        
                case 2:
                    sad_cooldown = emotion_cooldown;
                break;
                        
                case 3:
                    angry_cooldown = emotion_cooldown;
                break;
                        
            }
            
            emotion = 0;    
            should_end_window = true;
            
            sound_play(sound_get("miss"));
            
            clear_button_buffer( PC_SHIELD_PRESSED );
            

        }
        
    }
    
    if (should_end_window){
        
        stats_changed = false;
        
        spawn_hit_fx( x, y - 12, 304 );
        sound_play(sound_get("trickcut"));
        
        if (window == 2){
            window = 3;
            window_timer = 1;
            should_end_window = false;
        }
    }
    
}



if (attack == AT_FSPECIAL){
    if (window == 2){
        move_cooldown[AT_FSPECIAL] = 50;
    }
}


var uspec_height = 14;
var slash_hsp = 7;

if (has_rune("F")){
    var uspec_height = 18;
	var slash_hsp = 8;
}

if (attack == AT_USPECIAL){
    
    if (window == 1){
        
        can_fast_fall = false;

        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);

        if (vsp > 2){
            vsp = 2;
        }
        if (vsp < -4){
            vsp = -4;
        }
    }
    
    if (window == 2){
        
        can_fast_fall = false;
        can_wall_jump = true;
        
        if (window_timer == 1 && !hitpause){
            spawn_hit_fx( x, y - 12, 129 );
            vsp = -uspec_height;
        }
        
    }
    
    //choose direction
    if (window == 3){
        
        can_fast_fall = true;
        can_wall_jump = true;
        
        if (special_down){
            if (right_down){
                set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
                spr_dir = 1;
                window = 4;
                window_timer = 1;
            }
            if (left_down){
                set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
                spr_dir = -1;
                window = 4;
                window_timer = 1;
            }
        }
    }
    
    if (window == 4){
        can_move = false;
        can_fast_fall = false;
        can_wall_jump = true;
        hsp = 0;
        vsp = 0;
    }
    
    //dash thing
    if (window == 5){
        
        can_move = false;
        can_fast_fall = false;
        can_wall_jump = true;
        
        if (window_timer == 1 && !hitpause){
            spawn_hit_fx( x, y - 12, 129 );
            hsp = slash_hsp*spr_dir;
            vsp = -(uspec_height*.35);
        }
    }
    
    if (window == 6){
        can_move = true;
        can_fast_fall = true;
        can_wall_jump = true;
    }
    
}


var distance_travel = 100;

if (attack == AT_DSPECIAL){
    
    if (window == 1){
        set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
        set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 7);
        can_fast_fall = false;
        vsp_thing = -4;
    }
    
    if (window == 2){
        vsp = 0;
        can_fast_fall = false;
    }
    
    if (window == 3){
        can_fast_fall = false;
        can_wall_jump = true;
        if (window_timer == 1){
            spawn_hit_fx( x, y - 12, 13 );
            x -= 25*spr_dir;
            x += distance_travel*spr_dir;
            spr_dir *= -1;
            spawn_hit_fx( x, y - 12, 13 );
        }
    }
    
    if (window == 4){
        can_fast_fall = false;
        can_wall_jump = true;
        vsp = 0;
    }
    
    if (window == 5){
        can_wall_jump = true;
        vsp = 0;
    }
    
    if (window == 6){
        can_fast_fall = true;
        can_wall_jump = true;
        if (window_timer == 7){
            if (vsp_thing != 0){
                vsp = vsp_thing;
            }
        }
    }
    
}

//other stuff

if (attack == AT_UTILT){
    if (window >= 2){
        hud_offset = 55;
    }
}

if (attack == AT_UAIR){
    if (window == 2 || window == 3){
        hud_offset = 60;
    }
}

//no parry stun on jab
if (attack == AT_JAB){
    if (was_parried){
        was_parried = false;
    }
}

//runes
if (has_rune("E")){
    if (attack == AT_DSTRONG){
        
        set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
        set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 9);
        set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 9);
        set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 9);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_HITPAUSE, 2);
        set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE, 2);
        set_hitbox_value(AT_DSTRONG, 4, HG_EXTRA_HITPAUSE, 2);
        
        set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 10);
        set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 10);
        set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 10);
        
        set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

        set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
        set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
        
        if (window == 3 && !hitpause && !hitstop){
            vsp = -5;
        }
        
    }
}

if (has_rune("L")){
    if (attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG){
        if (window == 1){
            if (window_timer == 1){
                
                if (emotion == 1){ //boost crit chance like how luck is boosted ingame while happy
                    var crit_chance = 2;
                }
                else{
                    var crit_chance = 3;
                }
                
                crit_maybe = random_func(0,crit_chance,true);
                
                if (crit_maybe == 1 && !hitpause){
                    set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
                    set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.25);
                    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 11);
                    set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
                    set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
                    set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
                    set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("crit"));
                    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("crit"));
                    set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("crit"));
                    set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
                    set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 21);
                    set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
                    spawn_hit_fx( x, y - 12, 130 );
                }
                else{
                    reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK);
                    reset_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING);
                    reset_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK);
                    reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING);
                    reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
                    reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
                    reset_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX);
                    reset_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX);
                    reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
                    reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
                    reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
                    reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
                }
                
            }
        }
    }
}

if (has_rune("I")){
    if (attack == AT_USPECIAL){
        if (window == 1){
            super_armor = true;
        }
        if (window == 2){
            super_armor = false;
        }
        if (window == 4){
            super_armor = true;
        }
        if (window == 5){
            super_armor = false;
        }
    }
}