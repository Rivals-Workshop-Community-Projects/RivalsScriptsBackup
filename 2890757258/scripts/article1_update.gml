//	article1_update

//	Make time progress
state_timer++;

//	Spawn
if (state == 0)
{ 
	vsp += -0.05;
	
	if (get_gameplay_time() mod 6 == 0)
	{
		puff_anim += 0.75;
		image_index = puff_anim;
	}
	
	if (state_timer == 57)
	{				
		state 			= 1;
		state_timer 	= 0;
	}
}

//	For whatever reason, state 1 makes a red x appear.
//	How magical.

//	Idle
if (state == 1)
{
	vsp 			= 0;
	
	can_be_hit 		-= 1;
	
	sprite_index  	= sprite_get("stormpuff_idle");
	
	puff_anim = 0;
	image_index = puff_anim;
	
	if (state_timer == 70)
	{				
		state 			= 2;
		state_timer 	= 0;
	}
}

//	Zap Zap Attack
if (state == 2)
{
	sprite_index  	= sprite_get("stormpuff_attack");
	
	can_be_hit 		-= 1;
	
	if (get_gameplay_time() mod 6 == 0)
	{
		puff_anim += 0.74;
		image_index = puff_anim;
	}
	
	if (state_timer > 14)
	{
		var thunder1 = create_hitbox(AT_DSPECIAL, 1, x-46, y+30);		//	Regular
		var thunder2 = create_hitbox(AT_DSPECIAL, 2, x-46, y+94);		//	SweetSpot
		
		var zappy = random_func(0, 2, true);		
		switch(zappy) 
		{
			case 0:
				if (get_gameplay_time() mod 18 == 0)
				{
					sound_play(sound_get("sfx_shantae_stormpuff1"));
				}
			break;
			
			case 1:
				if (get_gameplay_time() mod 18 == 0)
				{
					sound_play(sound_get("sfx_shantae_stormpuff2"));
				}
			break;			
		}		
	}	
	
	if (state_timer == 60)
	{				
		state 			= 1;
		state_timer 	= 0;
		
		zap_count += 1;
	}
	
	if (zap_count == 3)
	{		
		state 			= 3;
		state_timer 	= 0;
		
		sound_stop(sound_get("sfx_shantae_stormpuff1"));
		sound_stop(sound_get("sfx_shantae_stormpuff2"));
	}
}

//	Go away
if (state == 3)
{
    sound_play(asset_get("sfx_absa_singlezap1"), false, noone, 0.75);
	spawn_hit_fx(x-50, y-50, 20);
	
	instance_destroy();
    exit;
}

//	Welp, here we go again
//	Health pool system for the stormpuff
if (can_be_hit <= 0)
{
	can_be_hit = 0;
}

if (can_be_hit == 0)
{	
	var hitbox = instance_place(x, y, pHitBox);
    
	if (hitbox != noone)
	{
		can_be_hit = 10;
		
		var hitOwner = hitbox.player_id;
		
		with (hitbox)
		{
			if (player != other.player)
			{
				if (!has_hit)
				{            
					var hitting = instance_place(x, y, obj_article1);	

					hitting.has_been_hit = true;				
					hitting.hp -= damage;
				}
			}
        }
           
		with (hitOwner)
		{
            if (player != other.player)
			{
				if (!has_hit)
				{														
					sound_play(hitbox.sound_effect);
					
					var vfx = hitbox.hit_effect;
					
					if (vfx == 0)
					{
						vfx = 301;
					}
					
					var fx 		= spawn_hit_fx(other.x - 48*other.spr_dir, other.y - 60, vfx);
					fx.pause 	= 10;				
				}
			}
        }
			
		if (hp <= 0)
        {										
			state 			= 3;
			state_timer 	= 0;			
        }
	}
}

//	Just in case
if ((x < 0 || x > room_width))
{
    state = 3;
	sound_play(asset_get("sfx_ori_bash_use"), false, noone, 0.75);
}