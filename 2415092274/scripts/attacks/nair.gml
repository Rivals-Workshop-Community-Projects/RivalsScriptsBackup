//AO NAIR 2

set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair2"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);//4
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair2_hurt"));

//set_window_value(AT_NAIR, 0, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_NAIR, 0, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_NAIR, 0, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);//9
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("SWE2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);//8

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 14);//12
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 10);//16//14
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//1 x:-6 y:-9 w:24 h:24
//2 x:29 y:-19 w:45 h:28
//8 first 5 later
//both hitbox has same knockback damage etc
//set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);

set_num_hitboxes(AT_NAIR, 3);

//main (late)
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -7);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 20);//18
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);//4
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 361);//65
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);//this is new
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);//.68
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.2);//.21
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);//2
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.3);//.9
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//early
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -3);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 76);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);//7
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 80);//65
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);//this is new
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);//.68
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.4);//.21
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);//2
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.35);//.9
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));











