#macro atk AT_DSPECIAL_2
#macro av set_attack_value
#macro win set_window_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_SPRITE, sprite_get("dspecial2"));
av(atk, AG_NUM_WINDOWS, 1);
av(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DSpecial2 (Get off bike)");
av(atk, AG_MUNO_ATTACK_MISC, "Changes stance to off bike. Bike remains parked in position where the move is used.");


win(atk, 1, AG_WINDOW_LENGTH, 18);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 7);
//win(atk, 1, AG_WINDOW_HAS_SFX, 1);
//win(atk, 1, AG_WINDOW_SFX, sound_get("motorbike_throw2"));
