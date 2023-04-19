//The Chair

if(!free){
	hsp = 0;
	vsp = 0;
}

if(free){
	vsp += eust_chair_grav;
	if (vsp > eust_chair_maxf){vsp = eust_chair_maxf;}
}

player_id.eust_myChairX = x;
player_id.eust_myChairY = y;
player_id.eust_myChairFace = spr_dir;

if(eust_damageCD > 0){
	eust_chairStun = floor(eust_currHealth / 20) + 1;
	eust_damageCD--;
	if(eust_damageCD % 3 == 0){
		eust_chairShake *= -1;
		x += eust_chairShake * eust_chairStun;
	}
}

if(eust_currHealth >= eust_defeatHealth){
	eust_chairTickdown++;
	if(eust_chairTickdown > player_id.eust_freezeFrame){eust_chairState = 2;}
}

if ((y < view_get_yview() - 200) || (x < view_get_xview() - 200) || (y > view_get_yview() + view_get_hview() + 200) || (x > view_get_xview() + view_get_wview() + 200)) {
	eust_chairState = 1;
}

if (player_id.eust_mychairState == 1){
	player_id.eust_mychairState = 0;
	eust_chairState = 1;
}

if (player_id.eust_mychairState == 5){
	player_id.eust_mychairState = 0;
	eust_chairState = 5;
}

eust_chairDespawn--;
if(eust_chairDespawn <= 0){
	eust_chairState = 1;
	player_id.eust_chairWCD = false;
}

if(eust_chairState == 0){	//idle
	image_index = 0;

	with(pHitBox){
		if(get_player_team(player) != get_player_team(other.player) && place_meeting(x,y,other.id) && other.eust_damageCD == 0 && damage > 0){
			spawn_hit_fx( other.x - 10, other.y - 30, 301 );
			sound_play(sound_effect);
			other.eust_currHealth += damage;
			other.eust_damageCD = 15 + hitpause;
			var chairHPause = hitpause;
			var chairHID = player_id;
			//with(oPlayer){
			//	chairHID.hitpause = true;
			//	chairHID.hitstop = chairHPause;
			//	chairHID.hitstop_full = chairHPause;
			//	chairHID.old_vsp = 0;
			//	chairHID.old_hsp = 0;
			//}

			if(type == 2 && !transcendent){destroyed = true;}
		}
	}
}

if(eust_chairState == 1){	//recalled
	image_index = 2 - floor(eust_recallTime/5);
	if(eust_recallTime > 0){
		eust_recallTime--;
	}
	if(eust_recallTime == 9){sound_play(sound_get("teleport_in"));}
	if(eust_recallTime == 0){
		if (!player_id.eust_chairWCD){eust_chairState = 3;}
		else {eust_chairState = 5;}
	}	
}

if(eust_chairState == 2){	//breaking
	spawn_hit_fx(x - 10, y - 30, 260);
	var chairDead = spawn_hit_fx(x, y, dspec_boom);
	chairDead.desired_length = 33;
	chairDead.depth = -6;
	player_id.move_cooldown[AT_DSPECIAL] = 10*60;
	shake_camera(15,15);
	sound_play(sound_get("chairBoom"));
	eust_chairState = 3;
}

if(eust_chairState == 3){	//delete
	player_id.eust_chairWarp = false;
	player_id.eust_chairWCD = false;
	instance_destroy();
        exit;
}

if(eust_chairState == 4){	//recall last health - UNUSED
	eust_currHealth = player_id.eust_chairHBar;
	eust_chairState = 0;
}

if(eust_chairState == 5){	//delete but do not clear out Warp variable
	instance_destroy();
        exit;
}

player_id.eust_chairHBar = eust_currHealth;



