set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));



set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 10); 

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 1);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH,50);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 0);



