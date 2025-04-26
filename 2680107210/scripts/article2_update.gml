//article2_update
if((state > 0 || state_timer >= 1) && image_alpha != 1)
{
	image_alpha = 1;
	image_angle = 180*is_exit;
	state = 1;
	window_timer = 0;
}

if(following != noone && state == 0)
{
	x = following.x;
	y = following.y - 256;
}

if(state > 0)
{
	with oPlayer
	{
		//If the player is within range to be inside the portal
		
		var vsp_mult = -2 * abs(vsp) * lerp(-1,1,!other.is_exit);
		
		var in_portal = collision_rectangle(other.x - other.detect_x[other.growth], other.y, other.x + other.detect_x[other.growth], other.y + vsp_mult,self,true,false);
		var below_portal = collision_rectangle(other.x - other.detect_x[other.growth], other.y, other.x + other.detect_x[other.growth], other.y - vsp_mult,self,true,false);
		if(state != PS_RESPAWN && in_portal && free && (vanda_in_nspecial == noone || vanda_in_nspecial == other.player_id))
		{
			//They are now in the portal
			vanda_in_nspecial_timer = 2;
			vanda_which_portal = other;
			vanda_in_nspecial = other.player_id;
			
			//The player needs to know which is the entrance and which is the exit
			if(vanda_in_nspecial_portal_entrance == noone)
			{
				vanda_in_nspecial_portal_entrance = lerp(other, other.other_portal, other.is_exit);
				vanda_in_nspecial_portal_exit = lerp(other, other.other_portal, !other.is_exit);
			}
			
			//If they bump against the edge of the portal, stop their velocity
			if((x >= other.x + other.detect_x[other.growth] && hsp > 0) || (x <= other.x - other.detect_x[other.growth] && hsp < 0))
			{
				hsp = 0;
			}
			
			//Make them fall through the floor for this frame
			image_xscale = 0;
		}
		//Else if they should teleport on this frame
		else if(below_portal && vsp*lerp(-1,1,other.is_exit) < 0 && vanda_in_nspecial == other.player_id)
		{
			var hfx_num = 66;
			
			//Make them glow purple for a little while
			vanda_in_nspecial_timer = other.player_id.nspecial_prevent_jump_time;
			with(other.player_id)
			{
				spawn_hit_fx(other.x, other.y, fx_portal);
			}
			x = other.other_portal.x + (x - other.x);
			y = other.other_portal.y + lerp(32, -32, other.other_portal.is_exit);
			with(other.player_id)
			{
				spawn_hit_fx(other.x, other.y, fx_portal);
			}
			//print("Teleport from " + string(other.is_exit))
			
			
			if(!other.is_exit && !other.other_portal.is_exit)
			{
				vsp *= -1;
			}
			//If we prevent them from using their jump after a teleport, take it away here
			if(other.other_portal.is_exit)
			{
				with(other.player_id)
				{
					{
						if(storage_in_use[other.player - 1] == 0)
						{
							storage_djumps[other.player - 1] = other.max_djumps;
							storage_walljump[other.player - 1] = other.has_walljump;
							storage_airdodge[other.player - 1] = other.has_airdodge;
							storage_in_use[other.player - 1] = nspecial_prevent_jumping * nspecial_prevent_jump_time;
						}
						if(nspecial_prevent_jumping && storage_in_use[other.player - 1] > 0)
						{
							other.max_djumps = 0;
							other.has_walljump = false;
							other.has_airdodge = false;
						}
					}
				}
			}
			else
			{
				if(state != PS_HITSTUN)
				{
					vsp = max(vsp - 6, -10);
				}
			}
			
		}
		//They are not in the portal
		else
		{
			
			
		}
		
		//Decrement the time they cannot jump, if enabled
		if(player == clamp(player,1,4))
		{
			if(other.player_id.storage_in_use[player - 1] > 1 && vanda_in_nspecial_timer == 0)
			{
				other.player_id.storage_in_use[player - 1] -= 1;
			}
			//Give them back their jumps, if they were taken away
			else if(other.player_id.storage_in_use[player - 1] == 1 && vanda_in_nspecial_timer == 0)
			{
				max_djumps = other.player_id.storage_djumps[player - 1];
				has_walljump = other.player_id.storage_walljump[player - 1];
				has_airdodge = other.player_id.storage_airdodge[player - 1];
				other.player_id.storage_in_use[player - 1] = 0;
			}
		}
	}
	
}

state_timer++;
image_index = (floor(state_timer * 0.25) % 4) + (growth * 4);


if(state_timer >= lifetime)
{
	if(player_id.vanda_nspecial_portal_exit != noone)
	{
		player_id.vanda_nspecial_portal_exit = noone;
	}
	
	if(player_id.vanda_nspecial_portal_entrance != noone)
	{
		player_id.vanda_nspecial_portal_entrance = noone;
	}
	with oPlayer
	{
		if(player == clamp(player,1,4))
		{
			if(other.player_id.storage_in_use[player - 1] > 0)
			{
				max_djumps = other.player_id.storage_djumps[player - 1];
				has_walljump = other.player_id.storage_walljump[player - 1];
				has_airdodge = other.player_id.storage_airdodge[player - 1];
				other.player_id.storage_in_use[player - 1] = 0;
			}
		}

		if(vanda_in_nspecial == other.player_id)
		{
			vanda_in_nspecial_timer = 0;
			vanda_which_portal = noone;
			vanda_in_nspecial = noone;
			
			vanda_in_nspecial_portal_entrance = noone;
			vanda_in_nspecial_portal_exit = noone;
		}

		
	}
	instance_destroy();
}