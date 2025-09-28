atk = AT_INTRO;

set_attack_value(atk, AG_SPRITE, sprite_get("intro"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

window_num = 1; //loading char...
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
//set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_intro"));
//set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num ++; //load complete?
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_taunt_mic_start"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_pom_taunt_mic_start"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);



window_num ++; //load complete.
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num ++; //load complete.
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 2);

window_num ++; //go to idle
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 35);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

set_num_hitboxes(atk, 0);