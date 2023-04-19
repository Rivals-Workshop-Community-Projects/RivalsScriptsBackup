if(eust_isSmashing > 0 && eust_isSmashing < 4){sprite_index = sprite_get( "empty_hurt" );}
if(eust_isSmashing >= 5 && eust_isSmashing <= 7){sprite_index = sprite_get( "empty_hurt" );}

if(eust_inChair){	
	sprite_index = sprite_get( "dspecial_sit" );
}

else{	//need this to separate if(!eust_inChair)
	switch (state){
		case PS_IDLE:
			sprite_index = sprite_get( "idlelong" );
			if (state_timer < 180) {EuC = 0;}
			if (state_timer > EuFrame[EuC]) {EuC = EuC+1;}
			if (state_timer > 1116) {set_state (PS_IDLE);}
			image_index = EuAnim[EuC];
			break;	
		case PS_RESPAWN:
			sprite_index = sprite_get( "idlelong" );
			image_index = 3;
			break;
		case PS_SPAWN:
			image_index = 0;
			break;
		case PS_TUMBLE:
			image_index = floor((state_timer/4)%4);
	}
}