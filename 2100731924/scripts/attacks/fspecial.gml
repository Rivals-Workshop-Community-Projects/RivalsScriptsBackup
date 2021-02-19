set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 12); // throw start up
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 3); // throw
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 8); // throw end lag
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 41);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1); //throw hitbox
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, get_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -62);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 63);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 31);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 120);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);