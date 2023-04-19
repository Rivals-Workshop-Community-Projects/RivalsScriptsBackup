//	got_parried.gml

//	Reset NSPECIAL's projectile
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2) 
{
    //	reset the projectile's lifetime
    
	my_hitboxID.hitbox_timer 	= 0;
	my_hitboxID.hsp 			*= 1.2;
    my_hitboxID.length 			/= 1.5;
}

//	Goodbye Mister Cloud Nine
if (instance_exists(stormy_puff))
{	
	spawn_hit_fx(stormy_puff.x-50, stormy_puff.y-50, 20);
	instance_destroy(stormy_puff);
}