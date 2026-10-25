var atk = AT_TAUNT_2;
set_attack_value(atk, AG_SPRITE, sprite_get("ketchup"));
set_attack_value(atk, AG_HAS_LANDING_LAG, 3);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
var _win = 1;

set_window_value(atk, _win, AG_WINDOW_TYPE, 1);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 38);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 8);
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 2);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 56);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 8);
_win++;

set_window_value(atk, _win, AG_WINDOW_TYPE, 3);
set_window_value(atk, _win, AG_WINDOW_LENGTH, 28);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, _win, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, _win, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, _win, AG_WINDOW_SFX, sound_get("sfx_sans_talk"));

set_attack_value(atk, AG_NUM_WINDOWS, _win);