set_attack_value(AT_FTILT_G, AG_SPRITE, sprite_get("ftiltg"));
set_attack_value(AT_FTILT_G, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT_G, AG_HURTBOX_SPRITE, sprite_get("ftiltg_hurt"));

//ftiltg start
set_window_value(AT_FTILT_G, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTILT_G, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT_G, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT_G, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT_G, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT_G, 1, AG_WINDOW_SFX_FRAME, 8);

//ftiltg active
set_window_value(AT_FTILT_G, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT_G, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT_G, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//ftiltg end
set_window_value(AT_FTILT_G, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT_G, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT_G, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT_G, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT_G, 2);

//sour
set_hitbox_value(AT_FTILT_G, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT_G, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT_G, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FTILT_G, 1, HG_HITBOX_X, 93);
set_hitbox_value(AT_FTILT_G, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FTILT_G, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FTILT_G, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT_G, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT_G, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT_G, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FTILT_G, 1, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT_G, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT_G, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FTILT_G, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT_G, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT_G, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT_G, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//sweet
set_hitbox_value(AT_FTILT_G, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT_G, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT_G, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT_G, 2, HG_HITBOX_X, 135);
set_hitbox_value(AT_FTILT_G, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FTILT_G, 2, HG_WIDTH, 16);
set_hitbox_value(AT_FTILT_G, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_FTILT_G, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT_G, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FTILT_G, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT_G, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FTILT_G, 2, HG_EXTRA_HITPAUSE, 45);
set_hitbox_value(AT_FTILT_G, 2, HG_VISUAL_EFFECT, 19);