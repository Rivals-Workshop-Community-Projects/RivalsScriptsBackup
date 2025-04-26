set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtb"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_birdflap"));

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("sfx-koopa"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);


set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 9);