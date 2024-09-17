atk = AT_NSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_place"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 6);

window_num ++; //throw out item
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 2);

window_num ++; //hold pose
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; { //textbook shockwave
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 200);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 200);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, HFX_KRA_ROCK_BIG);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(atk, hitbox_num, HG_GROUNDEDNESS, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
}
hitbox_num ++; { //bomb detection
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
}
hitbox_num ++; { //bomb explosion
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 150);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 150);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 18);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(atk, hitbox_num, HG_AZI_CANT_POCKET, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
}
hitbox_num ++; { //water bottle multihit
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 64);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 64);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 55);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_water_hit);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
    set_hitbox_value(atk, hitbox_num, HG_AZI_CANT_POCKET, 1);
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 3);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
}
hitbox_num ++; { //water bottle final hit
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 100);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 100);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.85);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_water_hit);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(atk, hitbox_num, HG_AZI_CANT_POCKET, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
    
}
hitbox_num ++; { //banana peel (needs altering it's just the bomb detection hitbox lol) 
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
}
hitbox_num ++; { //bell
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 50);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_bell_hit"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
}
hitbox_num ++; { //pencil
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .50);
}
hitbox_num ++; { //ruler
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.6);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .60);
}
hitbox_num ++; { //scissors
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 9);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_ARSlash"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .85);
}
hitbox_num ++; { //paper airplane
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 7);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.5);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .50);

}
hitbox_num ++; { //bottle hit detection
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, true);
}
hitbox_num ++; { //soap hit detection (still the banana one)
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
}
hitbox_num ++; { //soap blast (it's just the bomb explosion copied)
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.9);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(atk, hitbox_num, HG_AZI_CANT_POCKET, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
}
hitbox_num ++; { //car hit detection (still the banana one)
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60); //this value doesn't matter because it grabs players up
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 1); //this value doesn't matter because it has a constant speed for the grab
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
}
hitbox_num ++; { //car blast (it's just the bomb explosion copied)
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 60);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 12);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 3);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.3);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
    set_hitbox_value(atk, hitbox_num, HG_AZI_CANT_POCKET, 1);
    
}
hitbox_num ++; { //textbook soft spike
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 270);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);

}
hitbox_num ++; { //sandwich
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 32);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 60);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.4);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.2);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, .85);
}

set_num_hitboxes(atk, hitbox_num);