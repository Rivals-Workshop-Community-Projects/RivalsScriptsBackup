// called when the character gets hit

//Interupt Fspecial when hit like the mafias in Hat of Time
if (attack == AT_FSPECIAL){
	attack_end();
	state = PS_HITSTUN_LAND;
}
