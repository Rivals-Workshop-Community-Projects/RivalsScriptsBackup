set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_snake"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

var i = 1
set_window_value(AT_TAUNT_2, i, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX_FRAME, 4);

i++;
set_window_value(AT_TAUNT_2, i, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX, asset_get("sfx_spraypaint"));

i++;
set_window_value(AT_TAUNT_2, i, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_LENGTH, 4*6);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAME_START, 4);

i++;
set_window_value(AT_TAUNT_2, i, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX_FRAME, 3);



set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, i);