//update
if (get_gameplay_time() - hokutoTimer == 300) {
    hokuto = false;
    enemyHokuto = false;
    hit_player_obj.enemyHokuto = false;
    sound_play(sound_get("end_mark"));
    markedPlayer = 0;
    hokutoTimer = -301;
}

damageHolder = get_player_damage(markedPlayer);

if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (!free) {
    canBeDragged = true;
}

if (swallowed) {
    swallowed = 0;
    
    var ability_sprite = sprite_get("nspecial_kirby");
    var ability_hurt = sprite_get("nspecial_kirby_hurt");
    
    with (enemykirby) {
        //Neutral Special
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_sprite);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        //Startup
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.65);
        
        //Attack
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_ice_shatter"));
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
        
        //Follow through
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.65);
        
        //Hitbox 1
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 6);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 60);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 45);
        set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 5);
    }
}