special_x = x;
special_x %= 200;
switch(attack){
    case AT_JAB:
    var ring = random_func_2(special_x, 50, true);
    if(ring == 1){
        set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("phone_ring"));
        set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 1);
    }else{
        set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
        set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 2);
    }
    break;
    case AT_FSTRONG:
    word_anim = 0;
    word_index = random_func_2(special_x, 3, true);
    break;
    case AT_FSPECIAL:
    sprite_change_offset("explosion2", 0, 60);
    sprdirir = spr_dir;
    case AT_DSPECIAL:
    if(get_player_color(player) == 14){
        set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 2, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 2, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 3, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 3, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 3, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 4, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 4, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 4, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 5, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 5, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 5, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 6, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 6, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 6, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 7, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 7, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 7, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 8, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 8, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 8, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 9, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 9, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 9, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 10, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 10, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 10, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 11, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 11, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 11, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 12, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 12, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 12, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 13, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 13, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 13, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 14, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 14, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 14, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 15, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 15, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 15, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 16, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 16, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 16, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 17, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 17, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 17, HG_KNOCKBACK_SCALING, .8);
        
        set_hitbox_value(AT_TAUNT_2, 18, HG_DAMAGE, 4);
        set_hitbox_value(AT_TAUNT_2, 18, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_TAUNT_2, 18, HG_KNOCKBACK_SCALING, .8);
    }
}