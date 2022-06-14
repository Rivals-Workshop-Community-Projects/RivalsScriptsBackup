//Forward tilt
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);

set_num_hitboxes(AT_FTILT, 2);

//Startup 1
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

//Attack 1
set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("pan_miss"));
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);

//Follow through 1
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//Startup 2
set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);

//Attack 2
set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, sound_get("pan_miss"));
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED_TYPE, 2);

//Follow through 2
set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


//Hitbox 1
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("pan_hit"));

//Hitbox 2
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 65);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("pan_hit"));