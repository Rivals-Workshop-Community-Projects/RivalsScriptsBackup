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


	        if secret_code_input == true
        {

			if get_player_color( player ) == 18
			{
			draw_debug_text(temp_x, temp_y -60, "Samson has Magic Series combos!");
			}
			else
						{
			draw_debug_text(temp_x, temp_y -60, "Silly mode!! Seizure Warning!!");
			}
			
			draw_debug_text(temp_x, temp_y - 45, "Press SPECIAL + TAUNT + SHIELD"); 
			draw_debug_text(temp_x, temp_y - 30, "To turn off. (Any Player)");
        }