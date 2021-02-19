//article update

if (regularTimer < 60){
	regularTimer = regularTimer + 1; // initial wait time before it does anything
}

if (regularTimer == 60){
	attackTrue = true;
}

// Direction the sub flies in
var got_hit = false;
var dir = noone;
var is_proj = false;
var is_melee = false;
var hitboxType = 0;

// KB calculation
// it's just 3:44am and I just want to get this done and over with
// it's 5:20 and I feel smart but this is probably not a very smart solution. but it works...
var kb_scaling = 0;
var bkb = 0;
var fancynum = 0.12;
var kb_adj = 1.1;
var kb_speed = 0;

var kb_angle = 0;

// Hitcheck
if (!hitCheck){
	with (pHitBox){
		if (place_meeting(x, y, other)){
			if (player_id != other.player_id){
				got_hit = true;
				dir = player_id.spr_dir
				var xHit = player_id.x;
				var yHit = player_id.y;
				var damage = pHitBox.damage;
				hitboxType = pHitBox.type;

				kb_scaling = pHitBox.kb_scale;
				bkb = pHitBox.kb_value;
				//kb_angle = pHitBox.kb_angle;
				kb_angle = get_hitbox_angle(id);
			}			
		}
	}
}

if (hitboxType == 1){
	is_melee = true;
	kb_speed = ((bkb + 20 * kb_scaling * fancynum * kb_adj) / 1.2); // calculates knockback speed
}

if (hitboxType == 2){
	is_proj = true;
}

if (got_hit && (trail || follow)){
//	player_id.hitpause = true;
//	player_id.hitstop = pHitBox.hitpause;
	player_id.state = PS_HITSTUN;
	player_id.move_cooldown[AT_NSPECIAL] = 60;
}

if (got_hit){
	attackTrue = false;
	attackTimer = 0;
	regularTimer = 0;
	hitstop = pHitBox.hitpause;
	trailVertical = false;
	follow = false;
	trail = false;
}

if (is_proj && !hitCheck){

	//Facing Right
	if (dir == 1 && xHit > x && yHit > y){
		hsp = -7;
		vsp = -3;
	}
	
	if (dir == 1 && xHit < x && yHit < y){
		hsp = 7;
		vsp = 3;
	}

	if (dir == 1 && xHit > x && yHit < y){
		hsp = -7;
		vsp = 3;
	}
	
	if (dir == 1 && xHit < x && yHit > y){
		hsp = 7;
		vsp = -3;
	}
	
	// Facing Left
	if (dir == -1 && xHit > x && yHit > y){
		hsp = -7;
		vsp = -3;
	}
	
	if (dir == -1 && xHit < x && yHit < y){
		hsp = 7;
		vsp = 3;
	}

	if (dir == -1 && xHit > x && yHit < y){
		hsp = -7;
		vsp = 3;
	}
	
	if (dir == -1 && xHit < x && yHit > y){
		hsp = 7;
		vsp = -3;
	}
	
	sub_delay = 30;
	if (!hitCheck){
		sound_play(asset_get("sfx_blow_medium2"));
		hitCheck = true;
		if (health > 0){
			if (init == 1){
				health = health - floor(damage / 0.8);
			}
			if (init == 2){
				health = health - floor(damage / 1.0);
			}
			if (init == 3){
				health = health - floor(damage / 1.2);
			}
		}
	}
	spawn_hit_fx(x, y, 301);
}

if (is_melee && !hitCheck){

	vsp = lengthdir_y(kb_speed , kb_angle);

//	if (dir == -1){
//		kb_speed = kb_speed * -1;
//	}

	hsp = lengthdir_x(kb_speed , kb_angle); 
	
	melee_delay = 10;
	sub_delay = 30;
	if (!hitCheck){
		sound_play(asset_get("sfx_blow_medium2"));
		hitCheck = true;
		if (health > 0){
			if (init == 1){
				health = health - floor(damage / 0.8);
			}
			if (init == 2){
				health = health - floor(damage / 1.0);
			}
			if (init == 3){
				health = health - floor(damage / 1.2);
			}
		}
	}
	spawn_hit_fx(x, y, 301);
}

if (melee_delay > 0){
	melee_delay = melee_delay - 1;
}

if (sub_delay > 0 && hitstop == 0){
	sub_delay = sub_delay - 1;

	if (hsp > 0){
		hsp = hsp - .2;
	}

	if (hsp < 0){
		hsp = hsp + .2;
	}	
	
	if (vsp > 0){
		vsp = vsp - .2;
	}

	if (vsp < 0){
		vsp = vsp + .2;
	}	
}

if (health <= 0){
	player_id.mcharge = 1;
	player_id.mchargeTimer = 600;
	instance_destroy();
	exit;
}

// Destroys if Minion reaches stage boundaries
if (y < - 100 || y > room_height || x > room_width || x < 50 ){
	instance_destroy();
	exit;
}

if (y < 125 && sub_delay == 0){
	sub_delay = 30;
	if (player_id.x > x){
		hsp = 7;
	}
	else{
		hsp = -7;
	}
	vsp = 5;
}

if ((x > room_width - 200 || x < 200) && sub_delay == 0){
	sub_delay = 30;
	if (x > room_width - 200){
		hsp = -9;
	}
	else{
		hsp = 9;
	}
}

// Destroys Minion if Minion is out too long / another Minion is summoned / if the Minion has been hit 5 times
if (minion_age >= 0){
	minion_age = minion_age + 1;
}

if (minion_age >= 28800){
	instance_destroy();
	exit;
}

if (melee_delay == 5){
//	vsp = 0;
//	hsp = 0;
//	trailVertical = false;
	hitCheck = false;
}

if (sub_delay == 0){
	vsp = 0;
	hsp = 0;
	trailVertical = false;
	hitCheck = false;
}

if (attackTrue){
	attackTimer = attackTimer + 1;
}

if (init == 1){ // if Mini Minion

	sprite_index = sprite_get("MinionMini");
	mask_index = sprite_get("MinionMini");

}

if (init == 2){ // if Regular Minion

	sprite_index = sprite_get("MinionMedium");
	mask_index = sprite_get("MinionMedium");


}

if (init == 3){ // if Large Minion

	sprite_index = sprite_get("MinionLarge");
	mask_index = sprite_get("MinionLarge");


}

if (init == 4){ // if Large Minion and have Rune (This is for the wack shit

	sprite_index = sprite_get("MinionLarge");
	mask_index = sprite_get("MinionLarge");

}

if (!got_hit){
	if (trail && abs(x - player_id.x) >= 70){
		sub_delay = 5;
		if (player_id.x >= x){
			hsp = 5;
		}
		if (player_id.x <= x){
			hsp = -5;
		}	

		trail = false;
	}

	if (trailVertical){
		if (y < player_id.y - 200){
			vsp = 6;
		}
		if (y > player_id.y + 100){
			vsp = -6;
		}
		
		if (y < player_id.y - 150 && y > player_id.y - 200){
			vsp = 3;
		}
		if (y > player_id.y - 100 && y < player_id.y + 100){
			vsp = -3;
		}
		
	}

	if (follow){
		sub_delay = 30;
		if (player_id.spr_dir = 1){
			hsp = 8;
		}
		if (player_id.spr_dir = -1){
			hsp = -8;
		}
		follow = false
	}
}