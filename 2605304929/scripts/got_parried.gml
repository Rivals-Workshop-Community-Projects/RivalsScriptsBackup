// got_parried.gml

if(attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_USPECIAL){
	if(free) {set_state(PS_PRATFALL);}
	if(!free) {
		//vsp = -1;
		set_state(PS_PRATLAND);
	}
		
}

// Stop Dattack momentum
if(attack == AT_DATTACK){
	hsp=0;
	vsp=0;
}

//Nspecial no parry stun like Clairen grab
if(my_hitboxID.attack == AT_NSPECIAL){
    parry_lag = 0;
}