//Article updating

state_timer++;

if (done == true) { 
	instance_destroy(); //destroy the article
	player_id.move_cooldown[AT_DSPECIAL] = 1;
	exit;
}

switch (state){
	case 0: //Spawned, flying through air
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
	
	case 1: //Landed on ground
	player_id.move_cooldown[AT_DSPECIAL] = 250;
	sprite_index = sprite_get("dspecial_poison_splat");
	if (((state_timer mod 4) == 0)){ image_index++; }
	if (state_timer >= 15){ state = 2; state_timer = 0; }
	if (((state_timer mod 10) == 0)){ create_hitbox( AT_DSPECIAL, 2, x+12 * spr_dir, y+10 ); }
	break;
	
	case 2: //Sitting there, spawnning hitboxes
	sprite_index = sprite_get("dspecial_poison_area");
	if (((state_timer mod 4) == 0)){ image_index++; }
	if (((state_timer mod 12) == 0)){ create_hitbox( AT_DSPECIAL, 2, x+12 * spr_dir, y+10 ); }
	
	if (state_timer > 200){ state = 3; state_timer = 0; image_index = 0; }
	
	break;
	
	case 3: //Done
	sprite_index = sprite_get("dspecial_poison_vanish");
	if (((state_timer mod 8) == 0)){ image_index++; }
	if (state_timer > 20){ done = true; }
	break;
	
	case 4: //Hit by hitbox
	
	break;
	
}