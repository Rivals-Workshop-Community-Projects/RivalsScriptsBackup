set_attack_value(AT_USPECIAL_3, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_3, AG_SPRITE, sprite_get("uspecial_3"));
set_attack_value(AT_USPECIAL_3, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL_3, AG_OFF_LEDGE, 0);
set_attack_value(AT_USPECIAL_3, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL_3, AG_HURTBOX_SPRITE, sprite_get("uspecial_3_hurt"));

set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_CUSTOM_GRAVITY, .55);
//Charge
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_CUSTOM_GRAVITY, .55);

set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_SFX, sound_get("sfx_uspec3swing1"));
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_CUSTOM_GRAVITY, .55);
//Active
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_CUSTOM_GRAVITY, .55);
//2 endlag windows
set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_CUSTOM_GRAVITY, .55);

set_window_value(AT_USPECIAL_3, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_3, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_3, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL_3, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_CUSTOM_GRAVITY, .55);

//AERIAL VERSION
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_SFX, sound_get("sfx_uspec3swing1"));
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_3, 7, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_USPECIAL_3, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_3, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USPECIAL_3, 8, AG_WINDOW_CUSTOM_GRAVITY, .55);

set_window_value(AT_USPECIAL_3, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_3, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 9, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_USPECIAL_3, 9, AG_WINDOW_CUSTOM_GRAVITY, .55);
set_window_value(AT_USPECIAL_3, 9, AG_WINDOW_GOTO, 8);

set_window_value(AT_USPECIAL_3, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_3, 10, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_USPECIAL_3, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_3, 10, AG_WINDOW_SFX, sound_get("sfx_uspec3swing2"));
set_window_value(AT_USPECIAL_3, 10, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_USPECIAL_3, 10, AG_WINDOW_CUSTOM_GRAVITY, .55);

set_window_value(AT_USPECIAL_3, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_3, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_3, 11, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_USPECIAL_3, 11, AG_WINDOW_CUSTOM_GRAVITY, .55);

set_window_value(AT_USPECIAL_3, 12, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_3, 12, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_3, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_3, 12, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_USPECIAL_3, 12, AG_WINDOW_CUSTOM_GRAVITY, .55);

set_num_hitboxes(AT_USPECIAL_3, 12);

//Front sweetspot
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_3, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_3, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITBOX_X, 58);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL_3, 1, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 1, HG_DAMAGE, 9); //13 at max charge
set_hitbox_value(AT_USPECIAL_3, 1, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL_3, 1, HG_BASE_KNOCKBACK, 7); //8 at max charge
set_hitbox_value(AT_USPECIAL_3, 1, HG_KNOCKBACK_SCALING, .75); //.95 at max charge
set_hitbox_value(AT_USPECIAL_3, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL_3, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HIT_SFX, sound_get("sfx_swordheavy"));
//Others
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_3, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_3, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITBOX_X, -41);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL_3, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_USPECIAL_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 2, HG_DAMAGE, 6); //8 at max charge
set_hitbox_value(AT_USPECIAL_3, 2, HG_ANGLE, 140);
set_hitbox_value(AT_USPECIAL_3, 2, HG_BASE_KNOCKBACK, 5); //6.5 at max charge
set_hitbox_value(AT_USPECIAL_3, 2, HG_KNOCKBACK_SCALING, .6); //0.75 at max charge
set_hitbox_value(AT_USPECIAL_3, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_3, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HIT_SFX, sound_get("sfx_swordmedium"));

set_hitbox_value(AT_USPECIAL_3, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_3, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL_3, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HITBOX_X, 62);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL_3, 3, HG_WIDTH, 92);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HEIGHT, 44);
set_hitbox_value(AT_USPECIAL_3, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 3, HG_DAMAGE, 6); //8 at max charge
set_hitbox_value(AT_USPECIAL_3, 3, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL_3, 3, HG_BASE_KNOCKBACK, 5); //6.5 at max charge
set_hitbox_value(AT_USPECIAL_3, 3, HG_KNOCKBACK_SCALING, .6); //0.75 at max charge
set_hitbox_value(AT_USPECIAL_3, 3, HG_BASE_HITPAUSE, 69);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_3, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HIT_SFX, sound_get("sfx_swordmedium"));

set_hitbox_value(AT_USPECIAL_3, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_3, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_3, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL_3, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_3, 4, HG_HITBOX_X, -41);
set_hitbox_value(AT_USPECIAL_3, 4, HG_HITBOX_Y, -45);

set_hitbox_value(AT_USPECIAL_3, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL_3, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_3, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USPECIAL_3, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_3, 5, HG_HITBOX_X, 62);
set_hitbox_value(AT_USPECIAL_3, 5, HG_HITBOX_Y, -45);

