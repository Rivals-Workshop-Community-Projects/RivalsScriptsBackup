set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .35);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 1 );

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .35);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, hkr_gunshot_sfx);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 5, AG_HKR_EXCITE, 20);
set_window_value(AT_USTRONG, 5, AG_HKR_EXCITE_DAMAGE, 2);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG,3);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -14);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, hkr_gunhit_sfx);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -14);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -126);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, hkr_gunhit_sfx);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 141);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 120);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));