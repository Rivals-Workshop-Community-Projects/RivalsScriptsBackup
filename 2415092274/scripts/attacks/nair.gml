//AR NAIR

set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);//4
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//set_window_value(AT_NAIR, 0, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_NAIR, 0, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_NAIR, 0, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//1 x:-6 y:-9 w:24 h:24
//2 x:29 y:-19 w:45 h:28
//8 first 5 later
//both hitbox has same knockback damage etc
//set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);

set_num_hitboxes(AT_NAIR, 5);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -3);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 24);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);//65
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);//this is new
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);//.68
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);//.21
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);//2
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.35);//.9
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
//set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 29);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);//50
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);//this is new
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);//6.8
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.5);//.21
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);//2
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.35);//.9
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 303);
//set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//3 x:-2 y:-12 w:15 h:19
//4 x:29 y:-22 w:30 h:15

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -7);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
//set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 11);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 15);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 19);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);//this is new
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5); //3);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.2); //.6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);//1.2
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 301);
//set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 29);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -17);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
//set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 11);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 30);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 15);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 4	, HG_ANGLE_FLIPPER, 6);//this is new
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 5); //3);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.2); //.6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 4);//1.2
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 303);
//set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//toe hitbox basically
//despite it having somewhat of a unique value it'll only be used for uhhhhhhhhh cloud
//addendum: it's only used to charge/hit the cloud, and does not actually hit
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 42);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 10);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 10);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 30);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 7); //3);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.2); //.6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 4);//1.2
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));











