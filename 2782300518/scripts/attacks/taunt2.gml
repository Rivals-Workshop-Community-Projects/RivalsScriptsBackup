#macro atk AT_TAUNT_2
#macro av set_attack_value
#macro win set_window_value

av(atk, AG_SPRITE, sprite_get("taunt2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HURTBOX_SPRITE, sprite_get("bike_hurtbox"));

win(atk, 1, AG_WINDOW_LENGTH, 100);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 18);

win(atk, 2, AG_WINDOW_LENGTH, 50);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 17);

win(atk, 3, AG_WINDOW_LENGTH, 6);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 18);