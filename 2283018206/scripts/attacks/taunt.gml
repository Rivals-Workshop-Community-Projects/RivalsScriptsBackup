var i = AT_TAUNT;

repeat(2){
	
	set_attack_value(i, AG_SPRITE, sprite_get("taunt"));
	set_attack_value(i, AG_NUM_WINDOWS, 4);
	set_attack_value(i, AG_HURTBOX_SPRITE, hurtbox_spr);
	
	set_window_value(i, 1, AG_WINDOW_TYPE, 0);
	set_window_value(i, 1, AG_WINDOW_LENGTH, 20);
	set_window_value(i, 1, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(i, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(i, 1, AG_WINDOW_SFX, jump_sound);
	set_window_value(i, 1, AG_WINDOW_SFX_FRAME, 19);
	
	set_window_value(i, 2, AG_WINDOW_TYPE, 0);
	set_window_value(i, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(i, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(i, 2, AG_WINDOW_ANIM_FRAME_START, 4);
	
	set_window_value(i, 3, AG_WINDOW_TYPE, 1);
	set_window_value(i, 3, AG_WINDOW_LENGTH, 15);
	set_window_value(i, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(i, 3, AG_WINDOW_ANIM_FRAME_START, 5);
	
	set_window_value(i, 4, AG_WINDOW_TYPE, 1);
	set_window_value(i, 4, AG_WINDOW_LENGTH, 10);
	set_window_value(i, 4, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(i, 4, AG_WINDOW_ANIM_FRAME_START, 8);
	
	i = AT_TAUNT_2;
}

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);