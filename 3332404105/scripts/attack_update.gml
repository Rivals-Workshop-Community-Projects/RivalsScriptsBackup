//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Down Special

if (attack == AT_DSPECIAL){
    if (attacking_now == 1){
        window_timer += (vial_imagination / (vial_limit / 2) - 1)
        if (generic_timer == 0){
            sound_play(sfx_zilly1, true, false, 1, 1);
            generic_timer = random_func(2, 14, true) + 1;
            if (generic_timer >= last_pull){
                generic_timer += 1;
            }
        }
    }
    if (inv_slot[inv_selection] == 0 && attacking_now == 2){
        inv_slot[inv_selection] = generic_timer;
        last_pull = generic_timer;
        inv_count[inv_selection] = 1;
        sound_play(sfx_twinkle);
        move_cooldown[AT_DSPECIAL] = 45 * (1 + free);
    }
    if (attacking_now == 2){
        if (generic_timer2 == 0){
            sound_stop(sfx_zilly1)
            sound_play(sfx_chime1);
            generic_timer2 = 1
        }
        
    }
}

//fspecial & uspecial

if (attack == AT_FSPECIAL){
    if (attacking_now == 2 && window_timer == 1){ 
        if (inv_slot[0] == 0 && inv_slot[1] == 0 && inv_slot[2] == 0 && inv_slot[3] == 0 && inv_slot[4] == 0){
            //candy corn backup ver
            lobbed_item = create_hitbox(AT_FSPECIAL, 4, x + 32 * sign(spr_dir), y - 32);
            lobbed_item.hsp += 8;
            lobbed_item.vsp -= 4;
            lobbed_item.spr_dir = spr_dir;
            has_walljump = true;
            sound_play(sfx_pew);
            hat_store -= 1
        } else
            if (inv_slot[inv_selection] != 0){
                //main ver
                if (inv_slot[inv_selection] == 4){
                vial_pulchritude += 25;
                }
                lobbed_item = create_hitbox(AT_FSPECIAL, inv_slot[inv_selection], x + 32 * sign(spr_dir), y - 32);
                lobbed_item.hsp += 10 * sign(spr_dir) * ((vial_vim / vial_limit) * 2);
                lobbed_item.vsp -= 5 / ((vial_vim / vial_limit) * 2);
                lobbed_item.spr_dir = spr_dir;
                sound_play(sfx_pew);
                inv_count[inv_selection] -= 1;
            } else{
                attack = AT_NSPECIAL;
            }
    }
}

if (attack == AT_USPECIAL){
    if (attacking_now == 2 && window_timer == 1){  
        if (inv_slot[inv_selection] != 0){
            //main ver
            if (inv_slot[inv_selection] == 4){
                vial_pulchritude += 25;
            }
            sound_play(sfx_pew);
            lobbed_item = create_hitbox(AT_FSPECIAL, inv_slot[inv_selection], x, y);
            lobbed_item.length *= 0.4
            lobbed_item.vsp += 14 * (vial_vim / vial_limit) * 2;
            lobbed_item.hsp = 1 / (vial_vim / vial_limit) * 2 * spr_dir;
            lobbed_item.spr_dir = spr_dir;
            vsp = -10 * (vial_vim / vial_limit) * 2;
            inv_count[inv_selection] -= 1;
        } else if (hat_store != 0){
            //candy corn backup ver
            sound_play(sfx_pew);
            lobbed_item = create_hitbox(AT_FSPECIAL, 4, x, y);
            lobbed_item.vsp += 13;
            lobbed_item.hsp = 1;
            lobbed_item.spr_dir = spr_dir;
            vsp = -10;
            hat_store -= 1;
            has_walljump = true;
        } else{
            vsp = -5 * (vial_vim / vial_limit) * 2;
        }
    }
}

//utilt

if (attack == AT_UTILT && attacking_now == 3 && free == false){
    window = 4;
}

