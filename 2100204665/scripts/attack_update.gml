//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack){
    case AT_JAB:
        switch (window){
            case 3:
            move_cooldown[AT_JAB] = 4;
            can_attack = true;
            if (window_timer >= 5 && !attack_pressed){
                window = 7;
                window_timer = 0;
            }
            break;
            case 4:
            if (window_timer == 3){
                sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.6, 1);
            }
            break;
            case 7:
            move_cooldown[AT_JAB] = 5;
            can_attack = true;
            if (attack_pressed){
                window = 4;
                window_timer = 0;
            }
            break;
        }
    break;
    case AT_DATTACK:
        if (window == 1){
            if (window_timer == 5){
                sound_play(asset_get("sfx_swipe_medium2"));
            }
        }
    break;
    case AT_DSTRONG:
        if (window == 2){
            if (window_timer == 5){
                sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.8, 1.2);
                sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.8, 0.8);
            }
            if (window_timer == 4){
                sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.8, 1);
            }
        }
    break;
    case AT_FSTRONG:
        if (window == 2){
            if (window_timer == 5){
                sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.5, 0.7);
            }
        }
    break;
    case AT_USTRONG:
        if (window == 2){
            if (window_timer == 7){
                sound_play(asset_get("sfx_kragg_spike"), false, noone, 0.5, 0.6);
            }
        }
    break;
    case AT_NAIR:
        if (window >= 3 && has_hit){
            can_jump = true;
            can_attack = true;
            move_cooldown[AT_NAIR] = 1;
        }
    break;
    case AT_FAIR:
    if (window == 1){
        if (window_timer == 1){
            sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.6, 0.8);
        }
        if (window_timer == 4){
            sound_play(asset_get("sfx_swipe_weak2"), false, noone, 0.6, 0.7);
        }
        if (window_timer == 8){
            sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.6, 0.8);
        }
        if (window_timer == 12){
            sound_play(asset_get("sfx_swipe_medium1"), false, noone, 0.6, 0.8);
        }
    }
    break;
    case AT_DAIR:
        if (window == 2){
        if (window_timer == 5){
            sound_play(asset_get("sfx_swipe_weak2"), false, noone, 0.6, 0.8);
        }
        if (window_timer == 13){
            sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.6, 0.8);
        }
            
        }
    break;
    case AT_NSPECIAL:
        if (window == 1){
            if radius < 70{
                radius = lerp(radius, 70, 0.5);
            }
        }
        if (window == 3){
            if radius > 0{
                radius = lerp(radius, 0, 0.2);
            }
        }
    break;
    case AT_DSPECIAL:
        switch (window){
            case 1:
            if (instance_exists(bone_trap)){
                if (bone_trap.state != 3 && !bone_trap.busy){
                    bone_trap.state = 3;
                    bone_trap.state_timer = 0;
                }
            }
            break;
            case 2:
            if (window_timer == 8){
                if (!instance_exists(bone_trap)){
                bone_trap = instance_create(x, y - 32, "obj_article1" );
                }
            }
            break;
        }
    break;
    case AT_DTILT:
    if (window == 1 && window_timer == 7){
        sound_play(sound_get("sfx_alert"), false, noone, 0.2, 1);
        sound_play(sound_get("sfx_dogrise"), false, noone, 0.6, 1);
    }
    if (window == 3 && window_timer > 2 && has_hit){
        move_cooldown[AT_DTILT] = 2;
        can_attack = true;
    }
    break;
    case AT_USPECIAL:
    if (window == 1){
        if (can_bone){
        var top = (room_height - get_stage_data(SD_Y_POS));
        if (y < top){
            vsp = lengthdir_y(16, top);
        }
        if (y < top - 180){
            vsp = lengthdir_y(100, top);
        }
        if (y >= top && y < top + 16){
            vsp = 0;
        }
        } else {
            if (window_timer == 1){
                sound_play(asset_get("sfx_forsburn_reappear"));
            }
        }
        if (instance_exists(bone_spire)){
            bone_spire.state = 3;
            bone_spire.state_timer = 0;
            bone_spire.hitpause_time = 0;
        }
        if (!can_bone && window_timer == 11){
            set_state(PS_PRATFALL);
        }
    }
    if (window == 2){
        if (instance_exists(bone_spire) && bone_spire.state == 3){
            free = true;
            state = PS_PRATFALL;
        }
        can_bone = false;
        if (window_timer < 4){
            hsp*= 0.5;
        }
        if (!instance_exists(bone_spire)){
            sound_play(asset_get("sfx_kragg_rock_pillar"), false, noone, 0.6, 1);
            sound_play(sound_get("rise"), false, noone, 0.6, 1);
            var bottom = get_stage_data( SD_BOTTOM_BLASTZONE );
            bone_spire = instance_create(x, y + 800, "obj_article_solid");
        }
        x = bone_spire.x;
    }
    break;
    case AT_TAUNT:
    if (window == 1){
        if (window_timer == 12){
            sound_play(asset_get("sfx_blow_medium1"));
        }
        if (window_timer == 1){
            msg_num = round(random_func(0, 4, false));
        }
        j = 0;
        chars_drawn = 0;
    }
    if (window == 2){
        j++;
        if chars_drawn < msg_length
        {
        chars_drawn+= 0.7;
        if (chars_drawn < msg_length - 4){
        sound_play(sound_get("sfx_txt"));
        }
        }
        if (!taunt_down && j >= msg_length + 30){
            window = 3;
            window_timer = 0;
        }
    }
    break;
}