set_hitbox_value(AT_USPECIAL_3, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_3, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_3, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USPECIAL_3, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_3, 6, HG_HITBOX_X, -41);
set_hitbox_value(AT_USPECIAL_3, 6, HG_HITBOX_Y, -45);
//Final grounded sourspot
set_hitbox_value(AT_USPECIAL_3, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_3, 7, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_USPECIAL_3, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL_3, 7, HG_HITBOX_X, 54);
set_hitbox_value(AT_USPECIAL_3, 7, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_3, 7, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL_3, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_3, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_3, 7, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_3, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL_3, 7, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL_3, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_3, 7, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL_3, 7, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL_3, 7, HG_HIT_SFX, sound_get("sfx_swordmedium"));

//Aerial hitboxes

//Front Sweep
set_hitbox_value(AT_USPECIAL_3, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 8, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL_3, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_3, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_3, 8, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL_3, 8, HG_HITBOX_Y, -38);
set_hitbox_value(AT_USPECIAL_3, 8, HG_WIDTH, 82);
set_hitbox_value(AT_USPECIAL_3, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_3, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_3, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_3, 8, HG_ANGLE, 90); //was 95
set_hitbox_value(AT_USPECIAL_3, 8, HG_BASE_KNOCKBACK, 7.5); //was 8
set_hitbox_value(AT_USPECIAL_3, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_3, 8, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL_3, 8, HG_HIT_SFX, sound_get("sfx_swordlight"));
set_hitbox_value(AT_USPECIAL_3, 10, HG_HITSTUN_MULTIPLIER, 0.8);
//Back Sweep
set_hitbox_value(AT_USPECIAL_3, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 9, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL_3, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_3, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_3, 9, HG_HITBOX_X, -33);
set_hitbox_value(AT_USPECIAL_3, 9, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_3, 9, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_3, 9, HG_HEIGHT, 46);
set_hitbox_value(AT_USPECIAL_3, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_3, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_3, 9, HG_ANGLE, 45); //was 40
set_hitbox_value(AT_USPECIAL_3, 9, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_3, 9, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_3, 9, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL_3, 9, HG_HIT_SFX, sound_get("sfx_swordlight"));
set_hitbox_value(AT_USPECIAL_3, 10, HG_HITSTUN_MULTIPLIER, 0.8);
//Back Sweep 2, right before final hit
set_hitbox_value(AT_USPECIAL_3, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 10, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL_3, 10, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_3, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_3, 10, HG_HITBOX_X, 33);
set_hitbox_value(AT_USPECIAL_3, 10, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_3, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_3, 10, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_3, 10, HG_ANGLE, 32); //was 32
set_hitbox_value(AT_USPECIAL_3, 10, HG_BASE_KNOCKBACK, 11); //was 11
set_hitbox_value(AT_USPECIAL_3, 10, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_3, 10, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL_3, 10, HG_HIT_SFX, sound_get("sfx_swordlight"));
set_hitbox_value(AT_USPECIAL_3, 10, HG_HITSTUN_MULTIPLIER, 0.9);
//Final Hit
set_hitbox_value(AT_USPECIAL_3, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 11, HG_WINDOW, 11);
set_hitbox_value(AT_USPECIAL_3, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_3, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_3, 11, HG_HITBOX_X, 57);
set_hitbox_value(AT_USPECIAL_3, 11, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USPECIAL_3, 11, HG_WIDTH, 95);
set_hitbox_value(AT_USPECIAL_3, 11, HG_HEIGHT, 95);
set_hitbox_value(AT_USPECIAL_3, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 11, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_3, 11, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL_3, 11, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_3, 11, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_USPECIAL_3, 11, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_3, 11, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_3, 11, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL_3, 11, HG_HIT_SFX, sound_get("sfx_swordheavy"));
set_hitbox_value(AT_USPECIAL_3, 11, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_3, 11, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_USPECIAL_3, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 12, HG_WINDOW, 11);
set_hitbox_value(AT_USPECIAL_3, 12, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_3, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_3, 12, HG_HITBOX_X, 23);
set_hitbox_value(AT_USPECIAL_3, 12, HG_HITBOX_Y, -97);
set_hitbox_value(AT_USPECIAL_3, 12, HG_WIDTH, 71);
set_hitbox_value(AT_USPECIAL_3, 12, HG_HEIGHT, 41);
set_hitbox_value(AT_USPECIAL_3, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 12, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_3, 12, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL_3, 12, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_3, 12, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_USPECIAL_3, 12, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL_3, 12, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_3, 12, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL_3, 12, HG_HIT_SFX, sound_get("sfx_swordheavy"));
set_hitbox_value(AT_USPECIAL_3, 12, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL_3, 12, HG_HITSTUN_MULTIPLIER, 1);