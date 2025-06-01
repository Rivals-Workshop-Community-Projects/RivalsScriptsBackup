#macro atk AT_TAUNT
#macro av set_attack_value
#macro win set_window_value

av(atk, AG_SPRITE, sprite_get("taunt"));
av(atk, AG_NUM_WINDOWS, 1);
av(atk, AG_HAS_LANDING_LAG, 3);
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_HURTBOX_SPRITE, sprite_get("carol_hurtbox_standing"));
av(atk, AG_MUNO_ATTACK_NAME, "Taunt (Dance)");


win(atk, 1, AG_WINDOW_TYPE, 9);
win(atk, 1, AG_WINDOW_LENGTH, 56);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 10);
