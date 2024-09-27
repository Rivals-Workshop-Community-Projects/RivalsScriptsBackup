set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ihurt"));

//old values
// length - 84
//frames 20
//sound 'nice'
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);


set_num_hitboxes(AT_TAUNT,0);
