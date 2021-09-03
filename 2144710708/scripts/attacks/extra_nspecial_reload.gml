// used for nspecial reloading (attack during nspecial)

set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, sprite_get("taunt2_air"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("owen_hurtbox"));

set_attack_value(AT_TAUNT_2, AG_MUNO_ATTACK_EXCLUDE, 1);

// 37 frames total

// reload
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("smg1_reload"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, sound_get("smg1_reload_click"));
//set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 1);

// i honestly forgot what this window does
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

