set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("nthrow_air"));
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nthrow"));
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);

set_window_value(AT_NTHROW,1,AG_WINDOW_LENGTH,3);
set_window_value(AT_NTHROW,1,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_NTHROW,1,AG_WINDOW_ANIM_FRAME_START,0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("item_softdrop"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NTHROW,2,AG_WINDOW_LENGTH,3);
set_window_value(AT_NTHROW,2,AG_WINDOW_ANIM_FRAMES,2);
set_window_value(AT_NTHROW,2,AG_WINDOW_ANIM_FRAME_START,1);

set_window_value(AT_NTHROW,3,AG_WINDOW_LENGTH,3);
set_window_value(AT_NTHROW,3,AG_WINDOW_ANIM_FRAMES,1);
set_window_value(AT_NTHROW,3,AG_WINDOW_ANIM_FRAME_START,0);
