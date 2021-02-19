//flying creatures
time = time + 1
image_index = time * 0.2;
hsp = movespeed;

if ( depth = 33 ){
	image_alpha = 0.6;
}

if ( depth = 34 ){
	movespeed = 1.5;
}

if ( x - 128/2 > room_width){
	x = 0 - 144/2;
	y = original_y + (random_func( 0, 64, true ) - 32);
	if ( depth = 34 ){
		movespeed = 1.5;
		sprite_index = sprite_get( "dragon" );
	}
	else{
		creature = 1 + random_func( 1, 3, true );
		if ( creature = 1 ){
			sprite_index = sprite_get("hawk");
			movespeed = 1;
		} 
		else{
			if ( creature = 2 ){
				sprite_index = sprite_get("gorilla");
				movespeed = 1.75;
			}	
			else{
				if ( creature = 3 ){
					sprite_index = sprite_get("falcon");
					movespeed = .75;
				}
			}
		}
	}
}