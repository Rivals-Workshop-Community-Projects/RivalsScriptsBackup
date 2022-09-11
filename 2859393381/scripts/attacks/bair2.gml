set_attack_value(AT_BAIR2, AG_CATEGORY, 1);
set_attack_value(AT_BAIR2, AG_SPRITE, sprite_get("bair2"));
set_attack_value(AT_BAIR2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR2, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR2, AG_HURTBOX_SPRITE, sprite_get("bair2_hurt"));

set_window_value(AT_BAIR2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR2, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_BAIR2, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_BAIR2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR2, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_BAIR2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR2, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR2, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_BAIR2, 3);

set_hitbox_value(AT_BAIR2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR2, 1, HG_HITBOX_X, -80);
set_hitbox_value(AT_BAIR2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_BAIR2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_BAIR2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR2, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR2, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"))

set_hitbox_value(AT_BAIR2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR2, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR2, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR2, 2, HG_ANGLE, 130);
set_hitbox_value(AT_BAIR2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR2, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR2, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR2, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"))

set_hitbox_value(AT_BAIR2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_BAIR2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR2, 3, HG_HITBOX_X, -124);
set_hitbox_value(AT_BAIR2, 3, HG_HITBOX_Y, -0);
set_hitbox_value(AT_BAIR2, 3, HG_WIDTH, 32);
set_hitbox_value(AT_BAIR2, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_BAIR2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR2, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR2, 3, HG_ANGLE, 138);
set_hitbox_value(AT_BAIR2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR2, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_BAIR2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR2, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR2, 3, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"))