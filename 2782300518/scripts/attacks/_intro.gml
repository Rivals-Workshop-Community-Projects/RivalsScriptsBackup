#macro atk 2
#macro av set_attack_value
#macro win set_window_value

av(atk, AG_SPRITE, sprite_get("intro"));
av(atk, AG_HURTBOX_SPRITE, hurtbox_spr);
av(atk, AG_NUM_WINDOWS, 4);
av(atk, AG_MUNO_ATTACK_EXCLUDE, 1);

win(atk, 1, AG_WINDOW_LENGTH, 48);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);

win(atk, 2, AG_WINDOW_LENGTH, 12);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 12);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
win(atk, 2, AG_WINDOW_HAS_SFX, 1);
win(atk, 2, AG_WINDOW_SFX, sound_get("rolling"));

win(atk, 3, AG_WINDOW_LENGTH, 12);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 13);

win(atk, 4, AG_WINDOW_LENGTH, 33);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 9);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(atk, 0);