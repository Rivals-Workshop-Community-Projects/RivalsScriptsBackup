set_attack_value(AT_TAUNT, AG_SPRITE, spr_taunt);
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 4);