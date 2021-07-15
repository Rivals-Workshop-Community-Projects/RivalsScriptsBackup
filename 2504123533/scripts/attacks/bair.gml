set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 11);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 1);


set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 6);

set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -65);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -65);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -65);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 75);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 3, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -65);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 65);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 115);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, 3)