set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("tauntAir"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_HURTBOX_AIR_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);

// set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, tauntAnimDur);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("draw_pda_spy"));//TODO: should not play when invis?

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 64);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
// set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("draw_pda_spy"));