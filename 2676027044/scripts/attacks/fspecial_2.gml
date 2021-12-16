// Regular Grab

set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspec_pre_play_grab"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspec_pre_play_grab_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, -10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_FSPECIAL_2, 5);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("playroughtest"));

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .3);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, sound_get("playroughtest"));

set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, .3);

set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_X, 50);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HIT_SFX, sound_get("playroughend"));

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, sprite_get("blank"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, sprite_get("blank"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, sprite_get("blank"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, sprite_get("blank"));
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT, sprite_get("blank"));

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 6000);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 6000);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, 6000);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, 6000);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT_Y_OFFSET, 6000);
