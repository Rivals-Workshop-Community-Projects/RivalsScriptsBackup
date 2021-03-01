set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT, 2);

//Body (Clean)
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Head (Clean)
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 54);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Body (Late)
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Head (Late)
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 64);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
