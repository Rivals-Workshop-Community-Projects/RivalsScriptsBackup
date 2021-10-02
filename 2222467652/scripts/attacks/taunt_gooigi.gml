set_attack_value(45, AG_SPRITE, sprite_get("gooigi_taunt"));
set_attack_value(45, AG_NUM_WINDOWS, 3);
set_attack_value(45, AG_HAS_LANDING_LAG, 3);
set_attack_value(45, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(45, AG_MUNO_ATTACK_MISC_ADD, "Taunt can be held to extend attack");
set_attack_value(45, AG_MUNO_ATTACK_EXCLUDE, 1);

set_window_value(45, 1, AG_WINDOW_TYPE, 1);
set_window_value(45, 1, AG_WINDOW_LENGTH, 5);
set_window_value(45, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(45, 2, AG_WINDOW_TYPE, 1);
set_window_value(45, 2, AG_WINDOW_LENGTH, 72);
set_window_value(45, 2, AG_WINDOW_ANIM_FRAMES, 18);
set_window_value(45, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(45, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(45, 2, AG_WINDOW_SFX, asset_get("sfx_waterhit_weak"));
set_window_value(45, 2, AG_WINDOW_SFX_FRAME, 19);

set_window_value(45, 3, AG_WINDOW_TYPE, 1);
set_window_value(45, 3, AG_WINDOW_LENGTH, 5);
set_window_value(45, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 3, AG_WINDOW_ANIM_FRAME_START, 18);
