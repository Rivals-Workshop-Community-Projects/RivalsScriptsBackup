set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

//Startup
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 5);
//set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("voice_shy_guy_2"));

//First hit
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 0);

//Second hit
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//Endlag
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL_AIR, 6);

//Window 2 hit 2
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 100);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 110);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("hit_pm"));

//Window 2 hit 1
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 130);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("hit_pm"));

//Window 3 hit 1
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 110);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, sound_get("hit_pm"));

//Window 3 hit 2
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, -90);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 190);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, sound_get("hit_pm"));