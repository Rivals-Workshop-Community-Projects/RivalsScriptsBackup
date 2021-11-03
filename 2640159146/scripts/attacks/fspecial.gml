set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("swing4"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 11);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -3);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("swing4"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("swingmid"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("swingstrong"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);

set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Shorten during frames " + string(get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) + 1) + "-" + string(get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) + get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)) + ", skipping to endlag and destroying hitbox.");