set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, sound_get("magicshoot2"));

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, sound_get("magicshoot2"));

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, sound_get("magicshoot2"));

set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 0);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 0);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 54);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 52);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_med"));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 0);