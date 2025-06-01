#macro atk AT_EXTRA_3
#macro av set_attack_value
#macro win set_window_value

av(atk, AG_SPRITE, sprite_get("secret_taunt"));
av(atk, AG_CATEGORY, 2)
av(atk, AG_NUM_WINDOWS, 2);
av(atk, AG_HURTBOX_SPRITE, sprite_get("carol_hurtbox_standing"));
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_MUNO_ATTACK_NAME, ":O");
av(atk, AG_MUNO_ATTACK_MISC, "This is the most powerful move in Carol's moveset.");

win(atk, 1, AG_WINDOW_LENGTH, 150);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);

win(atk, 2, AG_WINDOW_LENGTH, 50);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_VSPEED_TYPE, 1);
win(atk, 2, AG_WINDOW_VSPEED, 0);
win(atk, 2, AG_WINDOW_HSPEED_TYPE, 1);
win(atk, 2, AG_WINDOW_HSPEED, 20);
win(atk, 2, AG_WINDOW_HAS_SFX, 1)
win(atk, 2, AG_WINDOW_SFX, sound_get("motorbike_start"))