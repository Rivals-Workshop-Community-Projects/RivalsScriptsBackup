set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

// FAIR HAS 8 windows.

//SWING 1
// 1 : start up, 2 frames
// 2 : right after start up, 1 frame
// 3 : follow-through 1, 2 frames
// 4 : stop, 1 frame

//SWING 2
// 5 : start up 2, 2 frames
// 6 : right after start up, 1 frame
// 7 : follow-through 2, 2 frames
// 8 : stop 2, 2 frames

//SLASH 1

//START UP 1
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);;

//RIGHT AFTER START UP 1*
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 2);

//FOLLOW-THROUGH 1*
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//STOP 1*
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//SLASH 2

//START UP 2
set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);;
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//RIGHT AFTER START UP 2*
set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//FOLLOW-THROUGH 2*
set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 9);

//STOP 1*
set_window_value(AT_FAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30); 
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1)
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 1)



set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
/*set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 43);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 77);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 60);*/ //these positions r just very big and oddly placed o.o
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 33); 
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
/*set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);*/ //i'm trying to make this not combo a bunch of times
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2)

// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 7);
// set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 5);
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 4);
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -21);
// set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 83);
// set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 31);
// set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 4);
// set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
// set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 361);
// set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .3);
// set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 7);
// set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .25);
// set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
// set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);
// set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2)
