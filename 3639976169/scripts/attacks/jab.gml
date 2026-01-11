set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_NO_PARRY_STUN, true);
set_num_hitboxes(AT_JAB, 1);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("claw"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 35);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
//set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 10);
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);