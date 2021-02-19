set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);

//dstst dstch dstn1 dstn2 dstat dsthl dstrcvr
//0-3:4 4-4:1 5-5:1 6-6:1 7-7:1 8-9:2 10-13:4

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);//12//10
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);//4
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 2);//4
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 2);//2
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("spike"));
//set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 9);//11
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 12);//14
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 2); 

//horiz
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 220);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);//8//10
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7.8);//7//7.3
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.85);//0.8
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//vert
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -67);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 77);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 12);//8//10
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 63);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8.2);//6//7.8
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);//0.7
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));





