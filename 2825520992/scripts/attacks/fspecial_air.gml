set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

//Startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("parasol_twirl"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 6);

//Active
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2); 
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 10);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Endlag (Air)
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);

//Endlag (Ground)
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_FSPECIAL_AIR, 7);

set_attack_value(AT_FSPECIAL_AIR, AG_MUNO_ATTACK_MISC_ADD, "Restores your doublejump at the end of it's duration.");

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_MUNO_HITBOX_NAME, "Hit 1");

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Hit 2");

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, 16);

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_MUNO_HITBOX_NAME, "Hit 3");

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, 16);

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_MUNO_HITBOX_NAME, "Hit 4");

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, 16);

set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_MUNO_HITBOX_NAME, "Hit 5");

set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_Y, 16);

set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_MUNO_HITBOX_NAME, "Hit 6");

set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_Y, 16);

set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_MUNO_HITBOX_NAME, "Hit 7");

set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_Y, 16);

set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_MUNO_HITBOX_NAME, "Landing Hitbox");

set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));