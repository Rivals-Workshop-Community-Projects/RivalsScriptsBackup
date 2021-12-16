//Article updating

state_timer++;

if (done == true) { 
	instance_destroy(); //destroy the article
	player_id.move_cooldown[AT_DSPECIAL] = 1;
	exit;
}

switch (state){
	case 0: //DSpeial poision, Spawn flying through air
	can_be_grounded = true;
	ignores_walls = false;
	depth = -2;
	sprite_index = sprite_get("dspecial_sludgebomb");
	mask_index = sprite_get("dspecial_sludgebomb");
	vsp += .4;
	vsp = clamp(vsp, -7, 10); //Originally (-5, 5)
	if (state_timer < 5){
	vsp = -6;
	hsp = 4 * spr_dir;
	}
	if (((state_timer mod 3) == 0)){ image_index++; }
	
	if (free == false){
		if (place_meeting( x, y+2, asset_get("par_block"))) || (place_meeting( x, y-1, asset_get("par_jumpthrough"))){
		vsp = 0;
		hsp = 0;
		state = 1;
		state_timer = 0;
		image_index = 0;
		sound_play(asset_get("sfx_boss_fireball_land"));
		}
	}
	if (((state_timer mod 12) == 0)){ create_hitbox( AT_DSPECIAL, 1, x, y ); }
	if (state_timer > 100){ done = true; }
	break;
	
	case 1: //DSpecial poision, Landed on ground
	can_be_grounded = true;
	ignores_walls = false;
	player_id.poi_off = false;
	player_id.move_cooldown[AT_DSPECIAL] = 250;
	sprite_index = sprite_get("dspecial_poison_splat");
	if (((state_timer mod 4) == 0)){ image_index++; }
	if (state_timer >= 15){ state = 2; state_timer = 0; }
	if (((state_timer mod 10) == 0)){ create_hitbox( AT_DSPECIAL, 2, x+12 * spr_dir, y+10 ); }
	break;
	
	case 2: //DSpecial poision, Sitting there / spawnning hitboxes
	sprite_index = sprite_get("dspecial_poison_area");
	if (((state_timer mod 4) == 0)){ image_index++; }
	if (((state_timer mod 12) == 0)){ create_hitbox( AT_DSPECIAL, 2, x+12 * spr_dir, y+10 ); }
	
	if (state_timer > 300){ state = 3; state_timer = 0; image_index = 0; }
	
	break;
	
	case 3: //DSpecial poision, dead / dissolve
	can_be_grounded = true;
	ignores_walls = false;
	sprite_index = sprite_get("dspecial_poison_vanish");
	if (((state_timer mod 8) == 0)){ image_index++; }
	if (state_timer > 20){ done = true; }
	break;
	
	case 4: //Up Special Plant blasting away
	can_be_grounded = false;
	if (player_id.tilt == 0){ sprite_index = sprite_get("uspecial_blastup"); }
	if (player_id.tilt == 1){ sprite_index = sprite_get("uspecial_blastfront"); }
	if (((state_timer mod 2) == 0)){ image_index++; }
	if (image_index >= 6){ instance_destroy(); }
	break;
	
	case 5: //Up Special Floor that falls away
	depth = 20;
	sprite_index = sprite_get("uspecial_floor");
	if (state_timer < 50 && player_id.free == false){ instance_destroy(); }
	if (state_timer > 50){ vsp += .1; }
	if (state_timer > 900){ instance_destroy(); }
	break;
	
	case 6: //Down Strong Earthquake left
	//sprite_index = sprite_get("cradily_crouch_box");
	mask_index = sprite_get("cradily_crouch_box");
	
	can_be_grounded = true;
	ignores_walls = false;
	hsp = -16;
	if (state_timer < 5){ vsp = 11; hsp = 0; }
	if (free == false && ((state_timer mod 4) == 0)){ create_hitbox(AT_DSTRONG, 4, x, y-40); }
	if (state_timer > 5 && free == true || state_timer > 5 && (place_meeting( x-5, y, asset_get("par_block")) || (place_meeting( x+5, y, asset_get("par_block"))) )){ instance_destroy(); }
	if (player_id.attack == AT_DSTRONG && player_id.window >= 4){
	player_id.attack = AT_DSTRONG;
	player_id.window = 4;
	player_id.window_timer = 0;
	}
	break;
	
	case 7: //Down Strong Earthquke right
	//sprite_index = sprite_get("cradily_crouch_box");
	mask_index = sprite_get("cradily_crouch_box");
	
	can_be_grounded = true;
	ignores_walls = false;
	hsp = 16;
	if (state_timer < 5){ vsp = 11; hsp = 0; }
	if (free == false && ((state_timer mod 4) == 0)){ create_hitbox(AT_DSTRONG, 4, x, y-40); }
	if (state_timer > 5 && free == true || state_timer > 5 && (place_meeting( x-5, y, asset_get("par_block")) || (place_meeting( x+5, y, asset_get("par_block"))) )){ instance_destroy(); }
	if (player_id.attack == AT_DSTRONG && player_id.window >= 4){
	player_id.attack = AT_DSTRONG;
	player_id.window = 4;
	player_id.window_timer = 0;
	}
	break;
	
	case 8: //Neutral Special sandy winds that get touched
	can_be_grounded = false;
	ignores_walls = true;
	hsp = -10;
	spr_dir = 1;
	tornado_id = player_id.tornado_id;
	sprite_index = sprite_get("nspecial_sandstorm_storm");
	mask_index = sprite_get("nspecial_sandstorm_storm");
	image_alpha = 0;
	if ( x-450 > get_instance_x(asset_get("camera_obj")) || x+450 < get_instance_x(asset_get("camera_obj")) ){ x = x+10; }
	if (place_meeting(x, y, player_id)){ player_id.buffup = true; } else { player_id.buffup = false; }
	//if (free == false && ((state_timer mod 5) == 0)){ create_hitbox(AT_DSTRONG, 4, x, y-19); }
	if (state_timer > 250){ instance_destroy(); }
	break;
	
}