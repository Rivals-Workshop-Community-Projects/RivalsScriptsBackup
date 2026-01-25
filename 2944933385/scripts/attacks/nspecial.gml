set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);

//current fruit showcase
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, fruit_win_length);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);

//roulette
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, fruit_win_length);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//cancel
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_NSPECIAL, 0);


/*set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, 1);*/
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 0.6);


//cherry
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);

//strawberry
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_punch_light"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);

//orange
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 35);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("sfx_kick_light"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);

//apple
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sound_get("sfx_punch_medium"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);

//melon
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, sound_get("sfx_kick_medium"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_MASK, -1);

//galaxian
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_LOCKOUT, 18);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, sound_get("sfx_punch_light"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_MASK, -1);

//bell
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, sound_get("sfx_bell"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, -1);

//key
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 99999);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 44);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 44);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 15);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, sound_get("sfx_punch_heavy"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_MASK, -1);