set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .02);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .02);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .02);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);

//set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
//set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 4);
//set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 7);


set_num_hitboxes(AT_DATTACK,1);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 67);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 130);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
