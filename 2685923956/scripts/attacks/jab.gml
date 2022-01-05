set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 14);

//j1_st
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 4);

//j1_at
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);

//j1_hold
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);

//j1_rec
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);


//j2_st
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 3);

//j2_at
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED, 3);

//j2_hold
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);

//j2_rec
set_window_value(AT_JAB, 8, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 13);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);


//j3_st
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);

//j3_an
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_SFX, sound_get("SW_Sword01"));
set_window_value(AT_JAB, 10, AG_WINDOW_SFX_FRAME, 2);

//j3_at
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 11, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 11, AG_WINDOW_HSPEED, 2);

//j3_at2
set_window_value(AT_JAB, 12, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 12, AG_WINDOW_SFX, sound_get("SW_Sword03"));
set_window_value(AT_JAB, 12, AG_WINDOW_SFX_FRAME, 2);

//j3_hold
set_window_value(AT_JAB, 13, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAMES, 1);

//j3_rec
set_window_value(AT_JAB, 14, AG_WINDOW_LENGTH, 12);//16
set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_JAB, 5); 

//hit1
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 58);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


//hit2
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 26);//36
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 51);//71
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 85);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);//1
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//hit2-far
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 63);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 20);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 48);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 110);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


//hit3-1
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 11);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 60);//60
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 80);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//hit3-2
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 12);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 67);//67
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 84);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 75);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));



















