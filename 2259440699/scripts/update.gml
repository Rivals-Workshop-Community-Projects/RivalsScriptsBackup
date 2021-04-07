if (state == PS_DASH_TURN && state_timer == 0){
    sound_stop(sound_get("turn"));
    sound_play(sound_get("turn"));
}

if (katamari_size > katamari_size_max){
    katamari_size = katamari_size_max;
}

if (katamari_size < 1){
    katamari_size = 1;
}


if ((katamari_size_lv1 <= katamari_size) && (katamari_size < katamari_size_lv2)){ //level 1
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 5);
    set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
    set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 4);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
}

else if ((katamari_size_lv2 <= katamari_size) && (katamari_size < katamari_size_lv3)){ //level 2
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
    set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .85);
    set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 6);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
}

else if ((katamari_size_lv3 <= katamari_size) && (katamari_size < katamari_size_lv4)){ //level 3
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 9);
    set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .9);
    set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 8);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
}

else if ((katamari_size_lv4 <= katamari_size) && (katamari_size < katamari_size_max)){ //level 4
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 12);
    set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 10);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
}

else if (katamari_size == katamari_size_max){ //level 5
    set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 15);
    set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
    set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 12);
    set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
}




//runes
if (has_rune("B")){
    set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 15);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 0);
}

if (has_rune("D")){
    set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
    set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, -10);
}

if (has_rune("E")){
    max_djumps = 3;
    knockback_adj = .9;
}

if (has_rune("G")){
    katamari_size = katamari_size_max;
}

if (has_rune("H")){
    set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 22);
    set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 0);
}

if (has_rune("J")){
    set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
    if (state == PS_HITSTUN || state == PS_WALL_JUMP || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_GROUND_COMMITTED || state == PS_RESPAWN){
        move_cooldown[AT_USPECIAL] = 0;
    }
}

if (has_rune("K")){
    set_attack_value(AT_DAIR, AG_CATEGORY, 1);
    set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
    set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
    set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
    set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
    set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
    
    set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
    set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
    set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
    set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
    set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
    set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);
    
    set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
    set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
    set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
    
    set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
    set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
    set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
    set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
    
    set_num_hitboxes(AT_DAIR,1);
    
    set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
    set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
    set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -13);
    set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
    set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 75);
    set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
    set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 18);
    set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 20);
    set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
    set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 197);
    set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
    set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
}



if (has_rune("N")){
    set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);
    set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 7);
    set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 4);
    
    set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 2);
    set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 7);
    
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 2);
    set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
    set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
    set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 3);
}

if (has_rune("O")){
    if (eightball_cooldown >= 0){
        eightball_cooldown--;
    }
    if (eightball_cooldown == 0){
        sound_play(sound_get("absorb"));
        spawn_hit_fx( x, y - 18, 111 );
    }
}



