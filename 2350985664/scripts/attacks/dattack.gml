set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("dash"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

set_num_hitboxes(AT_DATTACK,3);

// early hit will be turned into another weaker sweetspot i think
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 84);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 100);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 305 );
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 84);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 100);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 305 );
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 3);

//Sweetspot
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, -46);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 10);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 140);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DATTACK, 3, HG_HIT_LOCKOUT, 3);