//key/gun switching

if (attack == AT_FTILT || attack == AT_FTHROW || attack == AT_FAIR || attack == AT_FSTRONG_2 || attack == AT_BAIR || attack == AT_DTHROW){
    if (window_timer == 1 && attacking_now == 1 && weapon_locked == 0){ 
        object_duality *= -1;
    }
    if (attacking_now == 3 && window_timer == 1){ 
        if (ammo > 0){
            ammo -= 1
        }
    }
    if (attacking_now == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) - 1){ 
        if (ammo == 0){
            window = 4;
            window_timer = 0;
            if (attack_down != 0 && generic_timer == 0){
                sound_play(asset_get("mfx_tut_fail"));
                generic_timer = 1
            }
        } else
            if (object_duality == sign(-1 + weapon_locked * 2)){
                sound_play(sfx_lock);
            } else{
                sound_play(sfx_gunshot1);
            }
    }
}

if (attacking_now == 3 && has_hit == true){
    if (attack == AT_FTILT || attack == AT_FAIR || attack == AT_BAIR){
        can_move = true;
        move_cooldown[AT_FTILT] = 4;
        move_cooldown[AT_FAIR] = 4;
        move_cooldown[AT_BAIR] = 4;
    }
}

//dattack

if (attack == AT_DATTACK){
    if (has_hit == true && generic_timer == 0 && hitpause == false){
        generic_timer = 1;
        window = 4;
        window_timer = 0;
        hsp = -7 * spr_dir;
        vsp = -2;
    }
}


//dair

if (attack == AT_DAIR && attacking_now == 3){
    if (generic_timer < 0){
        window = 1;
        window_timer = 8;
        generic_timer += 1;
    }
}

//strong

if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
    if (attacking_now == 2 && window_timer == 1){ 
        
        strongallres[1] = allresource[1];
        strongallres[2] = allresource[2];
        strongallres[3] = allresource[3];
        strongallres[4] = allresource[4];

        allresource[1] = 0;
        allresource[2] = 0;
        allresource[3] = 0;
        allresource[4] = 0;
        
        strong_charge += strongallres[3] * 5;
    }
    
    if (attack == AT_FSTRONG){
        var shot_count = 1 + strongallres[1];
    }
    if (attack == AT_USTRONG){
        var shot_count = 2 + strongallres[1];
    }
    if (attack == AT_DSTRONG){
        var shot_count = 3 + strongallres[1];
        if (attacking_now == 2 && window_timer == 1){ 
            sound_play(sfx_bom)
        }
    }
    //droplet spin
    
    if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
        if (attacking_now == 1 && state_timer > 1){
            if (allvisresource[1] > 0){
                generic_effect = spawn_hit_fx(x * spr_dir, y - 32, vfx_allvis1);
                generic_effect.draw_angle = 0 - generic_timer * 30;
                generic_timer += 1;
                allvisresource[1] -= 1;
            } else if (allvisresource[2] > 0){
                generic_effect = spawn_hit_fx(x * spr_dir, y - 32, vfx_allvis2);
                generic_effect.draw_angle = 0 - generic_timer * 30;
                generic_timer += 1;
                allvisresource[2] -= 1;
            } else if (allvisresource[3] > 0){
                generic_effect = spawn_hit_fx(x * spr_dir, y - 32, vfx_allvis3);
                generic_effect.draw_angle = 0 - generic_timer * 30;
                generic_timer += 1;
                allvisresource[3] -= 1;
            } else if (allvisresource[4] > 0){
                generic_effect = spawn_hit_fx(x * spr_dir, y - 32, vfx_allvis3);
                generic_effect.draw_angle = 0 - generic_timer * 30;
                generic_timer += 1;
                allvisresource[4] -= 1;
            }
        }
    }
    
    hsp = clamp(hsp + (right_down - left_down), strongallres[2] * -1, strongallres[2]);
    
    if (attacking_now == 2 || attacking_now == 5){
        window_timer += strongallres[3];
    }
    
    if (strongallres[4] > 0){
        soft_armour = strongallres[4] * 3;
    }
    if (attacking_now == 3 && window_timer >= get_window_value(attack, 3, AG_WINDOW_LENGTH) && generic_timer2 < shot_count){
        window_timer = 0
        generic_timer2 += 1
    }
    if (attacking_now == 3 && window_timer == get_hitbox_value(attack, 1, HG_WINDOW_CREATION_FRAME) - 1 || attacking_now == 3 && window_timer == get_hitbox_value(attack, 2, HG_WINDOW_CREATION_FRAME) - 1){ 
        sound_play(sfx_gunshot2, false, false, 1, 0.75 + (0.5 + random_func(1, 1, false)) / 2);
    }
    if (attacking_now == 3){
        draw_y = random_func(2, 2, true) - 1
        draw_x = random_func(3, 2, true) - 1
    }
    if (attacking_now == 4 && window_timer == get_hitbox_value(attack, 3, HG_WINDOW_CREATION_FRAME) - 1){
        sound_play(sfx_gunshot2, false, false, 1.5, 0.9);
    }
    if (attacking_now == 2 || attacking_now == 5){
        window_timer += strongallres[1] / 4.5;
    }
}

