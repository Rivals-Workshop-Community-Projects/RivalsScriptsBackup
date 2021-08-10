set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 10 );
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 0); //NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag


set_num_hitboxes(AT_JAB, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("jabsound"));
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 0);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 56);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("jabrelease"));