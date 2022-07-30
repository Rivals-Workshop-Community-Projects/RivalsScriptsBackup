//Destroy Stars
if (attack == AT_DATTACK){
	if (hsp == 0){
		destroyed = true;
	}
}


//Destroy Projectiles
if (attack == AT_FSPECIAL){
	destroyed = !free;
}

if (attack == AT_DSPECIAL){
	destroyed = !free;
}


//Neutral Special Multi Hit
if (attack == AT_NSPECIAL){
	for (var p = 0; p < array_length(can_hit); p++){
		if (hitbox_timer % 12 == 0){
			can_hit[p] = true; 
		}
	}
}


//Neutral Special Destroy if Bashed
if (attack == AT_NSPECIAL){
	if (hsp == 0){
		destroyed = true;
	}
}

