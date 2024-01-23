atk = AT_INTRO;

set_attack_value(atk, AG_SPRITE, sprite_get("intro"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(atk, AG_NUM_WINDOWS, 4);
set_attack_value(atk, AG_MUNO_ATTACK_EXCLUDE, true);

window_num = 1; //stilleto idle
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_stilleto_spawn"));

window_num ++; //teleport in
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sfx_nspec_teleport);

window_num ++; //post-teleport still pose
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num ++; //rise up
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 56);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(atk, 0);