set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);

var ig = 1;

set_window_value(AT_TAUNT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, ig, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, ig, AG_WINDOW_ANIM_FRAMES, 9);

ig++;

set_window_value(AT_TAUNT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, ig, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, ig, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, ig, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, ig, AG_WINDOW_SFX, asset_get("mfx_coin"));

ig++;

set_window_value(AT_TAUNT, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, ig, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, ig, AG_WINDOW_ANIM_FRAMES, 1);