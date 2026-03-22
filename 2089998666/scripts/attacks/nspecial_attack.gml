//Attack (Belly bounce)
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_FTHROW,1);

set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));