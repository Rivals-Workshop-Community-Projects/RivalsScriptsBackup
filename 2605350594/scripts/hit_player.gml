if(attack == AT_FTILT && my_hitboxID.hbox_num == 1)
{
    set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
    window = 4;
    window_timer = 0;
    hsp = 0;
    old_hsp = 0;
    hit_player_obj.x = clamp(hit_player_obj.x, x-100, x+100);
	if(!jet_charge)
	{
		jet_charge = true;
		jet_timer = 0;
		white_flash_timer = 10;
		sound_play(asset_get("sfx_coin_capture"));
		fx = spawn_hit_fx(x,y-40,4);
		fx.depth = depth + 3;
	}
}

if ((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_AIR) && my_hitboxID.hbox_num == 1) 
{
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		set_attack_value(attack, AG_NUM_WINDOWS, 7);
		window = 4;
        window_timer = 0;
		if(!jet_charge)
		{
			jet_charge = true;
			jet_timer = 0;
			white_flash_timer = 10;
			sound_play(asset_get("sfx_coin_capture"));
			fx = spawn_hit_fx(x,y-40,4);
			fx.depth = depth + 3;
		}
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}