//Nspecial Axe Ground Break
if (attack == AT_NSPECIAL_2 && !free){
	destroyed = true;
}


//Nspecial Trails
if (attack == AT_NSPECIAL && get_gameplay_time() % 4 == 0){
	spawn_hit_fx(x, y+30, player_id.nspec_trail2);
}

if (attack == AT_NSPECIAL_2 && get_gameplay_time() % 5 == 0){
	spawn_hit_fx(x, y+35, player_id.nspec_trail);
}


//Nspecial Parry Lifetime Reset
if (attack == AT_NSPECIAL && was_parried && spr_dir == 1){
	length += 75;
	hsp += 1;
}

if (attack == AT_NSPECIAL && was_parried && spr_dir == -1){
	length += 75;
	hsp -= 1;
}


//Ice Clone FX
if (attack == AT_FSPECIAL && hitbox_timer == 15 && !has_rune("C")){
	destroyed = true;
}


//Ice Clone Rune C FX
if (attack == AT_FSPECIAL && hitbox_timer == 30 && has_rune("C")){
	destroyed = true;
}


//Prevent Multiple Ice Clones
if (attack == AT_FSPECIAL_2 && player_id.attack == AT_FSPECIAL_2 && player_id.window == 1){
	if (player_id.state != PS_AIR_DODGE && player_id.state != PS_PARRY_START && player_id.state != PS_PARRY && player_id.state != PS_ROLL_BACKWARD && player_id.state != PS_ROLL_FORWARD && player_id.state != PS_TECH_GROUND && player_id.state != PS_TECH_BACKWARD && player_id.state != PS_TECH_FORWARD && player_id.state != PS_WALL_TECH){ 
		destroyed = true;
	}
}


//Ice Clone Despawn
if (attack == AT_FSPECIAL_2 && hitbox_timer == 599 && !has_rune("K")){
	destroyed = true;
}

if (attack == AT_FSPECIAL_2 && hitbox_timer == 899 && has_rune("K")){
	destroyed = true;
}

if (attack == AT_FSPECIAL_2 && player_id.state = PS_RESPAWN){
	destroyed = true;
	player_id.air_time = 0;
}

if (attack == AT_FSPECIAL_2 && player_id.was_parried || attack == AT_FSPECIAL_2 && player_id.state == PS_HITSTUN){
	destroyed = true;
}


//Ice Clone Air Time Counter
if (attack == AT_FSPECIAL_2 && free){
	player_id.air_time += 1;
}

if (attack == AT_FSPECIAL_2 && player_id.air_time == 240){
	destroyed = true;
}

if (attack == AT_FSPECIAL_2 && !free){
	player_id.air_time = 0;
}


//Ice Clone Movement
if (attack == AT_FSPECIAL_2 && player_id.x < x){
	if place_meeting(x, y, pHitBox) && (pHitBox.player_id == player_id) && (pHitBox.attack != AT_FSPECIAL_2){
		hsp = 7;
	}
}

if (attack == AT_FSPECIAL_2 && player_id.x > x){
	if place_meeting(x, y, pHitBox) && (pHitBox.player_id == player_id) && (pHitBox.attack != AT_FSPECIAL_2){
		hsp = -7;
	}
}

if (attack == AT_FSPECIAL_2 && hsp != 0 && !has_rune("C")){
	frict += .02;
}


if (attack == AT_FSPECIAL_2 && frict == .02 && !has_rune("C")){
	sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
	frict += .02;
}

if (attack == AT_FSPECIAL_2 && hsp == 0){
	frict = 0;
}


//Ice Clone Rune C Movement
if (attack == AT_FSPECIAL_2 && hsp != 0 && has_rune("C")){
	frict += .005;
}


if (attack == AT_FSPECIAL_2 && frict == .005 && has_rune("C")){
	sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
	frict += .005;
}


//Ice Clone Rune M Teleport
if (attack == AT_FSPECIAL_2 && player_id.taunt_pressed && has_rune("M")){
	player_id.x = x+10;
	player_id.y = y+10;
	destroyed = true;
	sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
}


//Destroy Projectiles
if (attack == AT_NSPECIAL){
	if place_meeting(x, y, pHitBox){
		destroyed = true;
	}
}

if (attack == AT_FTILT && was_parried){
	destroyed = true;
}


//Dspecial Spike Animation
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (hitbox_timer == 0 || hitbox_timer == 37){
		image_index = 0;
	}
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (hitbox_timer == 3 || hitbox_timer == 34){
		image_index = 1;
	}
}

if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (hitbox_timer == 6){
		image_index = 2;
		hit_priority = 3;
	}
}



//Dspecial Spike Spawning

if (attack == AT_DSPECIAL && free){
	length = 0;
}


if (attack == AT_DSPECIAL && hbox_num == 1 && hitbox_timer == 6 && spr_dir == 1){
	create_hitbox (AT_DSPECIAL, 2, x+40, y-4);
}

if (attack == AT_DSPECIAL && hbox_num == 1 && hitbox_timer == 6 && spr_dir == -1){
	create_hitbox (AT_DSPECIAL, 2, x-40, y-4);
}


if (attack == AT_DSPECIAL && hbox_num == 2 && hitbox_timer == 6 && spr_dir == 1){
	create_hitbox (AT_DSPECIAL, 3, x+40, y-8);
}

if (attack == AT_DSPECIAL && hbox_num == 2 && hitbox_timer == 6 && spr_dir == -1){
	create_hitbox (AT_DSPECIAL, 3, x-40, y-8);
}


//Rune J Spike Spawning
if (attack == AT_DSPECIAL && x < player_id.x && has_rune("J")){
	spr_dir = -1;
}

if (attack == AT_DSPECIAL && x > player_id.x && has_rune("J")){
	spr_dir = 1;
}


//Dspecial Spike Hitbox Lifetime
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_2){
	if (hitbox_timer == 11){
		hit_priority = -1;
	}
}


//Dspecial SFX
if (attack == AT_DSPECIAL && hbox_num != 1 && hitbox_timer == 2){
	sound_play (asset_get("sfx_ice_nspecial_hit_ground"));
}



