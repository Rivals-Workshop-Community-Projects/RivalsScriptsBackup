set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 5.5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_blow_medium2"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_TENSION_WHIFF_PENALTY, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 5);

set_hitbox_value(AT_DATTACK, 1, HG_MUNO_HITBOX_NAME, "Hit 1");
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 58);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("sfx_kick"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DATTACK, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_DATTACK, 2, HG_MUNO_HITBOX_NAME, "Hit 2");
set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 58);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 3, HG_MUNO_HITBOX_NAME, "Hit 3");
set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 58);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 4, HG_MUNO_HITBOX_NAME, "Hit 4");
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 24);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 58);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 35);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sound_get("sfx_kick"));
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DATTACK, 5, HG_MUNO_HITBOX_NAME, "Hit 5");
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 38);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 88);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 62);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 4);