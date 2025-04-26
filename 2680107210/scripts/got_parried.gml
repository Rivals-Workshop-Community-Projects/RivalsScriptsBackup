//got_parried.gml
switch(my_hitboxID.attack)
{
	case AT_NSPECIAL:
	{
		switch(my_hitboxID.hbox_num)
		{
			case 4:
			{
				//Hit priority of 2 is needed to bypass stupid Kragg quirk with NSpecial
				//https://ko-fi.com/post/RoA-Workshop-Guide--GML--Making-Parries-Function-F1F251OJX
				if(my_hitboxID.hit_priority == 2)
				{
					my_hitboxID.nspecial_entity.proximity_behavior = nspecial_parry_proximity_behavior;
					with(my_hitboxID.nspecial_entity)
					{
						//Update article to move towards the owner
						
						
						var owner_dir = point_direction(x, y, my_owner.x + my_owner.hsp * 1.5, my_owner.y - (my_owner.char_height / 2) + my_owner.vsp * 1.5);
						var grav_angle = 0;
						use_gravity = false;
						var owner_dist = point_distance(x, y, my_owner.x, my_owner.y - (my_owner.char_height / 2));
						var vel_mag = point_distance(0, 0, hsp, vsp) * 1.75;
						
						
						hsp = dcos(owner_dir) * vel_mag;
						vsp = -dsin(owner_dir) * vel_mag;
						//image_speed *= 1.5;
						spr_dir = lerp(-1, 1, hsp >= 0);
						
						microstate = 11;//PS_UNATTACHED_ARMED
						macrostate = 1; //MS_UNATTACHED
						state_timer = 0;
						
						my_owner = other.hit_player_obj;
					}
				}
				break;
			}
			case 2: //Small explosion for when it's attached
			{
				if(my_hitboxID.nspecial_entity != noone && instance_exists(my_hitboxID.nspecial_entity))
				{
					//Check 2nd bit to see if Vanda should go into parry stun
					if((my_hitboxID.nspecial_entity.attach_behavior >> 1) % 2 == 1 && hit_player_obj != self)
					{
						set_state(lerp(PS_PRATLAND, PS_PRATFALL, free));
						was_parried = true;
						parry_lag = nspecial_parry_stun;
						sound_stop(dspecial_sfx);
					}
					else if((my_hitboxID.nspecial_entity.attach_behavior >> 1) % 2 == 1 && hit_player_obj == self)
					{
						invince_time = 0;
						invincible = false;
					}
					
					my_hitboxID.nspecial_entity.parry_cooldown = lerp(0, nspecial_parry_cooldown, nspecial_parry_attach_behavior % 2 == 1);
				}
				break;
			}
			case 3: //Large explosion for when detonating on surfaces, or in proximity mine mode
			{
				if(my_hitboxID.nspecial_entity != noone && instance_exists(my_hitboxID.nspecial_entity))
				{
					if((my_hitboxID.nspecial_entity.proximity_behavior >> 1) % 2 == 1 && hit_player_obj != self)
					{
						set_state(lerp(PS_PRATLAND, PS_PRATFALL, free));
						was_parried = true;
						parry_lag = nspecial_parry_stun;
						sound_stop(dspecial_sfx);
					}
					else if((my_hitboxID.nspecial_entity.proximity_behavior >> 1) % 2 == 1 && hit_player_obj == self)
					{
						invince_time = 0;
						invincible = false;
					}
					
					my_hitboxID.nspecial_entity.parry_cooldown = lerp(0, nspecial_parry_cooldown, nspecial_parry_proximity_behavior % 2 == 1);
				}
				break;
			}
		}
		break;
	}
}
nspecial_storage_level = 0;