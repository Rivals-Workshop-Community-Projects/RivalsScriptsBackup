set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//dattack start
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_eta"));

//dattack active1
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1)
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6);

/*
//dattack active2
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("pistol"));*/

/*
//dattack active3
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);*/


//dattack end
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

//dattack gun
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 6);

set_num_hitboxes(AT_DATTACK, 2);

//leg
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 78);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//pistol
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));