//article update

// Snowflakes
if (coat == 0){
	//Deals Damage / Marks Target for slowdown
	with (asset_get("oPlayer")){
		if (place_meeting (x, y + 20, other.id) && id != other.player_id){
			take_damage(player, -1, 1);
			instance_destroy();
			exit;
		}
	}	
	
	//Destroys snowflake during these scenarios
	if (!free || hit_wall || damage_check){	
		instance_destroy();
		exit;
	}
	
	// Same code as platform cloud
	// Destroys if Cloud reaches stage boundaries
	if (y < 50 || y > room_height || x > room_width || x < 50 ){
		instance_destroy();
		exit;
	}
}


// Mirror Coat

if (coat == 1){
	var Snom = player_id;
	var Snom_player = player;
	
	sprite_index = sprite_get("empty_sprite");
	if (init == 0){ //establishes Mirror Coat code
		sprite_index = sprite_get("mirrorCoat");
		image_alpha = 0.01;
		mask_index  = sprite_get("mirrorCoat");
		ignores_walls = true;
	}
	
	x = player_id.x;
	y = player_id.y;
	
	// Destroys coat after X amount of time
	if (coat_age >= 0){
		coat_age = coat_age + 1;
	}

	if (coat_age >= coat_initial || player_id.state == PS_RESPAWN || player_id.state == PS_SPAWN){
		instance_destroy();
		exit;
	}

    var projectile = instance_place( x, y, asset_get("pHitBox"));

	if (projectile != noone) {
		with (projectile) {
			// Kragg Pillar
			if (player_id.url == CH_KRAGG && player_id.attack == AT_USPECIAL){
				break;
			}
			// Kragg Rock
			if (player_id.url == CH_KRAGG && player_id.attack == AT_NSPECIAL){
//				projectile.player_id = Snom;
//				projectile.player = Snom_player;
//				projectile.length = 90;
				hsp = -hsp * 1.3;
				vsp = -vsp * 1.3;
				break;
			}
			if (type == 2 && does_not_reflect != true && projectile.player_id != Snom && projectile.vsp > -8) {
				projectile.player_id = Snom;
				projectile.player = Snom_player;
				projectile.length = 90;
				hsp = -hsp * 1.3;
				vsp = -vsp * 1.3;
				break;
			}
		}
	}
}


