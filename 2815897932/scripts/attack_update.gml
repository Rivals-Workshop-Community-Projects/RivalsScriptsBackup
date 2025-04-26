// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSTRONG){
    if (window == 1 && window_timer == 1){
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
    }
    if (strong_charge >= 30){
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 13);
    }
    if (window == 1 && strong_charge == 30){
		sound_play(asset_get("sfx_shing"))
    }
    if (window == 2 && window_timer == 1) && strong_charge >= 30{
		attack = AT_FSTRONG_2
    }
}

if (attack == AT_DATTACK){
    if (window == 1 && window_timer == 1){
    set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, -1);
    set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 0);
    }
    if (window == 1 && window_timer == 2){
    set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 6);
    set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);
    }
    if (window == 1 && window_timer == 3){
    set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 0);
    }
}

if (attack == AT_DSPECIAL){
    can_move = false
    if window == 1 && window_timer == 1{
        if magic < 1{
            set_num_hitboxes(AT_DSPECIAL, 0);
            window = 4
        }
        hsp = 0
    }
    if window == 3 && window_timer == 1{
            magic -= 1
            set_num_hitboxes(AT_DSPECIAL, 1);
    }
    if window == 3{
    move_cooldown[AT_DSPECIAL]+= 4
    }
    if window == 4{
    move_cooldown[AT_DSPECIAL]+= 2
    }
}

if (attack == AT_FSPECIAL){
    if window == 1 && window_timer == 1{
        if magic < 1{
            set_num_hitboxes(AT_FSPECIAL, 0);
            window = 4
        }
    }
    if window == 2 && window_timer == 1{
            magic -= 1
            set_num_hitboxes(AT_FSPECIAL, 1);
    }
        if window == 3{
    move_cooldown[AT_FSPECIAL]+= 4
    }
        if window == 4{
    hsp = 0
    move_cooldown[AT_FSPECIAL]+= 2
    }
}

if (attack == AT_NSPECIAL){
    can_move = false
    if has_hit_player && window == 3{
    can_attack = true
    can_special = true
    can_jump = true
    can_strong = true
    can_ustrong = true
    move_cooldown[AT_NSPECIAL] = 120
    }
    if !has_hit_player && window == 3{
    move_cooldown[AT_NSPECIAL] = 60
    }
}

if (attack == AT_BAIR){
    soft_armor = 8
}

if (attack == AT_DSTRONG){
    capped_accel = true
    can_fast_fall = false
    can_wall_jump = true
    if window == 1 && window_timer == 1{
        set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
        set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 11);
        set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 0);
        wowza = false
    }
    
    if window == 2 && window_timer == 1{
    set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
    }

    if window == 4 && window_timer == 12 && free{
    window_timer = 1
    wowza = true
    }

    if window == 4 && !free{
        window_timer = 12
        set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 15);
        destroy_hitboxes()
    }

    if window == 5{
        set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);
        set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 0);
        hsp = 0
        if window_timer <= 5 && wowza == true{
            shake_camera(1, 5)
        }
    }
}

if attack == AT_FSTRONG_2{
        if window == 4 && window_timer <= 3{
            shake_camera(1, 6)
        }
}

if attack == AT_USPECIAL{
    can_fast_fall = false
        if window < 3{
            hsp = 0
            can_move = false
            capped_accel = true
        }
        if window == 3{
            capped_accel = false
        }        
        if window == 4{
            boost_accel = true
            move_cooldown[AT_USPECIAL] = 30
        }
        if window == 5{
            boost_accel = false
        }
}

if attack == AT_NSPECIAL{
    if window == 1 && window_timer == 1{
            set_num_hitboxes(AT_NSPECIAL, 1);
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 0);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 0);
        }
        if window == 1 && has_hit_player{
            set_num_hitboxes(AT_NSPECIAL, 2);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 1);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 1);
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
            facing_dir = spr_dir
        }
}

if (attack == 49) {
    if (window == 1) { 
        set_attack_value(49, AG_NUM_WINDOWS, 4);
        if window_timer == 12{
            sound_play( sound_get("fs_voiceclip"))
        }
    }
    if (window == 2 && has_hit_player) { 
        set_attack_value(49, AG_NUM_WINDOWS, 7);
        window = 5
        window_timer = 1
    }
    if (window >= 4){
            hsp = 0
            vsp = 0
            can_move = false
            can_fast_fall = false
    }
set_num_hitboxes(49, 25);
}

if (attack == AT_TAUNT){
    if window == 1 && window_timer == 1{
            heldtaunt = false
    }
    if window_timer == 60 && taunt_down{
        window = 1
        window_timer = 1
        if heldtaunt == false{
            heldtaunt = true
        }
    }
    if heldtaunt == true{
        can_attack = true
        can_special = true
        can_jump = true
        can_shield = true
        can_strong = true
        can_ustrong = true
    }
}

if (attack == AT_UTILT){
    if has_hit_player{
    can_attack = true
    can_special = true
    can_jump = true
    }
    move_cooldown[AT_UTILT] = 20
}

