//I am literally using this attack index because I don't have any others left lol.
#macro atk AT_EXTRA_2
#macro av set_attack_value
#macro win set_window_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_SPRITE, sprite_get("exit_bike"));
av(atk, AG_NUM_WINDOWS, 1);
av(atk, AG_HURTBOX_SPRITE, sprite_get("exit_bike_hurt"));
av(atk, AG_MUNO_ATTACK_EXCLUDE, 1);


win(atk, 1, AG_WINDOW_LENGTH, 16);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 8);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("motorbike_throw2"));
