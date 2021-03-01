set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("one2"));

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("one3"));

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, sound_get("one3"));

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, sound_get("one3"));

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT, 4);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 27);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 27);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 32);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 110);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));