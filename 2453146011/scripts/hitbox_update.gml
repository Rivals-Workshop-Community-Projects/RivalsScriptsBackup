// hitbox update

// Upair hsp
if(attack == AT_UAIR && hbox_num == 1)
{
	if(hitbox_timer == 1)
	{
		hsp = player_id.hsp;
		vsp += player_id.vsp/4;
		with(player_id) sound_play(sound_get("monarch_wooshspin"))
	}
	
	if(hitbox_timer == 17) with(player_id) sound_play(sound_get("monarch_smallblink1"),false,false,.4)
	
	if(get_gameplay_time() % 3 == 0) with(player_id) butterflyFX(50,50,1,other.x-x,other.y-y+10,false);
}

#define butterflyFX(_xrange,_yrange,_density,_xoff,_yoff,_infront)
{
	// Save original direction
	var dir_storage = spr_dir;
	var i = 0;
	
	// Define furthest left top point
	_xoff -= _xrange/2;
	_yoff -= _yrange/2;
	
	// Cap density
	_density = min(_density,200);
	
	// Loop for as many bugs need spawning
	repeat(_density)
	{
		// Set spr dir to random direction
		spr_dir = random_func(i % 24,2,true) == 0 ? 1 : -1;
		
		// Funky math
		var part = spawn_hit_fx( x + _xoff + random_func_2(i,_xrange,true), y + _yoff + random_func_2(i+1,_yrange,true), butterflies[random_func_2(i+2,7,true)+1]);
		if(_infront) part.depth = -100;
		
		// Increment counter
		i++;
	}
	
	spr_dir = dir_storage;
}