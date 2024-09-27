set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//start precharge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_wra"));

//anticipation
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);//3
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);//2

//atk
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);

//continues
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 5);

//atk 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);

//end hold
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 8, AG_IASA_THIS_WINDOW, 1);





set_num_hitboxes(AT_DSTRONG, 2);

//forward
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 59);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 7.5);//5.5
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.75);//0.7
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 9);//7
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.7);//0.3//0.6
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//backward
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -43);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 59);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7.5);//5.5
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);//0.75
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 9);//7
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);//0.3//0.6
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


















