//Destroy Hitboxes On Death
if (player_id.state == PS_RESPAWN){
	destroyed = true;
}


//Special Cooldowns
if (!has_rune("L")){
	if (attack == AT_NSPECIAL && hitbox_timer < 179){
		player_id.move_cooldown[AT_NSPECIAL] = 300;
	}
}

if (!has_rune("L")){
	if (attack == AT_FSPECIAL && hitbox_timer < 84){
		player_id.move_cooldown[AT_FSPECIAL] = 300;
	}
}

if (!has_rune("L")){
	if (attack == AT_DSPECIAL && hitbox_timer < 29){
		player_id.move_cooldown[AT_DSPECIAL] = 300;
	}
}


if (has_rune("L")){
	if (attack == AT_NSPECIAL && hitbox_timer < 179){
		player_id.move_cooldown[AT_NSPECIAL] = 180;
	}
}

if (has_rune("L")){
	if (attack == AT_FSPECIAL && hitbox_timer < 84){
		player_id.move_cooldown[AT_FSPECIAL] = 180;
	}
}

if (has_rune("L")){
	if (attack == AT_DSPECIAL && hitbox_timer < 29){
		player_id.move_cooldown[AT_DSPECIAL] = 180;
	}
}


//Prevent Duplicate Turtles
if (!has_rune("H")){
	if (attack == AT_NSPECIAL && hitbox_timer < 179){
		player_id.move_cooldown[AT_USTRONG] = 2;
		player_id.move_cooldown[AT_TAUNT] = 2;
	}
}

if (!has_rune("H")){
	if (attack == AT_FSPECIAL && hitbox_timer < 84){
		player_id.move_cooldown[AT_DTILT] = 2;
		player_id.move_cooldown[AT_FSTRONG] = 2;
		player_id.move_cooldown[AT_TAUNT] = 2;
	}
}

if (!has_rune("H")){
	if (attack == AT_DSPECIAL && hitbox_timer < 29){
		player_id.move_cooldown[AT_UTILT] = 2;
		player_id.move_cooldown[AT_DSTRONG] = 2;
		player_id.move_cooldown[AT_TAUNT] = 2;
	}
}


//Destroy Stars
if (attack == AT_DATTACK){
	if (hsp == 0){
		destroyed = true;
	}
}


//Destroy Projectiles
if (attack == AT_FSPECIAL && !free){
	destroyed = true;
}

if (attack == AT_DSPECIAL && !free){
	destroyed = true;
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

