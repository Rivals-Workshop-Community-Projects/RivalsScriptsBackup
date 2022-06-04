///
if attack == AT_NSPECIAL && hbox_num == 7 {
     can_hit_self = true	
}


if attack == AT_NSPECIAL{
	
	vsp /= 1.1
	
	if hitbox_timer < 10 {
	hsp /= 1.3
	}
	
	if hitbox_timer > 10 {
		hit_priority = 9
	hsp = 20*spr_dir
	}
	
	if hitbox_timer > 10 && hitbox_timer % 2 == 0 {
		var esp = hit_fx_create( sprite_get( "esp" ), 9 );
			spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 4 - random_func(3, 8, true) , esp )
	}
	
}

if attack == AT_NSPECIAL && hbox_num == 4{
can_hit_self = true	
}
if attack == AT_DSPECIAL && hbox_num == 4{
	
	if hitbox_timer == 79 {
			spawn_hit_fx( x + (10 * spr_dir) , y, 302 )
				sound_play(sound_get("SpaceCutB"));
	}
	
	if  hitbox_timer % 1 == 0 {
		var esp = hit_fx_create( sprite_get( "esp" ), 9 );
			spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 40 - random_func(4, 80, true) , esp )
}
	
}

if attack == AT_DSPECIAL && hbox_num == 3{
	
	if hitbox_timer == 59 {
			destroyed = 1
			sound_play(sound_get("slicel"));
	}
	
	if  hitbox_timer % 2 == 0 {
	var esp = hit_fx_create( sprite_get( "esp" ), 9 );
			spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 40 - random_func(4, 80, true) , esp )
}
	
}

if attack == AT_DSPECIAL && hbox_num == 6{
	
	if hitbox_timer == 55 {
			destroyed = 1
			spawn_hit_fx( x , y, 302 )
			sound_play(sound_get("SpaceCut"));
	}
	

	var esp = hit_fx_create( sprite_get( "esp" ), 9 );
			spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 40 - random_func(4, 80, true) , esp )

	
}


if attack == AT_DSPECIAL && hbox_num == 5{
	
	if hitbox_timer == 1 {
			spr_dir *= -1
			hsp *= -1
	}
	
	if hitbox_timer == 55 {
			destroyed = 1
			sound_play(sound_get("slicel"));
	}
	
	if  hitbox_timer % 2 == 0 {
	var esp = hit_fx_create( sprite_get( "esp" ), 9 );
			spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 40 - random_func(4, 80, true) , esp )
}
	
}



if attack == AT_DSPECIAL && hbox_num == 7{

	var ai4 = hit_fx_create( sprite_get( "ai4" ), 9 );
			spawn_hit_fx( x , y, ai4 )
			
    
    
    hsp = (player_id.x - x) / 3
   vsp = (player_id.y - 50 - y) / 3
   
   
   if hitbox_timer > 20 {
   		if player_id.y - y < 0 {
		y -= 20
	} else {
	    y += 20
	} 
   		if player_id.x - x < 0 {
		x -= 20
	} else {
	    x += 20
	} 	
   }
   
	
}