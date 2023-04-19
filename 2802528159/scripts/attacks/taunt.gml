set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 52);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 13);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 72);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 24);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 43);

set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 53);

set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 58);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("melee_block"));