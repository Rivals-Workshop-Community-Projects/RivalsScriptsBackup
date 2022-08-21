// got_parried.gml
/*called when your hitbox is parried. Use hit_player_obj to reference the player 
object who parried your hitbox. Use hit_player to reference which player parried 
your hitbox (player 1, player 2, etc). Use my_hitboxID to reference the hitbox 
that was parried.*/
//my_hitboxID
// hit_player_obj
if("my_hitboxID" not in self){exit};

if(attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_AIR){
	if(free) {set_state(PS_PRATFALL);parry_lag = 40;}
	if(!free) {
		//vsp = -1;
		set_state(PS_PRATLAND);
		parry_lag = 40;
	}
		
}

// Stop Dattack momentum
if(attack == AT_DATTACK){
	hsp=0;
	vsp=0;
}

//Nspecial no parry stun like Clairen grab
if(my_hitboxID.attack == AT_NSPECIAL && !free){
    parry_lag = 0;
}

// Cleanse Mark on Parry
if(hit_player_obj.status_effect_water == true)
{
	hit_player_obj.status_effect_water = false;
}