set_attack_value(AT_TAUNT_2, AG_MUNO_ATTACK_NAME, "the funny yell (taunt)");

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 1);

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_flareo_rod"));

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);



set_attack_value(AT_TAUNT_2, AG_MUNO_ATTACK_MISC, "im scared

- trummel");