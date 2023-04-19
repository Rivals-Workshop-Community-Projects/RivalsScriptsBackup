//Nspecial Item Hitboxes
if (attack == AT_EXTRA_1 || attack == AT_EXTRA_2 || attack == AT_TAUNT_2 || attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_AIR){
	destroyed = !free;
}

if (attack == AT_EXTRA_1 || attack == AT_EXTRA_2 || attack == AT_TAUNT_2 || attack == AT_NSPECIAL_2 || attack == AT_NSPECIAL_AIR){
	if (hsp == 0){
		destroyed = true;
	}
}


//Nspecial Milk Multihit
if (attack == AT_EXTRA_3){
	for (var p = 0; p < array_length(can_hit); p++){
		if (hitbox_timer % 2 == 0){
			can_hit[p] = true; 
		}
	}
}

//Nspecial Bee Multihit
if (attack == AT_TAUNT_2){
	for (var p = 0; p < array_length(can_hit); p++){
		if (hitbox_timer % 9 == 0){
			can_hit[p] = true; 
		}
	}
}

