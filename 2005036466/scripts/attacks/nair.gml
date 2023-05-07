set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_AIR_SPRITE, 0);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, 18, 2);   // I don't know what this does

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 2);

// Hit 2
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 6);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 88);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, .5);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 88);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 43);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);