set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nair2"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("nair2_hurt"));
set_attack_value(AT_FTHROW, AG_CATEGORY, 1);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FTHROW, AG_LANDING_LAG, 6);

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));


set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);


set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW, 2);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 13);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 85);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, -23);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 130);
set_hitbox_value(AT_FTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX,  sound_get("slice"));
set_hitbox_value(AT_FTHROW, 2, HG_HITSTUN_MULTIPLIER, 1);