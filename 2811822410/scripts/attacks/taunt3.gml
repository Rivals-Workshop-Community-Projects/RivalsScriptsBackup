set_attack_value(AT_DTHROW, AG_CATEGORY, 0);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("taunt_juice"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_orca_shake"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

set_num_hitboxes(AT_DTHROW, 0);
