set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR,4);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 56);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -34);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 35);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 280);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -68);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 55);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));