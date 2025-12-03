set_attack_value(2, AG_SPRITE, sprite_get("intro"));
set_attack_value(2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

var num = 1;
set_window_value(2, num, AG_WINDOW_LENGTH, 24);
set_window_value(2, num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(2, num, AG_WINDOW_SFX, sound_get("teleport"));
set_window_value(2, num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(2, num, AG_WINDOW_HAS_SFX, 1);

set_attack_value(2, AG_NUM_WINDOWS, num);