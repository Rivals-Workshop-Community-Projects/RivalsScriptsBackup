//article2_update.gml

if (active_mode == false)
{
	attack_phase += 1;

	switch (attack_phase)
	{
		case 0: image_index = 0; image_alpha = 1.0; hsp = 0; vsp = 0; break;
		case 1: image_index = 0; image_alpha = 1.0; hsp = 0; vsp = 0; break;
		case 2: image_index = 0; image_alpha = 1.0; hsp = 0; vsp = 0; break;
		case 6: image_index = 1; image_alpha = 1.0; hsp = 0; vsp = 0; break;
		case 12: image_index = 2; image_alpha = 1.0; hsp = 0; vsp = -19; break;
		case 120: instance_destroy(); break;
	}
}

if (active_mode == true)
{
	if (free == true && vsp < 11)
	{
		vsp += 0.3
	}

	if (y > 999 || player_id.greaterdog_timer <= 1)
	{
		player_id.greaterdog_object = 0;
		player_id.greaterdog_timer *= 0.5;
		active_mode = false;
		attack_phase = 0;
		sprite_index = sprite_get("proj_dogwarp");
		image_index = 0;
		//instance_destroy();
	}

	if (free == true && has_leap == true)
	{
		if (y >= player_id.hit_player_obj.y+32)
		{
			vsp = -13;
			hsp *= 0.5;
		}
		has_leap = false;
	}

	if (free == true && has_leap == false && has_air_leap == true && vsp > 9 && y >= player_id.hit_player_obj.y+64)
	{
		vsp = -13;
		hsp *= 0.5;
		has_air_leap = false;
	}

	if (free == false && has_leap == false)
	{
		has_leap = true;
		has_air_leap = true;
		vsp = 0;
	}

	target_x = player_id.hit_player_obj.x;
	target_y = player_id.hit_player_obj.y;

	if (attack_phase >0)
	{
		attack_phase -= 1;
	}

	if (x > player_id.hit_player_obj.x + 32)
	{
		spr_dir = -1;
		
		if (hsp > 0)
		{
			hsp -= 0.3;
		}	
		else if (hsp > -11)
		{
			hsp -= 0.2;
		}
	}
	else if (x < player_id.hit_player_obj.x - 32)
	{
		spr_dir = 1;
		
		if (hsp < 0)
		{
			hsp += 0.3;
		}	
		else if (hsp < 11)
		{
			hsp += 0.2;
		}
	}
	else
	{
		hsp += spr_dir*0.2;
	}

	if ( point_distance(x, y, target_x, target_y) < 48 && attack_phase <= 0)
	{
		attack_phase = 100;
		
		if (abs(hsp)+abs(vsp) < 9)
		{
			create_hitbox(AT_NSPECIAL, 1, x, y);
		}
		
		if (abs(hsp)+abs(vsp) > 9)
		{
			create_hitbox(AT_FSTRONG, 1, x, y);
		}
	}

	if (attack_phase == 0 && abs(hsp)+abs(vsp) > 9)
		{
			rand_x = random_func(0, 64, true);
			rand_y = random_func(1, 48, true);
			
			spawn_hit_fx(
			(x-32)+rand_x,
			(y-24)+rand_y,
			dog_particle);
		}

	//SPRITE
	//IMAGE
	//INDEX
	//RENDERING
	//... this code is an absolute trainwreck
	if (free)
	{
		image_index = 2;
	}

	else if (x > player_id.hit_player_obj.x && hsp < 0)
	{
		image_index = get_gameplay_time() / 2;
	}

	else if (x < player_id.hit_player_obj.x && hsp > 0)
	{
		image_index = get_gameplay_time() / 2;
	}

	else
	{
		image_index = get_gameplay_time() / 1;
	}

	//Sprite Alpha
	//... this is outrageously inefficient
	if (attack_phase > 1)
	{
		image_alpha = 0.5;
	}
	else
	{
		image_alpha = 1.0;
	}
	
	if (active_mode == false)
	{
		sprite_index = sprite_get("proj_dogwarp");
		image_index = 0;
	}
}
