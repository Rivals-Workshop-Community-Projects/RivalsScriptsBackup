
set_attack_value(AT_SPOTDODGE, AG_CATEGORY, 0);
set_attack_value(AT_SPOTDODGE, AG_SPRITE, sprite_get( "spotdodge" ));
set_attack_value(AT_SPOTDODGE, AG_AIR_SPRITE, sprite_get( "spotdodge" ));
set_attack_value(AT_SPOTDODGE, AG_NUM_WINDOWS, 2);
set_attack_value(AT_SPOTDODGE, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_SPOTDODGE, AG_OFF_LEDGE, 1);
set_attack_value(AT_SPOTDODGE, AG_HURTBOX_SPRITE, get_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE));
set_attack_value(AT_SPOTDODGE, AG_USES_CUSTOM_GRAVITY, 1);
		
		
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.01);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_SPOTDODGE, 1, AG_WINDOW_SFX, asset_get("sfx_quick_dodge"));

set_window_value(AT_SPOTDODGE, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_SPOTDODGE, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_SPOTDODGE, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_SPOTDODGE, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_SPOTDODGE, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_SPOTDODGE, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_SPOTDODGE, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.01);
set_window_value(AT_SPOTDODGE, 2, AG_WINDOW_HAS_WHIFFLAG, 0);
