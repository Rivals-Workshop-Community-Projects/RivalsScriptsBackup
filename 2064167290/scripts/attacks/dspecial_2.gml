set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("turntable_grab"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("turntable_grab_hurt"));

set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);


// trying to grab
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

// Miss
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// catch the turnatable
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_DSPECIAL_2,1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 80);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));