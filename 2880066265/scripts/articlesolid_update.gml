//The Door

hsp = 0;
vsp = 0;

if(eust_doorDamCD > 0 && eust_doorState <= 2){
	eust_doorDamCD--;
	eust_doorState = 2;
}

if(eust_doorHealth >= eust_doorDeath){
	eust_doorTickdown++;
	if(eust_doorTickdown > player_id.eust_freezeFrame){
		eust_doorState = 4;
	}
}

if ((y < view_get_yview() - 200) || (x < view_get_xview() - 200) || (y > view_get_yview() + view_get_hview() + 200) || (x > view_get_xview() + view_get_wview() + 200)) {
	eust_doorState = 3;
}

if (player_id.eust_mydoorState == 1){
	player_id.eust_mydoorState = 0;
	eust_doorState = 3;
}

eust_doorDespawn--;
if(eust_doorDespawn <= 0){
	eust_doorState = 3;
}

if(eust_doorState == 0){	//spawning
	image_index = floor(eust_doorReTime/5);
	eust_doorReTime++;
	if(eust_doorReTime == 10){
		eust_doorState = 1;
	}
}

if(eust_doorState == 1){	//idle
	image_index = 2;
	mask_index = sprite_get("fspecial_door_hurt"); //recreating door solid

	with(pHitBox){
		if(place_meeting(x,y,other.id) && other.eust_doorDamCD == 0 && damage > 0){
			spawn_hit_fx( other.x, other.y - 50, 301 );
			sound_play(sound_effect);
			other.eust_doorHealth += damage;
			other.eust_doorDamCD = 15 + hitpause;
			var doorHPause = hitpause;
			var doorHID = player_id;
			//with(oPlayer){
			//		doorHID.hitpause = true;
			//		doorHID.hitstop = doorHPause;
			//		doorHID.hitstop_full = doorHPause;
			//	}
			if (other.eust_doorHealth >= other.eust_doorDeath){
				other.image_index = 4;
			}

			if(type == 2 && !transcendent){destroyed = true;}
			eust_doorState = 2;
		}
	}
}

if(eust_doorState == 2){	//damaged
	image_index = 2 - ceil(eust_doorDamCD/8);
	mask_index = sprite_get("fspecial_door_hurt");
	if(eust_doorDamCD = 0){
		eust_doorState = 1;
	}
}

if(eust_doorState == 3){	//recalled
	image_index = 4 - floor(eust_doorReTime/5);
	mask_index = sprite_get("empty_hurt");
	if(has_rune("M")){eust_doorState = 4;}			// Door explodes if Rune M is active
	if(eust_doorReTime > 0){
		eust_doorReTime--;
	}
	if(eust_doorReTime == 9){sound_play(sound_get("doorDespawn"));}
	if(eust_doorReTime == 0){
		eust_doorState = 5;
	}
}

if(eust_doorState == 4){	//broken
	sound_play(sound_get("doorBoom"));
	shake_camera(10,10);

	with(player_id){
		spawn_hit_fx(other.x, other.y - 20, 260);
		var doorDead = spawn_hit_fx(other.x, other.y, other.fspec_boom);
		doorDead.desired_length = 25;
		doorDead.depth = -6;
		// RUNE M : CREATE HITBOX EXPLOSION VARIABLES
		if(has_rune("M")){eust_runeMX = other.x; eust_runeMY = other.y; eust_runeMBoom = true;}
		// END RUNE
	}
	image_index = 4;
	eust_doorState = 5;
}

if(eust_doorState == 5){	//delete
	mask_index = sprite_get("empty_hurt");
	instance_destroy();
	exit;
}

