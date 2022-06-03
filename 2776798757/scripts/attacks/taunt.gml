set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 48);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 10);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("taunt"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 30);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 50);