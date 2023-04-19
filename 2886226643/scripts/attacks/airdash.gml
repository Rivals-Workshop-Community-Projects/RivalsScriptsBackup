
set_attack_value(AT_AIRDASH, AG_CATEGORY, 2);
set_attack_value(AT_AIRDASH, AG_SPRITE, sprite_get( "airdodge" ));
set_attack_value(AT_AIRDASH, AG_AIR_SPRITE, sprite_get( "airdodge" ));
set_attack_value(AT_AIRDASH, AG_NUM_WINDOWS, 1);
set_attack_value(AT_AIRDASH, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_AIRDASH, AG_OFF_LEDGE, 1);
set_attack_value(AT_AIRDASH, AG_HURTBOX_SPRITE, get_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE));
set_attack_value(AT_AIRDASH, AG_USES_CUSTOM_GRAVITY, 1);
		
set_window_value(AT_AIRDASH, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.01);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_HAS_WHIFFLAG, 0);
