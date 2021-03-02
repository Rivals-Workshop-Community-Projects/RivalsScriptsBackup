//extra_2.gml
//extra taunt
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("zz"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


//startup
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 49);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 7);


//active
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);

//loop
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 9); //looping window
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 72);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//quick wake
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 16);


//slow wake
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 17);

//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
//set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 1);


set_num_hitboxes(AT_EXTRA_2, 1);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 28);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("zzz"));
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_LOCKOUT, 20);


