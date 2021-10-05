set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 0);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_DATTACK, 0);
