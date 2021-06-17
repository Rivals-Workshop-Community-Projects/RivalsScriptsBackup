set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 3);

//fstst fstas fstw1 |wait| fstw2 fstaw fstat fsthld fstrcvr
//0-2:3 3-3:1 4-5:2 |wait| 6-6:1 7-7:1 8-8:1 9-10:2 11-13:3

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 9);//14//10
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 9-5);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);//5
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, sound_get("swing4"));
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX_FRAME, 1);

//attack
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 2);//1
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, sound_get("swing4"));

set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 1);//4
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 19);//21
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FSTRONG, 2); 

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 70);//75//70
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 122);//132//122
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3);//3
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 10);//10//8
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);//1.05//0.9//0.95
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 305); //305
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("hit4"));


//axe
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 46);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 77);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 30);//60
//set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 12);//7
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);//0.3
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("hit4"));






