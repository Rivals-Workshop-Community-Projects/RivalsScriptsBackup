//Spiral Speen
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//Wolframe 1
set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

//Speens
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 3);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 4);
//Endlag
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 3);

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 109);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 109);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 35);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 124);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("ftilt"));