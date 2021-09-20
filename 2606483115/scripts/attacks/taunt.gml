set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt3"));
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));

if(get_player_color(player) <= 8){
    
    set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
    //Unmasked
    set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 0);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_land"));
    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);
    
    set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 16);
    set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
    
    set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 16);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 4);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
    
    set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
    
    set_num_hitboxes(AT_TAUNT, 2);
    
    set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 0);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 3);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -6);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -80);
    set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 40);
    set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
    set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 4);
    set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
    set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, vfx_steam_small);
    set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
    
    set_hitbox_value(AT_TAUNT, 2, HG_PARENT_HITBOX, 0);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 3);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 3);
    set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 2);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -6);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -80);
    set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 40);
    set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 40);
    set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
    set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 4);
    set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 90);
    set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
    set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, vfx_steam_small);
    set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
    
    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 2)
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GRAVITY, 0);
    set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 5);
    set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 24);
    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -55);
    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, 20);
    set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 20);
    set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 20);
    set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 2);
    set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
    set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 60);
    set_hitbox_value(AT_TAUNT, 3, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_SPRITE, sprite_get("steam_rocket"));
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ANIM_SPEED, .2);
    set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, vfx_steam_hit_small);
}else{
    
    set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
    
    //Masked
    set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 22);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_scream"));
    set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);
    
    set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 15);
    set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
    set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
    
    set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
    set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
    
    set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 20);
    set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
    
    set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 6);
    set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 16);
    
    set_num_hitboxes(AT_TAUNT, 2);
    
    set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 0);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 14);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 4);
    set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 1);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 30);
    set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -80);
    set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 40);
    set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
    set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 2);
    set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 4);
    set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
    set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, vfx_steam_small);
    set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
    
    set_hitbox_value(AT_TAUNT, 2, HG_PARENT_HITBOX, 0);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 4);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
    set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 1);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -30);
    set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -80);
    set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 40);
    set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 40);
    set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
    set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 4);
    set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 90);
    set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
    set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, vfx_steam_small);
    set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
    
    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 2)
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GRAVITY, 0);
    set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 5);
    set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 0);
    set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 24);
    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -55);
    set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, 20);
    set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 20);
    set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 20);
    set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 3);
    set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
    set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 75);
    set_hitbox_value(AT_TAUNT, 3, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_SPRITE, sprite_get("steam_rocket"));
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_ANIM_SPEED, .2);
    set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, vfx_steam_hit_small);
}