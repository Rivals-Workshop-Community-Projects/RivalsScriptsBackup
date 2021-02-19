//AR FAIR [WIP]

set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);//5
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

// f_s   f_a   f_r
// 0-2:3 3-5:3 6-9:4

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("SWB1"));

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

// 1 x:68 y:-33 w:58 h:14 - tip, Priority
// 2 x:65 y:-33 w:54 h:26 - edge, slash

set_num_hitboxes(AT_FAIR, 3);

//aerial sweetspot
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 82);//78//68
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);//3
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 20);//20//this was bigger oops
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 4);//20//8
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 1);//2
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 8);
//set_hitbox_value(AT_FAIR, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 11);//8
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);//20
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);//6
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1);//.8
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 12);//7
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1);//1.3
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FAIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 113);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//main hit
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 50);//65
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
//set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);//3
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 84);//54
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);//2
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);//11
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);//38
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);//4
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.55);//.65
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);//2
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .5);//1.2
set_hitbox_value(AT_FAIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("ARSlash"));

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 68);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 2);//3
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 6);//10
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 18);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 5);//3
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);//3
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.35);//.1
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);//1.2
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//these hitboxes are gone
//grounded 
/*set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 68);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 58);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 8);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 4, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 1.25);
set_hitbox_value(AT_FAIR, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FAIR, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 113);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//fixed bodyhit
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 23);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 65);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 16);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 1.2);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));*/




