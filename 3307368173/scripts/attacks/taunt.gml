atk = AT_TAUNT;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

window_num = 1; //it's morbin' time
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_taunt_mic_start"));

window_num ++; //almost done morb
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 21);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //now i'm morb
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

set_num_hitboxes(atk, 0);