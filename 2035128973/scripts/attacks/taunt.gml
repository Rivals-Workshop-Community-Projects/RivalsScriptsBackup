if (get_synced_var(player) == 15005)
{
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("tauntAcc"));
	set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
	set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	
	set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("luc_taunt"));
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);
}
else
{
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
	set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
	
	set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("luc_taunt"));
	set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 10);
	
	set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
	
	set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
	
	set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("intro"));
	set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 2);
	set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 24);
	set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 4);
}