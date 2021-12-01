set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 45);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 72);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 9);
// set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_orca_bite"));
