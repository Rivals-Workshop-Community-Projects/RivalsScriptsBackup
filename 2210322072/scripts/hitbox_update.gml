///

if attack == AT_DSPECIAL && hbox_num > 1 {
	hsp = (player_id.soulx - player_id.x) / 20
	vsp = (player_id.souly - player_id.y) / 20
}


if attack == AT_NSPECIAL && hbox_num == 2{
	
	if  hitbox_timer % 4 == 0 {
		var esp1 = hit_fx_create( sprite_get( "esp1" ), 14 );
			spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 10 - random_func(3, 50, true) , esp1 )
	}
	
		if  hitbox_timer % 4 == 2 {
		var esp2 = hit_fx_create( sprite_get( "esp2" ), 14 );
			spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 10 - random_func(3, 50, true) , esp2 )
	}
}

