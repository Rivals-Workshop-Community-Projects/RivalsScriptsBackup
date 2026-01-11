set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("orb_slot_increase"));

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 9);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, true);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
