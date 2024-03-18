atk = AT_TAUNT_2;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(atk, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

window_num = 1;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 36);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 9);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_attack_value(atk, AG_NUM_WINDOWS, window_num);