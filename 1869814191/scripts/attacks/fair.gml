set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
        
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 4);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 10);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 24);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 301);

/*
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);