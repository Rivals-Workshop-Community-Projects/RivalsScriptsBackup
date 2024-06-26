set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1); //neutral (taunt) startup
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1); //neutral (taunt) held
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 26);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1); //neutral (taunt) endlag
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_TAUNT, 0);