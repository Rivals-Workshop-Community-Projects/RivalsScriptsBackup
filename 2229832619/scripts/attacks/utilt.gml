set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//uts1  uts2  uta   utr1  utr2
//0-0:1 1-1:1 2-3:2 4-4:1 5-6:2

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("SWE2"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 5);//7
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 8);//11
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 3);

//uts1  uts2  uta   utr1  utr2

//sweetspot
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 122);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -130);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 24);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 23);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 11);//11
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 72);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 1.2);//1.3
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("swing4"));

//up
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 93);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -94);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);//7
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);//78
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);//8
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.91);//0.91
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);//7
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//down
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 72);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -50);//-87
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 73);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 98);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 8);//7
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 80);//78
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);//8
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.73);//0.73
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);//7
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


















