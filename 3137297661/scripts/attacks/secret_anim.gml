atk = AT_TAUNT_2;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("secret_anim"));
set_attack_value(atk, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//startup
window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 110);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("steamboat"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 109);

//anim
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 583);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 108);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);

//end
window_num++;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 46);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 124);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);
