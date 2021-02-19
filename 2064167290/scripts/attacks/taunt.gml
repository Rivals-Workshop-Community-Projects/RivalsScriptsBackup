// Taunt

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES,10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 24);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 48);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES,12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START,10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_knight_fanfare"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 8);


