// AR NEW FTILT

set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//fts   ft1   ftt   fta   fth   ftr
//0-0:1 1-2:2 3-3:1 4-6:3 7-7:1 8-10:3

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 3);//8
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);//3

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 5);//7
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);//1
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_FTILT, 6);

//1:early leg hit
//2:main leg hit
//3:shockwave ish thing - group with main leg, low priority
//4:early hit but aerial
//5:weak middle leg hit
//6:main leg hit (without early leg hit, higher priority)
// -- 6 has same hitbox group as early hits!!!

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 53);
//set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 20);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
//set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 1.8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 3);//this is new

//fts   ft1   ftt   fta   fth   ftr
//0-0:1 1-2:2 3-3:1 4-6:3 7-7:1 8-10:3

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 31);//41
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 4);
//set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 55);//35
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 51);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);//4
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 70);//75
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);//5
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.4);//.9
//set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);//3
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .35);//1.2
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, 4);//this is new
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//fts   ft1   ftt   fta   fth   ftr
//0-0:1 1-2:2 3-3:1 4-6:3 7-7:1 8-10:3

//1:early leg hit
//2:main leg hit
//3:shockwave ish thing - group with main leg, low priority
//4:early hit but aerial
//5:weak middle leg hit
//6:main leg hit (without early leg hit, higher priority)
// -- 6 has same hitbox group as early hits!!!

/*set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 26);
//set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.75);
//set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));*/

set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, -15);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 41);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 53);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);//4
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 350);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 1.8);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 0.65);
set_hitbox_value(AT_FTILT, 4, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 4, HG_TECHABLE, 3);//this is new

//fts   ft1   ftt   fta   fth   ftr
//0-0:1 1-2:2 3-3:1 4-6:3 7-7:1 8-10:3

//1:early leg hit
//2:main leg hit
//3:shockwave ish thing - group with main leg, low priority
//4:early hit but aerial
//5:weak middle leg hit (group with 1)
//6:main leg hit (without early leg hit, higher priority)
// -- 6 has same hitbox group as early hits!!!

set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 6);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 42);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 22);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 3);//2
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 355);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 5, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTILT, 5, HG_TECHABLE, 3);//this is new

/*set_hitbox_value(AT_FTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, 41);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 6, HG_WIDTH, 35);
set_hitbox_value(AT_FTILT, 6, HG_HEIGHT, 51);
set_hitbox_value(AT_FTILT, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 6, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 6, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_FTILT, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 6, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 6, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FTILT, 6, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_FTILT, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));*/








