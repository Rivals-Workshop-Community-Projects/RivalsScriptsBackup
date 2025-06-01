#macro atk 45
#macro av set_attack_value
#macro win set_window_value

av(atk, AG_SPRITE, sprite_get("bench_sit"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HURTBOX_SPRITE, sprite_get("carol_hurtbox_standing"));
av(atk, AG_MUNO_ATTACK_NAME, "Benches");


win(atk, 1, AG_WINDOW_LENGTH, 20);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);

win(atk, 2, AG_WINDOW_TYPE, 9);
win(atk, 2, AG_WINDOW_LENGTH, 60);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 12);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 4);

win(atk, 3, AG_WINDOW_LENGTH, 20);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 12);
