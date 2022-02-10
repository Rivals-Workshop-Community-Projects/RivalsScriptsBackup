//ai_update - called every frame for this character as a CPU

if (get_training_cpu_action() == CPU_FIGHT && temp_level == 9) {
    
    // Upsmash
    if ((get_player_damage(get_instance_player(ai_target)) >= 80) && (ai_target.x - x >= -5) && (ai_target.x - x <= 5) && (ai_target.y - y >= -5)  && (ai_target.y - y <= 5) && (state == PS_JUMPSQUAT || state == PS_WAVELAND || state_cat == SC_GROUND_NEUTRAL)) {
        set_state(PS_ATTACK_GROUND);
        attack = AT_USTRONG;
    }
    
    if (ai_target.state == PS_DEAD || ai_target.state == PS_RESPAWN) {
        if (!taunt_time) {
            taunt_time = true;
        }
    } else {
        if (!free && multishine_counter == 5 && !has_hit) {
            multishine = false;
        }
        taunt_time = false;
        taunted = false;
        has_hit = false;
        multishine = false;
        multishine_counter = 0;
    }
    
    if (taunt_time && !ai_recovering) {
        if (!taunted && state != SC_GROUND_COMMITTED && state != SC_AIR_COMMITTED) {
            attack = AT_EXTRA_1;
        }
        if (!free && state_cat != SC_GROUND_COMMITTED && state_cat != SC_HITSTUN) {
            set_state(PS_IDLE);
        }
        if (!taunted && state_cat == SC_GROUND_NEUTRAL) {
            set_state(PS_ATTACK_GROUND);
            attack = AT_TAUNT;
            taunted = true;
        }
        if (taunted) {
            joy_pad_idle = true;
            left_pressed = false;
            left_down = false;
            right_pressed = false;
            right_down = false;
            jump_pressed = false;
            jump_down = false;
            shdl = false;
            if (state_cat == SC_GROUND_NEUTRAL) {
                has_hit = true;
                multishine = true;
                set_state(PS_ATTACK_GROUND);
                attack = AT_DSPECIAL;
            }
        }
    }
    
    if (state_cat == SC_AIR_NEUTRAL && multishine) {
        set_state(PS_ATTACK_AIR);
        attack = AT_DSPECIAL;
        multishine_counter++;
    }
    
    if (multishine && !free && state == PS_ATTACK_GROUND) {
        if (has_hit && window == 2) {
            has_hit = false;
            if (!free) {
                set_state(PS_JUMPSQUAT)
            } else if (djumps < max_djumps) {
                set_state(PS_DOUBLE_JUMP);
            }
        } else if (!has_hit && window == 2) {
            if (!free) {
                set_state(PS_JUMPSQUAT)
            } else if (djumps < max_djumps) {
                set_state(PS_DOUBLE_JUMP);
            }
            multishine = false;
            waveshine = true;
        }
    }
    
    if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
        if (attack == AT_DSPECIAL) {
            if (free) {
                if (window == 2) {
                    set_state(PS_DOUBLE_JUMP);
                }
            } else {
                if (window == 2) {
                    // JC Shine
                    set_state(PS_JUMPSQUAT);
                    if (!has_hit) {
                        waveshine = true;
                    } else {
                        multishine = true;
                    }
                }
            }
        }

    }
    
    // Waveshine
    if (waveshine) {
        if (ai_target.x < x) {
            joy_pad_idle = false;
            joy_dir = 180;
        }
        else {
            joy_pad_idle = false;
            joy_dir = 0;
        }
    }
    if (state_cat == SC_AIR_NEUTRAL && waveshine && has_airdodge) {
        set_state(PS_AIR_DODGE);
    }
    if (state == PS_WAVELAND) {
        waveshine = false;
    }
    
    // SHDL
    
    if (shdl && free && state_timer > 0) {
        special_pressed = true;
        right_pressed = false;
        right_down = false;
        left_pressed = false;
        left_down = false;
    } else if (shdl && free) {
        special_pressed = false;
    }
    
    if (attack == AT_NSPECIAL && shdl && !free) {
        special_pressed = false;
        shdl = false;
    }
    
    if (state == PS_JUMPSQUAT && attack == AT_NSPECIAL) {
        shdl = true;
        jump_pressed = false;
        jump_down = false;
    }
    
    if (state == PS_JUMPSQUAT && shdl) {
        jump_pressed = false;
        jump_down = false;
    }
    
    if (state_cat == SC_GROUND_NEUTRAL && ai_target.y < y - 10) {
        if (spr_dir == -1) {
            if (ai_target.x - x < -20) {
                if (random_func(111, 15, true) == 2) {
                    set_state(PS_JUMPSQUAT);
                    shdl = true;
                }
            }
        } else {
            if (x - ai_target.x < -20) {
                if (random_func(111, 15, true) == 2) {
                    set_state(PS_JUMPSQUAT);
                    shdl = true;
                }
            }
        }
    }
    
    if (ai_target.y - y > -100) {
        jump_pressed = false;
        if ((state_cat == SC_AIR_NEUTRAL || (((x < get_stage_data(SD_X_POS) && spr_dir == 1) || (x > room_width - get_stage_data(SD_X_POS) && spr_dir == -1)) && state_cat == SC_GROUND_NEUTRAL)) && ai_target.y - y > -10 && ai_target.y - y < 10 && ai_target.x - x > -10 && ai_target.x - x < 10) {
            if (free) {
                set_state(PS_ATTACK_AIR);
            } else {
                set_state(PS_ATTACK_GROUND);
            }
            attack = AT_DSPECIAL;
        }
        if (ai_target.x < get_stage_data(SD_X_POS) && ai_target.x < x) {
            shdl = false;
            left_down = true;
            right_down = false;
        } else if (ai_target.x > room_width - get_stage_data(SD_X_POS) && ai_target.x > x) {
            shdl = false;
            right_down = true;
            left_down = false;
        }
    }
    
    if ((x < get_stage_data(SD_X_POS)) || (x > room_width - get_stage_data(SD_X_POS))) {
        shdl = false;
    }
}

if (ai_recovering) {
    // Angling USPECIAL
    if (temp_level >= 3 && (get_stage_data(SD_Y_POS) - y < -30) && ((state == PS_ATTACK_AIR && (attack == AT_USPECIAL) && window < 3) && (((x - get_stage_data(SD_X_POS) > -30) && x < get_stage_data(SD_X_POS) && spr_dir == 1) || ((x - (room_width - get_stage_data(SD_X_POS)) < 30) && x > room_width - get_stage_data(SD_X_POS) && spr_dir == -1)))) {
        if (window < 2) {
            fiyaa_angle = 90;
        }
        joy_pad_idle = false;
        joy_dir = 90;
    }
    // Shortening
    if (temp_level == 9 && (attack == AT_FSPECIAL && state == PS_ATTACK_AIR) && (((x - get_stage_data(SD_X_POS) > -100) && x < get_stage_data(SD_X_POS) && spr_dir == 1) || ((x - (room_width - get_stage_data(SD_X_POS)) < 100) && x > room_width - get_stage_data(SD_X_POS) && spr_dir == -1))) {
        special_pressed = true;
    }
    // Using FSPECIAL
    if (temp_level >= 5 && ((x < get_stage_data(SD_X_POS) && spr_dir == 1) || (x > room_width - get_stage_data(SD_X_POS) && spr_dir == -1)) && free) {
        if (move_cooldown[AT_FSPECIAL] == 0 && state_cat == SC_AIR_NEUTRAL) {
            attack = AT_FSPECIAL;
            set_state(PS_ATTACK_AIR);
        }
    }
}