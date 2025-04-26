set_attack_value(AT_UTILT, AG_CATEGORY, 0);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);

//Startup
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);//8
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

//Active
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Endlag
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 9);//8
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 4);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -30); //-28
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 40);//50
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);//8
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);//7
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 11);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 81);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 40);//50
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);//8
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 16);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 40);//50
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);//9
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);//7
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.2);//0.5
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 25);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 24);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 40);//50
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);//9
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
