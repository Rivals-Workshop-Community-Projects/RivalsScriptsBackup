// Kill Grab

set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspec_zmove"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("blank"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("zmovestart"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 41);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 19);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED, -10);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_FSPECIAL_AIR, 6);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 11);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("zmove"));

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 11);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .3);

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_EXTRA_HITPAUSE, 11);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .3);

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_EXTRA_HITPAUSE, 11);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .3);

set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_VISUAL_EFFECT, hfx_mimibig);
//set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_EXTRA_HITPAUSE, 11);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITPAUSE_SCALING, .3);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HIT_LOCKOUT, 10);
