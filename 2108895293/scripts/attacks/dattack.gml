set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);


set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("swing"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 2); 

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 57);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 41);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60); //361
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.75);;
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.4);;
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));