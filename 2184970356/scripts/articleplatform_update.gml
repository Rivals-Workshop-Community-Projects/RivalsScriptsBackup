//article_update	

//Deals Damage / Marks Target for slowdown
with (asset_get("oPlayer")){
	if ((get_instance_x(other.id) > (get_instance_x(id) - 25) && get_instance_x(other.id) < (get_instance_x(id) + 63)) && id != other.player_id && get_instance_y(other.id) < get_instance_y(id)){
		
		if (state_cat != SC_HITSTUN){
			hsp = hsp / 1.1;
		}		
		if (state_cat == SC_HITSTUN){
			hsp = hsp / 1.03;
		}
		
		if (state == PS_DASH){
			state = PS_WALK;
		}
	}
	if ((get_instance_x(other.id) > (get_instance_x(id) - 25) && get_instance_x(other.id) < (get_instance_x(id) + 63)) && id != other.player_id && get_instance_y(other.id) < get_instance_y(id) - 10){
		id.player_debuff = true;
	}
	else {
		id.player_debuff = false;	
	}
}

if (init == 0){
	// Spawns larger Snow which deals damage
	if (dsnowTimer == 20){
		dsnowCheck = true;
		dsnowTimer = 0;
	}

	if (dsnowCheck){
		var Snow instance_create( x - random_func( 0, 50, true), y + 10, "obj_article2");
		Snow.player_id = player_id;
		Snow.player = player;
		dsnowCheck = false;
	}

	if (dsnowTimer < 20){
		dsnowTimer = dsnowTimer + 1;
	}
}	

// Destroys the Cloud upon touching the ground
if (!free){	
	player_id.move_cooldown[AT_FSPECIAL] = 0;
	with (asset_get("oPlayer")){
		id.player_debuff = false;	
	}
	instance_destroy();
	exit;
}

// Destroys if Cloud reaches stage boundaries
if (y < 50 || y > room_height || x > room_width || x < 50 ){
	player_id.move_cooldown[AT_FSPECIAL] = 0;
	with (asset_get("oPlayer")){
		id.player_debuff = false;	
	}
	instance_destroy();
	exit;
}

// Destroys cloud if cloud is out too long / another cloud is summoned / if the cloud has been hit 5 times
if (bubble_age >= 0){
	bubble_age = bubble_age + 1;
}

if (bubble_age >= 9999){
	with (asset_get("oPlayer")){
		id.player_debuff = false;	
	}
	instance_destroy();
	exit;
}

var is_proj = false;
var is_melee = false;
var hitboxType = 0;

// KB Calculation (References Siren's Minion)
var kb_scaling = 0;
var bkb = 0;
var fancynum = 0.12;
var kb_adj = 1.1;
var kb_speed = 0;
var kb_angle = 0;

// Direction the cloud flies in
var got_hit = false;
var dir = noone;
var isBair = false;
if (hit_delay == 0){
	with (pHitBox){
		if (place_meeting(x, y, other)){
			got_hit = true;
			dir = player_id.spr_dir;
			var xHit = player_id.x;
			var yHit = player_id.y;
			
			hitboxType = pHitBox.type;
			
			kb_scaling = pHitBox.kb_scale;
			bkb = pHitBox.kb_value;
			kb_angle = get_hitbox_angle(id);
			
			if (player_id == other.player_id && (player_id.attack == AT_FAIR || player_id.attack == AT_BAIR || player_id.attack == AT_DATTACK || player_id.attack == AT_NAIR || player_id.attack == AT_JAB ||  player_id.attack == AT_FTILT)){
				if (player_id.attack == AT_BAIR){
					isBair = true;
				}
				hitboxType = 3;
			}			
		}
	}
}


if (hitboxType == 1){
	is_melee = true;
	kb_speed = ((bkb + 10 * kb_scaling * fancynum * kb_adj) / 1.2); // calculates knockback speed
}

if (hitboxType == 2){
	is_proj = true;
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
	
	hit_delay = 40;
	if (!hitCheck){
		hitCheck = true;
		hitAge = hitAge + 1;
	}
	spawn_hit_fx(x, y, 301);
}	

// Is Snom Fair or Snom Bair or Snom Dattack	
if (hitboxType == 3 && !hitCheck){
	//Facing Right
	
	if (dir == 1 && !isBair){
		hsp = 8;
		vsp = -3;
	}

	if (dir == 1 && isBair){
		hsp = -8;
		vsp = -3;
	}

	//Facing Left
	
	if (dir == -1 && !isBair){
		hsp = -8;
		vsp = -3;
	}

	if (dir == -1 && isBair){
		hsp = 8;
		vsp = -3;
	}

	hit_delay = 40;
	if (!hitCheck){
		hitCheck = true;
		hitAge = hitAge + 1;
	}
	spawn_hit_fx(x, y, 301);
}	
	
if (is_melee && !hitCheck){

	vsp = lengthdir_y(kb_speed , kb_angle);
	hsp = lengthdir_x(kb_speed , kb_angle); 
	
	melee_delay = 10;
	hit_delay = 30;
	if (!hitCheck){
		sound_play(asset_get("sfx_blow_medium2"));
		hitCheck = true;
		hitAge = hitAge + 1;
	}
	spawn_hit_fx(x, y, 19);
}

if (hsp = 0){	
	hitCheck = false;
}

if (hitAge >= 6 && hit_delay < 5){
	instance_destroy();
	exit;
}

if (platform == 0){

	if (hit_delay > 0){
		hit_delay = hit_delay - 1;
	
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

	if (hit_delay == 0){
		vsp = 0;
		hsp = 0;
	}
		
	// Determines if a player is standing on Bubble
	var standing = false;
	var total_standing = 0;
	
	with (oPlayer){
		if (!free && y < other.y+20 && place_meeting(x, y + 10, other)){
			standing = true;
			total_standing = total_standing + 1;
		}	
	}

	if (standing && hit_delay == 0){
		if (total_standing == 1){
			vsp = 1;
			if (player_id.y < y + 10 && player_id.y > y - 10 && player_id.x < x + 40 && player_id.x > x - 80){
				player_id.onPlat = true;
			}
		}	
		
		if (total_standing >= 2){
			vsp = 2;
		}
	}
}

if (windTimer < 5){
	if (windCheck){
		with (asset_get("obj_article3")){
			if (place_meeting (x, y + 20, other.id)){
				other.vsp = -8;
			}	
		}
		if (vsp == -8){
			windCheck = false;
		}
	}
	if (!windCheck){
		hit_delay = 40;
	}
}

if (!windCheck){
	windTimer = windTimer + 1;
}

if (windTimer >= 605){
	windTimer = 0;
	windCheck = true;
}

if (!instance_exists(asset_get("obj_article3"))){
	instance_check = true;
}

if (instance_check && instance_exists(asset_get("obj_article3"))){
	windCheck = true;
	windTimer = 0;	
	instance_check = false;
}