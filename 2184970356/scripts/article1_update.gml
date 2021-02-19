//article update


// Direction the sub flies in
var got_hit = false;
var dir = noone;

// If the opponent hits this they get "stunned"
with (pHitBox){
	if (place_meeting(x, y, other)){
		got_hit = true;
		dir = player_id.spr_dir
		if (player_id != other.player_id){
			player_id.hsp = 0;
			player_id.vsp = 0;
			player_id.state = PS_PRATFALL;
			player_id.hitpause = true;
			if (player_id.free || pHitBox.type == 2){
				player_id.hitstop = 30;
			}
			if (!player_id.free && pHitBox.type != 2){
				player_id.hitstop = 60;
			}
			player_id.can_attack = false;
		}
	}
}

if (got_hit && !hitCheck){
	
	//Facing Left	
	if (dir == 1){
			
		hsp = 8;
		vsp = -7;
	}
		
	//Facing Right
	if (dir == -1){
		
		hsp = -8;
		vsp = -7;	
	}
	sub_delay = 40;
	if (!hitCheck){
		hitCheck = true;
	}
	spawn_hit_fx(x, y, 14);
	sound_play(asset_get("sfx_blow_weak2"));
}

if (sub_delay > 0){
	sub_delay = sub_delay - 1;

	if (hsp > 0){
		hsp = hsp - .2;
	}

	if (hsp < 0){
		hsp = hsp + .2;
	}	

	vsp = vsp + .5;	
}

if (sub_delay == 25){	

	player_id.invincible = true;
	player_id.invince_time = 80;

	spawn_hit_fx(player_id.x, player_id.y, 14);

	player_id.y = y + 50;
	if (hsp > 0){ // checks if moving left
		if (player_id.right_down){
			player_id.x = x;
		}
		else{
			player_id.x = x - 150;
		}
	}
	if (hsp < 0){ // checks if moving right
		if (player_id.left_down){
			player_id.x = x;
		}
		else{
			player_id.x = x + 150;
		}
	}
	spawn_hit_fx(player_id.x, player_id.y, 14);
}

if (sub_delay == 10 && hitCheck){
	player_id.Substitute = noone;
	instance_destroy();
	exit;
}


// Destroys cloud if cloud is out too long / another cloud is summoned / if the cloud has been hit 5 times
if (sub_age >= 0){
	sub_age = sub_age + 1;
}

if (sub_age >= 90 || player_id.state == PS_RESPAWN || player_id.state == PS_SPAWN){
	spawn_hit_fx(x, y, 14);
	player_id.Substitute = noone;
	instance_destroy();
	exit;
}

// Same code as article platform update but instead makes the Substitute bounce in the icy wind
if (windTimer == 0){
	if (windCheck){
		with (asset_get("obj_article3")){
			if (place_meeting (x, y + 20, other.id)){
				other.vsp = -1;
			}	
		}
		if (vsp == -1){
			windCheck = false;
			wind_delay = 30;
		}
	}
}

if (!windCheck){
	windTimer = windTimer + 1;
}

if (windTimer == 31){
	with (asset_get("obj_article3")){
		if (place_meeting (x, y + 20, other.id)){
			other.vsp = 8;
		}	
	}
	wind_delay = 60;
}

if (windTimer == 60){
	windCheck = true;
	windTimer = 0;
}

if (wind_delay > 0){
	wind_delay = wind_delay - 1;

	if (hsp > 0){
		hsp = hsp - .2;
	}

	if (hsp < 0){
		hsp = hsp + .2;
	}	

	if (vsp > 0 || wind_delay < 60 && vsp != -0.8){
		vsp = vsp - .3;
	}	

	if (vsp < 0 || !windCheck && wind_delay > 60){
		vsp = vsp + .1;
	}
}

// Base Gravity
if (gravCheck && free && sub_delay == 0 && wind_delay == 0 && windTimer == 0){
	vsp = 1;
	gravTimer = 60;
	gravCheck = false;
}

if (gravTimer > 0){
	gravTimer = gravTimer - 1;

	if (vsp > 0){
		vsp = vsp + .3;
	}	
}

if (gravTimer == 0){
	gravCheck = true;
}