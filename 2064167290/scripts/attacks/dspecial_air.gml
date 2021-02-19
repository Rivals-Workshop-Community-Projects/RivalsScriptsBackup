// TURNTABLE TAUNT

set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 0);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("taunttable"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 2);


set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 8);


/*
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 11);

