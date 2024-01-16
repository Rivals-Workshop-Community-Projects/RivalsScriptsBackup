set_attack_value(AT_VAULT, AG_CATEGORY, 2);
set_attack_value(AT_VAULT, AG_SPRITE, sprite_get("mailbox_vault"));
set_attack_value(AT_VAULT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_VAULT, AG_OFF_LEDGE, 1);
set_attack_value(AT_VAULT, AG_HURTBOX_SPRITE, asset_get("mailbox_vault_hurt"));

//
set_window_value(AT_VAULT, 1, AG_WINDOW_LENGTH, 48);
set_window_value(AT_VAULT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_VAULT, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_VAULT, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_VAULT, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_VAULT, 1, AG_WINDOW_HSPEED_TYPE, 1);


//
set_window_value(AT_VAULT, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_VAULT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_VAULT, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_VAULT, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
//set_window_value(AT_VAULT, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_VAULT, 2, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));


set_num_hitboxes(AT_VAULT, 0);
