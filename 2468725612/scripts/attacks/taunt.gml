set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("punch_heavy"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, -2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_TAUNT, has_rune("G"));

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 110);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 110);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("punch_medium"));