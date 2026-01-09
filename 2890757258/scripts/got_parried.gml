//	got_parried.gml

//	Reset NSPECIAL's projectile
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2) 
{
    //	reset the projectile's lifetime
    
	my_hitboxID.hitbox_timer 	= 0;
	my_hitboxID.hsp 			*= 1.5;
    my_hitboxID.length 			/= 1.5;

	//	Triple Fireball reflection
	var parried_hbox 			= my_hitboxID;
	var parried_player 			= hit_player_obj;

	with (pHitBox)
	{
		if ("fireball_group" in self && player_id == other 
		&& fireball_group == parried_hbox.fireball_group && self != parried_hbox)
		{ 
			player 			= parried_player.player; 	// set new owner
			hitbox_timer 	= 0;
			destroyed 		= false; 					// a failsafe
			hsp 			*= -1.5;
			length 			/= 1.5;
			draw_xscale		= -draw_xscale
			hit_flipper		= 5;
		}
	}
}

//	Goodbye Mister Cloud Nine
if (instance_exists(stormy_puff))
{	
	spawn_hit_fx(stormy_puff.x-50, stormy_puff.y-50, 20);
	instance_destroy(stormy_puff);
}