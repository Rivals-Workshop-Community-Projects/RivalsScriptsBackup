
if (Delete == true){
instance_destroy()
}else{
depth =900

var touch = instance_place(x, y, oPlayer);
if touch != noone && touch.state != PS_DEAD{
	var hit = create_hitbox(AT_USTRONG, 3, x, y);
	depth =12
	with(hit){

		var touchY = instance_place(x, y, oPlayer);
		if touchY != noone && touch.state != PS_DEAD{
			with(touchY){
				if( state == PS_AIR_DODGE || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || invincible == true && state != PS_DEAD ){
					take_damage( player, -1, 4 );
					invincible = false
					with(other){
					sound_stop( sound_get("sfx_BS"));
					sound_play( sound_get("sfx_BS"));
					}

				}
			}
		}



	}
}


if(hare == 0){

image_index = 0;

}else{

	if(hare == 1){
	
	image_index = 1;
	
	}else{
	
		if(hare == 2){
		
		image_index = 2;
		
		}else{
			if(hare == 3){
		
			image_index = 3;
		
			}else{
			
			
			}
		
		
		}
	
	}

}




}


