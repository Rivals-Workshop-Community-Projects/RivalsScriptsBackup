set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 2);


set_num_hitboxes(AT_UTILT,3);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 6);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 42);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 65);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .21);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 66);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_UTILT, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 19);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 86);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 116);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
