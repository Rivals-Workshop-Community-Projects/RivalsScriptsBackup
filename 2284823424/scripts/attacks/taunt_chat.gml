set_attack_value(AT_CHAT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_CHAT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_CHAT, AG_OFF_LEDGE, 1);
set_attack_value(AT_CHAT, AG_CATEGORY, 2);
set_attack_value(AT_CHAT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

// start
set_window_value(AT_CHAT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_CHAT, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_CHAT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_CHAT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_CHAT, 1, AG_WINDOW_SFX, sfx_minecraft_pop);
set_window_value(AT_CHAT, 1, AG_WINDOW_SFX_FRAME, 14);

// idle
set_window_value(AT_CHAT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_CHAT, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_CHAT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_CHAT, 2, AG_WINDOW_ANIM_FRAME_START, 6);

// end
set_window_value(AT_CHAT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_CHAT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_CHAT, 3, AG_WINDOW_ANIM_FRAMES, -3);
set_window_value(AT_CHAT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_CHAT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_CHAT, 3, AG_WINDOW_SFX, sfx_minecraft_pop);
set_window_value(AT_CHAT, 3, AG_WINDOW_SFX_FRAME, 14);