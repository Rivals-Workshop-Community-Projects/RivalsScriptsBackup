//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 20
    if(window == 1){
        if(window_timer < 6 && window_timer > 1){
            if(spr_dir == 1 && left_pressed || spr_dir == 1 && left_down){
                spr_dir *= -1
                hsp *= -1
            }else if(spr_dir == -1 && right_pressed || spr_dir == -1 && right_down){
                spr_dir *= -1
                hsp *= -1
            }
        }
        if(window_timer <= 1){
            laser_choice = 0
            laser_angle = 0
        }
        if(window_timer > 2){
            if(up_down || up_pressed){
                laser_choice -= 1
                laser_angle += 4
            }else if(down_down || down_pressed){
                laser_choice += 1
                laser_angle -= 4
            }
        }
    }
    if(window == 2 && window_timer == 1){
        if(laser_charging >= 160){
            laser = create_hitbox(AT_NSPECIAL, 1, x + 35*spr_dir, y - (38 + (laser_angle / 2)))
            laser.vsp = laser_choice
            laser_saved_vsp = laser.vsp
            laser.hsp = (20 - abs(laser.vsp))*spr_dir
            laser.proj_angle = laser_angle*spr_dir
            laser.through_platforms = 200
            laser.gyrobounce = false
            laser_bounce = false
            laser_charging = 0
        }else{
            var laser_bebe = create_hitbox(AT_NSPECIAL, 2, x + 55*spr_dir, y - (38 + (laser_angle / 2)))
            laser_bebe.proj_angle = laser_angle*spr_dir
            laser_charging = 0
        }
    }
}
if (attack == AT_FSPECIAL){
    can_fast_fall = false
    if(window == 1){
        lariat_count = 0
    }
    if(window == 2){
        if(!special_down && lariat_count > 0){
            window = 3
            window_timer = 0
            if(free){
                vsp = -3
                hsp = 4*spr_dir
            }
        }
        if(window_timer == 16 && lariat_count < 4){
            window_timer = 1
            lariat_count += 1
        }
        if(left_down && lariat_count > 0){
            hsp = -2
        }else if(right_down && lariat_count > 0){
            hsp = 2
        }
    }
    if(window < 3){
        if(shield_pressed){
            set_state(PS_PRATFALL)
            prat_land_time = 20
        }
    }
}
if (attack == AT_USPECIAL){
    if(state_timer <= 1){
        vsp = -3
    }
    can_fast_fall = false
    if(window == 1){
        if(window_timer == 2){
            saved_hsp = hsp
        }else if(window_timer > 3){
            if(saved_hsp < 6.2 && saved_hsp > -6.2){
                hsp = saved_hsp / 1.5
            }else{
                if(saved_hsp > 0){
                    hsp = 6.5
                }else{
                    hsp = -6.5
                }
            }
        }
        if(gas > 0){
            if(vsp > -5){
                vsp -= 1
                gas -= 0.1
            }else{
                vsp = -5
                gas -= 0.1
            }
        }
        if(window_timer == 19){
            window = 3
            window_timer = 0
        }
    }
    if(window > 2){
        can_jump = true
        can_attack = true
        can_wall_jump = true
        can_shield = true
        if(!free){
            set_state(PS_LANDING_LAG)
            sound_stop(gas_sfx)
        }
    }
    if(window == 2 || window == 1){
        if(window_timer == 1){
        gas_sfx = sound_play(asset_get("sfx_ell_missile_loop"), true)
        }
    }else if(window != 2 && window != 3){
        sound_stop(asset_get("sfx_ell_missile_loop"))
    }
    if(window == 3){
        if(gas < 0){
            window = 6
            window_timer = 0
        }
        if(special_down){
            gas -= 0.075
            if(vsp > -5){
                vsp -= 0.8
            }else{
                vsp = -5
            }
        }else{
            window = 4
            window_timer = 0
        }
    }
    if(window == 5){
        if(special_pressed || special_down){
            window = 2
            window_timer = 0
        }
    }
}

if(attack == AT_DSPECIAL){
    if(gyro_charge < 8){
        gyro_charge = 8
    }
    can_fast_fall = false
    if(window == 1){
        if(window_timer < 6 && window_timer > 1){
            if(spr_dir == 1 && left_pressed || spr_dir == 1 && left_down){
                spr_dir *= -1
                hsp *= -1
            }else if(spr_dir == -1 && right_pressed || spr_dir == -1 && right_down){
                spr_dir *= -1
                hsp *= -1
            }
        }else if(window_timer == 6){
            if(gyro_charge >= 16){
                window = 4
                window_timer = 0
            }
        }
    }
    if(window == 2){
        can_jump = true
        gyro_charge += 0.1
        if(!special_down){
            window = 4
            window_timer = 0
        }else if(gyro_charge >= 16){
            window = 3
            window_timer = 0
        }else if(shield_pressed){
            sound_stop(asset_get("sfx_spin_longer"))
            window = 3
            window_timer = 0
            if(free){
                sound_play(asset_get("sfx_zetter_shine"))
                gyro = instance_create(x, y - 40, "obj_article1")
                gyro.hsp = 0
                gyro.gyro_spin_rate = 4
                gyro_charge = 8
                gyro.thrown = true
            }
        }
    }
    if(window == 3 && window_timer == 8){
        set_state(PS_IDLE)
    }
    if(window == 4 && window_timer == 1){
        gyro = instance_create(x, y - 40, "obj_article1")
        gyro.hsp = gyro_charge * spr_dir
        gyro.gyro_spin_rate = gyro_charge
        gyro_charge = 8
        gyro.thrown = false
    }
}

if(attack == AT_FTHROW){
    if(instance_exists(gyro)){
        if(window_timer == 5){
            gyro.state = 0
            gyro.state_timer = 0
            gyro.hsp = 11*spr_dir
            gyro.vsp = -3.5
            gyro.gyro_spin_rate = 4
            gyro.thrown = true
        }
    }
}

if(attack == AT_DTHROW){
    if(instance_exists(gyro)){
        if(window_timer == 5){
            gyro.state = 0
            gyro.state_timer = 0
            gyro.x = x
            gyro.hsp = 0
            gyro.vsp = 8
            gyro.gyro_spin_rate = 4
            gyro.thrown = true
        }
    }
}

if(attack == AT_UTHROW){
    if(instance_exists(gyro)){
        if(window_timer == 5){
            gyro.state = 0
            gyro.state_timer = 0
            gyro.x = x
            gyro.hsp = 0
            gyro.vsp = -17
            gyro.gyro_spin_rate = 4
            gyro.thrown = true
        }
    }
}

if(attack == AT_DATTACK){
    if(instance_exists(gyro)){
        if(gyro.gyro_pickup){
            if(window == 2){
                gyro.state = 0
                gyro.state_timer = 0
                gyro.x = x
                gyro.hsp = 13*spr_dir
                gyro.vsp = -3
                gyro.gyro_spin_rate = 4
                gyro.thrown = true
            }
        }
    }
}

if(attack == AT_USTRONG || attack == AT_UAIR || attack == AT_UTILT){
    if(window > 1){
        char_height = lerp(char_height, 72, 0.5);
    }
}

if(attack == AT_TAUNT){
    if(state_timer > 100 && !taunt_down && window == 2){
        window = 3
        window_timer = 0
    }
}