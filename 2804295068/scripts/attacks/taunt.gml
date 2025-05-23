//taunt trumpet
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_trumpet"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_trumpet_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("taunt_trumpet"));

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_TAUNT, 0);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 321);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 75);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_EXTRA_HITPAUSE, 50);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 320);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, 2);



//taunt costume
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_costume"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("taunt_costume_hurt"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("taunt_costume"));

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 258);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 43);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_TAUNT_2, 0);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 140);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_TAUNT_2, 1, HG_TECHABLE, 1);



//taunt doobie
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("taunt_doobie"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("taunt_doobie_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 54);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 18);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("wakeup"));

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_EXTRA_2, 0);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 16);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 1.6);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));