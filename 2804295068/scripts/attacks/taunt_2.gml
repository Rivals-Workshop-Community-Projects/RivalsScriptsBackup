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