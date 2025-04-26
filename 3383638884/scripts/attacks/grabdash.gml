set_attack_value(AT_GRABDASH, AG_CATEGORY, 2);
set_attack_value(AT_GRABDASH, AG_SPRITE, sprite_get("machrun"));
set_attack_value(AT_GRABDASH, AG_HURTBOX_SPRITE, asset_get("dashbox"));
set_attack_value(AT_GRABDASH, AG_HURTBOX_AIR_SPRITE, asset_get("dashbox"));
set_attack_value(AT_GRABDASH, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_GRABDASH, AG_NUM_WINDOWS, 7);
set_attack_value(AT_GRABDASH, AG_OFF_LEDGE, 1);

//start
set_window_value(AT_GRABDASH, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_GRABDASH, 1, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_GRABDASH, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_GRABDASH, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_GRABDASH, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_GRABDASH, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_GRABDASH, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_GRABDASH, 1, AG_WINDOW_SFX, sound_get("pt_mach_attack"));

//hold
set_window_value(AT_GRABDASH, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_GRABDASH, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_GRABDASH, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_GRABDASH, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_GRABDASH, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_GRABDASH, 2, AG_WINDOW_HSPEED, 0);

//dash
set_window_value(AT_GRABDASH, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_GRABDASH, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_GRABDASH, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_GRABDASH, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_GRABDASH, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_GRABDASH, 3, AG_WINDOW_HSPEED, 10);
set_window_value(AT_GRABDASH, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_GRABDASH, 3, AG_WINDOW_SFX, sound_get("grab"));

//hold
set_window_value(AT_GRABDASH, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_GRABDASH, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_GRABDASH, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_GRABDASH, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_GRABDASH, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_GRABDASH, 4, AG_WINDOW_HSPEED, 0);

//lick
set_window_value(AT_GRABDASH, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_GRABDASH, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_GRABDASH, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_GRABDASH, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_GRABDASH, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_GRABDASH, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_GRABDASH, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_GRABDASH, 5, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_GRABDASH, 5, AG_WINDOW_SFX, sound_get("sfx_death"));

//end
set_window_value(AT_GRABDASH, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_GRABDASH, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_GRABDASH, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_GRABDASH, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_GRABDASH, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_GRABDASH, 6, AG_WINDOW_HSPEED, 0);

//end (not hit)
set_window_value(AT_GRABDASH, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_GRABDASH, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_GRABDASH, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_GRABDASH, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_GRABDASH, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_GRABDASH, 7, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(AT_GRABDASH, 2);

//grab
set_hitbox_value(AT_GRABDASH, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRABDASH, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_GRABDASH, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_GRABDASH, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_GRABDASH, 1, HG_WINDOW, 3);
set_hitbox_value(AT_GRABDASH, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_GRABDASH, 1, HG_LIFETIME, 20);

set_hitbox_value(AT_GRABDASH, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_GRABDASH, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_GRABDASH, 1, HG_WIDTH, 20);
set_hitbox_value(AT_GRABDASH, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_GRABDASH, 1, HG_SHAPE, 0);

set_hitbox_value(AT_GRABDASH, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_GRABDASH, 1, HG_ANGLE, 90);
set_hitbox_value(AT_GRABDASH, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_GRABDASH, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_GRABDASH, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_GRABDASH, 1, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_GRABDASH, 1, HG_THROWS_ROCK, 1);

//lick
set_hitbox_value(AT_GRABDASH, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_GRABDASH, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_GRABDASH, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_GRABDASH, 2, HG_WINDOW, 5);
set_hitbox_value(AT_GRABDASH, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_GRABDASH, 2, HG_LIFETIME, 5);

set_hitbox_value(AT_GRABDASH, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_GRABDASH, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_GRABDASH, 2, HG_WIDTH, 60);
set_hitbox_value(AT_GRABDASH, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_GRABDASH, 2, HG_SHAPE, 0);

set_hitbox_value(AT_GRABDASH, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_GRABDASH, 2, HG_ANGLE, 30);
set_hitbox_value(AT_GRABDASH, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_GRABDASH, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_GRABDASH, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_GRABDASH, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_GRABDASH, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_GRABDASH, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//munophone
set_attack_value(AT_GRABDASH, AG_MUNO_ATTACK_NAME, "Grabdash");

set_hitbox_value(AT_GRABDASH, 1, HG_MUNO_HITBOX_NAME, "Grab");
set_hitbox_value(AT_GRABDASH, 1, HG_MUNO_HITBOX_BKB, "-");
set_hitbox_value(AT_GRABDASH, 1, HG_MUNO_HITBOX_KBG, "-");
set_hitbox_value(AT_GRABDASH, 1, HG_MUNO_HITBOX_BHP, "-");
set_hitbox_value(AT_GRABDASH, 1, HG_MUNO_HITBOX_HPG, "-");
set_hitbox_value(AT_GRABDASH, 1, HG_MUNO_HITBOX_MISC_ADD, "Grabs");

set_hitbox_value(AT_GRABDASH, 2, HG_MUNO_HITBOX_NAME, "Lick");
