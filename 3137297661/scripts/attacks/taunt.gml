atk = AT_TAUNT

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


window_num = 1;
//startup w1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 17);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 5);

//spin 1 w2
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 22);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("spin_slash"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

//inbetween w3
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

//spin 2 w4
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 22);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("spin_slash"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

//endpose
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sword_schwing"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);
