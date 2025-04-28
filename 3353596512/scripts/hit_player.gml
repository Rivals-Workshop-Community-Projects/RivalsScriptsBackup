//hitbox init, FOR PROJECTILES SPECIFICALLY

#macro AT_FAIR_2 31;
#macro AT_FAIR_3 37;
#macro AT_UAIR_2 38;
#macro AT_UAIR_3 39;
#macro AT_FSTRONG_3 40;
#macro AT_USTRONG_3 42;
#macro AT_FSPECIAL_FAIL 43;
#macro AT_USPECIAL_FAIL 44;
#macro AT_FSPECIAL2_FAIL 45;

switch (my_hitboxID.attack){
    case AT_JAB:
    if (my_hitboxID.hbox_num == 2){
        sound_play( sound_get("knife_hit" + string(random_func(0, 2, true) + 1)), false, noone, 0.7, 0.9 + random_func(0, 2, true)/25 );
    }
    if (my_hitboxID.hbox_num > 2){
        sound_play( sound_get("knife_hit" + string(random_func(0, 2, true) + 1)), false, noone, 0.4, 1 + random_func(0, 2, true)/25 );
    }
    break;
    case AT_UTILT:
        if (my_hitboxID.hbox_num < 3){
            sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.8, 1);
            hit_player_obj.spr_dir *= -1;
        } else {
            sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.8, 1);
        }
    break;
    case AT_NAIR:
    if (my_hitboxID <= 2){
        sound_play( sound_get("knife_hit1"), false, noone, 0.7, 1 );
    } else {
        sound_play( sound_get("knife_hit2"), false, noone, 0.7, 1 );
    }
    break;
    case AT_UAIR:
    case AT_FAIR:
    case AT_FSTRONG:
        sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1);
    break;
    case AT_UAIR_2:
    case AT_FAIR_2:
    case AT_FSTRONG_2:
        sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1);
    break;
    case AT_UAIR_3:
    case AT_FAIR_3:
        sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, 1, 1);
    break;
    case AT_FSTRONG_3:
        sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 1, 1);
    break;
    case AT_FSPECIAL:
        if (my_hitboxID.hbox_num == 1){
            with (my_hitboxID) sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 0.7, 1.6);
        }
        if (my_hitboxID.hbox_num == 2){
            hit_player_obj.flashbang_visual_timer = 16;
            with (my_hitboxID) sound_play(player_id.ring_hitsound);
        }
    break;
    case AT_USTRONG:
        if (my_hitboxID.hbox_num <= 2){
            sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1);
        } else {
            sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1);
        }
    break;
    case AT_USTRONG_2:
        if (my_hitboxID.hbox_num <= 2){
            sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 1);
        } else {
            sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 1, 1);
        }
    break;
    case AT_USTRONG_3:
        if (my_hitboxID.hbox_num <= 2){
            sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 1, 1);
        } else {
            sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, 1, 1);
        }
    break;
    case AT_DSTRONG:
        if (my_hitboxID.hbox_num >= 3 && instance_exists(ladder_obj)){
            with (ladder_obj) sound_play( sound_get("ladder_hit"), false, noone, 1, 1 );
        }
    break;
    case 2: //this is also dstrong
        if (my_hitboxID.hbox_num >= 1 && instance_exists(ladder_obj)){
            with (ladder_obj) sound_play( sound_get("ladder_hit"), false, noone, 1, 1 );
        }
    break;
    case AT_FSPECIAL_2:
        if (my_hitboxID.hbox_num < 23){
            hit_player_obj.spr_dir *= spr_dir*-1;
            if (my_hitboxID.hbox_num >= 7){
                switch (my_hitboxID.hbox_num){
                    case 9:
                    case 10:
                    case 13:
                    case 14:
                    case 17:
                    case 18:
                    case 21:
                    case 22:
                        hit_player_obj.hurt_img = 0;
                    break;
                    case 7:
                    case 8:
                    case 11:
                    case 12:
                    case 15:
                    case 16:
                    case 19:
                    case 20:
                        hit_player_obj.hurt_img = 1;
                    break;
                }
            }
        }
        if (my_hitboxID.hbox_num > 4){
            hit_player_obj.zapped_visual = true;
            hit_player_obj.zapped_timer = round(hit_player_obj.hitstop_full);
        }
        if (has_rune("L")) && (my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 8) && (shield_pressed){
            window = 6;
            window_timer = 0;
            hit_player_obj.x += 9999*spr_dir;
        }
    break;
    case AT_USPECIAL_2:
        if (my_hitboxID.hbox_num >= 6){
            hit_player_obj.hurt_img = 5;
            hit_player_obj.cruiser_lockout = 45;
        }
    break;
    case AT_DSPECIAL:
        if (my_hitboxID.hbox_num == 2){
            with (my_hitboxID) sound_play(sound_get("jeb_hit"), false, noone, 1, 1);
            //hit_player_obj.hurt_img = 0;
        }
        if (my_hitboxID.hbox_num == 3){
            with (my_hitboxID) sound_play(sound_get("jeb_hit_heavy"), false, noone, 1, 1);
            hit_player_obj.hit_by_jeb = true;
        }
    break;
    case AT_DSPECIAL_2:
        if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
            with (my_hitboxID) sound_play(proj_scrap_id.sfx, false, noone, 0.7, 1);
            if (my_hitboxID.proj_scrap_id.name == "Comedy" || my_hitboxID.proj_scrap_id.name == "Tragedy") && (!hit_player_obj.got_masked){
                my_hitboxID.destroyed_next = true;
                hit_player_obj.got_masked = true;
                hit_player_obj.masked_id = id;
                hit_player_obj.mask_type = my_hitboxID.mask_type;
            }
        }
    break;
}

var overtime_credit = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_OVERTIME_CREDIT);

if (overtime_bonus < 50 && get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_OVERTIME_CREDIT) > 0) && my_hitboxID.player == my_hitboxID.player_id.player && (hit_player_obj != self){
    if (my_hitboxID.attack == AT_FSPECIAL && !my_hitboxID.is_homemade) || (my_hitboxID.attack != AT_FSPECIAL){
        overtime_bonus += overtime_credit;
    }
}

if (overtime_bonus < 50) && (my_hitboxID.attack != AT_DSPECIAL) && (my_hitboxID.attack != AT_DSPECIAL_2 || (my_hitboxID.attack == AT_DSPECIAL_2 && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 5))){
    if (my_hitboxID.player == my_hitboxID.player_id.player && (hit_player_obj != self)){
        overtime_damage += floor(my_hitboxID.damage*(1 + (strong_charge/100)));
    }
}