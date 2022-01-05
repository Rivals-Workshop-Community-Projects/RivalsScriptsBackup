set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 7);

//st
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

//an1
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("SW_Sword01"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 3);

//at1
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);

//an2
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, sound_get("SW_Sword04"));
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME, 3);

//at2
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//rec
set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 4); 

//1st top
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -91);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 54);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
//1st bottom
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -54);//-64
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 80);//60
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//2nd top
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 57);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);//80
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.4);//5
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
//2nd bottom
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -64);//-74
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 65);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 79);//59
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);//80
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.4);//5
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));










