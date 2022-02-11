set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);

set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("taunt1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_VSPEED, -6.9);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("taunt"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_HSPEED, 4);


set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_TAUNT, 0)

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 76);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_TAUNT, 1, HG_TECHABLE, 1)
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));