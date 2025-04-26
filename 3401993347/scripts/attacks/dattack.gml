set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);

//attack
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"))
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 11);


//goto AT_DATTACK
set_num_hitboxes(AT_DATTACK, 2);

// set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 12);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6.5);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.75);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 68);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);


set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.5);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 48);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 301);
