set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 0);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 8);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 58);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6.1);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7.5);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);