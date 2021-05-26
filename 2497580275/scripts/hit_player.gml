//Thanks mawral. https://github.com/Menace13/RoA-Workshop-Templates/blob/master/Templates/Attacks/command_grabs_2.0.md
if (my_hitboxID.attack == AT_DSPECIAL) {
	if(my_hitboxID.hbox_num == 1)
	{
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		&& (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
			&& was_parried == false
		&& hit_player_obj.clone == false) {
			
			//transition to the 'throw' part of the attack.
			destroy_hitboxes();
			attack_end();
			// window = 4;
			// window_timer = 0;
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
			
			//if this attack hasn't grabbed a player yet, grab the player we just hit.
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y, hit_player_obj.x, hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
		}
	}
	else
	{
		set_player_damage( player, clamp(get_player_damage(player)-8,0,999));
	}
}
if (my_hitboxID.attack == AT_NSPECIAL) {
	with(obj_article2)
	{
		if(player == other.player)
		{
			state = 1;
   			hit_timer = 15;
		}
	}
}
if(attack == AT_FSPECIAL)
{
	with(hit_fx_obj) 
		if (player_id == other.id) 
			depth = -999;
}