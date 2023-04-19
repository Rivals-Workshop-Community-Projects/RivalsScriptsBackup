set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_ground"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial_ground"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_ground_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_ground_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1); //Start up little jump
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("USPECIAL_CHARGE"));

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 9); //Winding up
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
//set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, -5);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1); //Spinnin' 1st (turning)
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED, -40);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, -0.1);
//set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("S3K_5C"));

set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 1); //Spinnin' 2nd (normally)
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, 12);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, sound_get("se_sonic_attackair_N01"));

set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 1); //Done, rolling back out
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.01);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 1); //Readyyyyy
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED, 9);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_TYPE, 1); //Goo!
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HSPEED, 15);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3);

set_num_hitboxes(AT_DSPECIAL_2, 5);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1); //Shmack
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 85);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 125);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, sound_get("ARC_BTL_HTN_Kyusho_Hit"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 1);
/*
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_LOCKOUT, 1);

set_hitbox_value(AT_DSPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_LOCKOUT, 1);
*/
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_PARENT_HITBOX, 5); //Pushing away
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH, 85);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, sound_get("se_common_sword_hit_s"));
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_LOCKOUT, 10);