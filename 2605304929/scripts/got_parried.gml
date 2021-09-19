// got_parried.gml

if(attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_DATTACK || attack == AT_FSPECIAL || attack == AT_USPECIAL){
	if(free) {set_state(PS_PRATFALL);}
	if(!free) {
		//vsp = -1;
		set_state(PS_PRATLAND);
	}
		
}