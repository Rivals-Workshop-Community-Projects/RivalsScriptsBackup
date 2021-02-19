set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_batitless"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("taunt_batitless_hurt"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_orca_shake_water"));

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_TAUNT_2, 1);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, get_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 26);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 37);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 1);