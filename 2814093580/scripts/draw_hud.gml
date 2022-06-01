//hitbox_init
	muno_event_type = 5;
	user_event(14);

	if move_cooldown[AT_NSPECIAL] == 0  
	{
		shader_start()
		honeyhud = sprite_get("jarhud");
		draw_sprite( honeyhud, 0, temp_x + 155, temp_y - 15 ) 
		shader_end() 
		
	}
	else
	{
		shader_start()
		draw_sprite( honeyhud, 1, temp_x + 155, temp_y - 15 )  
		shader_end()
	}