//dspecial 2

if (attack == AT_DSPECIAL_2){
    if (attacking_now == 1 && window_timer == 1){
        sound_play(sfx_item_get, false, false, 0.75, 1.25)
    }
    if (attacking_now == 2){
        user_event(0);
    }
}

//taunt
if (attack == AT_TAUNT){
    if (attacking_now == 1){
        if (allegiance != 5 && allegiance != 0){
            allegiance = 0;
        }
    }
    if (attacking_now == 2){
        if (left_pressed){
            if (allegiance != 5){
                allegiance = 1;
            }
            window = 3;
            window_timer = 0;
            sound_play(sfx_all_weasel)
            allresometer[1] += 500;
            move_cooldown[AT_TAUNT] = 300;
        }
        if (down_pressed){
            if (allegiance != 5){
                allegiance = 2;
            }
            window = 3;
            window_timer = 0;
            sound_play(sfx_all_clown)
            allresometer[2] += 500
            move_cooldown[AT_TAUNT] = 300;
        }
        if (right_pressed){
            if (allegiance != 5){
                allegiance = 3;
            }
            window = 3;
            window_timer = 0;
            sound_play(sfx_all_elf)
            allresometer[3] += 500
            move_cooldown[AT_TAUNT] = 300;
        }
        if (up_pressed){
            if (allegiance != 5){
                allegiance = 4;
            }
            window = 3;
            window_timer = 0;
            sound_play(sfx_all_hog)
            allresometer[4] += 500
            move_cooldown[AT_TAUNT] = 300;
        }
        if (taunt_pressed){
            if (allegiance != 5){
                allegiance = 0;
            }
            window = 3;
            window_timer = 0;
            sound_play(sfx_bump)
            
        }
    }
}

//cheating taunt

if (attack == AT_TAUNT_2){
    if (attacking_now == 2){
        if (left_pressed != 0){
            if (inv_slot[inv_selection] > 0){
                inv_slot[inv_selection] -= 1;
            }
            clear_button_buffer(left_pressed)
        }
        if (right_pressed != 0){
            if (inv_slot[inv_selection] < 18){
                inv_slot[inv_selection] += 1;
            }
            if (inv_count[inv_selection] == 0){
                inv_count[inv_selection] = 1
            }
            clear_button_buffer(right_pressed)
        }
        if (taunt_pressed){
            window = 3
            window_timer = 0
            clear_button_buffer(taunt_pressed)
        }
    }
}

//update stuff
//fast falling prevention

if (attack == AT_TAUNT || attack == AT_DSPECIAL){
    can_fast_fall = false;
}