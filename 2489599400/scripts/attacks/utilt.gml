set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,2);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -38);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -54);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 82);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 1, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_UTILT, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 100);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 2, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_UTILT, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));