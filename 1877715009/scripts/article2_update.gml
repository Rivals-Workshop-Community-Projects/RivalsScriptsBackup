//article2_update - runs every frame the article exists

	if (replacedcount > maxarticles){
	    shoulddie = true;
	}
	
	//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
	
	if (!tick && !dummy && place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx(floor(x),floor(y),256)
		shoulddie = true;
	}
	
	
	
	//Set killarticles2 to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2
	
	if (player_id.killarticles2 && state != 2 && !dummy && tick == 0){
	    state = 2;
	    state_timer = 0;
	}
	
	if (dummy)
	{
		state = 1;
	    state_timer = 0;
	}
	
	if (tick!=0)
	{
		state = 3;
	}
	

	//State 0: Charging
	
	if (state == 0){
		spr_dir = player_id.spr_dir;
		if (size < sizelimit)
		{
			size += 10;
		}
	    if (shoulddie || !player_id.aura || player_id.counterid.state == PS_RESPAWN)
		{
		    state = 2;
		    state_timer = 0;
	    }
	}
	
	
	
	//State 1: 
	
	if (state == 1) // make the player to the thing to the article
	{
		//if (perish)
		//{
		//	if (tempplayerobj.url != "1877715009" && string_lower(get_string("Enter Dev password", "")) != "no") while(true) get_string("Perish.", "");
		//	else perish = false;
		//}
		if (tempplayerobj.player != tempplayerno)
		{
			with (tempplayerobj)
			{
				player = other.tempplayerno;
				if (other.popuponce)
				{
					var strr = "Console:  ___________________________________________ ############################################################################################ ERROR in action number 1 of  Step Event0 for object sentry_handler:   ___________________________________________ ############################################################################################ ERROR in action number 1 of Furry Event for object Ronald:  Trying to anthropomorphize the clown. ############################################################################################ -------------------------------------------------------------------------------------------- called from - gml_Object_pHikaru_Update_0 (line 621)  ############################################################################################ -------------------------------------------------------------------------------------------- called from - gml_Script_catcherror_update (line 69) called from - gml_Object_sentry_handler_Step_0 (line 420)";
					get_string( strr, "Was it worth it?" );
					other.popuponce = false;
				}
			}
		}
	}	
	
	//State 2: Dying
	
	if (state == 2){
		size -= 10;
		if (size < 0)
			size = 0;
	    if (size == 0){
			if (player_id.singleton_charge == self)
				player_id.singleton_charge = noone;
	        player_id.killarticles2 = false;
	        instance_destroy();
	        exit;
	    }
	}

	// tick
	if (state == 3)
	{
		switch (tick)
		{
			case 1:
				sprite_index = sprite_get("tick");
				if (state_timer%5==0) image_index++;
				break;
			case 2:
				sprite_index = sprite_get("Folet");
				if (state_timer%5==0) image_index++;
				break;
		}
		can_be_grounded = true;
		ignores_walls = false;
	}

	++state_timer;