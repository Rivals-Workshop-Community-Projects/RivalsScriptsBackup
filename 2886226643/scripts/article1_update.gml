//State 1 - Idle
if (state == 1){
	sprite_index = sprite_get("sword_idle"); 
	image_index += 0.1;
	hsp = 0;
	vsp = 5;
	ignores_walls = false;
	if (portal_startup_timer == 2){
		portal_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
	}
	if (portal_startup_timer < 6.75){
		portal_startup_timer += 0.25;
	}
	if (portal_startup_timer > 6.5 && portal_size > 0){
		portal_size -= 0.0015;
		portal_hitbox.image_xscale -= 0.00175;
		portal_hitbox.image_yscale -= 0.00175;
	}
	if (field_nspecial == 0){
		portal_hitbox_nspec = create_hitbox(AT_DSPECIAL, 2, x, y);
		field_nspecial = 1;
	}
	if (field_nspecial > 0){
		field_nspecial++;
		if (instance_exists(portal_hitbox_nspec)){
			portal_hitbox_nspec.image_xscale = portal_hitbox.image_xscale;
			portal_hitbox_nspec.image_yscale = portal_hitbox.image_yscale;
		}
		if (field_nspecial < 6){
			portal_size += 0.2;
			portal_hitbox.image_xscale += 0.2;
			portal_hitbox.image_yscale += 0.2;
		}
		if (field_nspecial >= 6 && field_nspecial <= 8){
			portal_size -= 0.3;
			portal_hitbox.image_xscale -= 0.3;
			portal_hitbox.image_yscale -= 0.3;
			if (field_nspecial == 8){
				field_nspecial = -1;
			}
		}
	}
	
	if (instance_exists(portal_hitbox)){
		with (oPlayer){ 
			if (place_meeting(x, y, other.portal_hitbox)) {
				if (jean_field_off == false){
			    	jean_field = true;
				}
			}
			else {
			    jean_field = false;
			}
		}			
	}
	
}

//State 2 - USpecial Throw
if (state == 2){
	ignores_walls = true;
	sprite_index = sprite_get("sword_sprite"); 
	vsp += 0.5;
	image_angle -= 20*spr_dir;
	if (state_timer == 0){
		uspecial_hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
	}
	uspecial_hitbox.x = x;
	uspecial_hitbox.y = y;
	
	if (state_timer > 180){
		shoulddie = true;
	}
	
	if (vsp > 0 && (place_meeting(x,y+30,asset_get("par_block")) || place_meeting(x,y+30,asset_get("par_jumpthrough")))){
		state = 1;
		image_angle = 0;
		instance_destroy(uspecial_hitbox);
	}
}

//State 3 - Black Hole
if (state == 3){
	sprite_index = sprite_get("sword_idle"); 
	image_index += 0.1;
	hsp = 0;
	vsp = 5;
	ignores_walls = false;
	if (portal_startup_timer > 6.5 && portal_size > 0){
		portal_size -= 0.0015;
		portal_hitbox.image_xscale -= 0.00175;
		portal_hitbox.image_yscale -= 0.00175;
	}
}


with (asset_get("pHitBox")){
	if (attack == AT_NSPECIAL && place_meeting(x,y,other.portal_hitbox) && hbox_num == 1 
	&& other.player_id = player_id && other.state == 1 && other.portal_size > 0){
    	other.field_nspecial = 0;
    	destroyed = true;
    }
    if (attack == AT_NSPECIAL && place_meeting(x,y,other.portal_hitbox) && hbox_num > 2 
	&& other.player_id = player_id && other.state == 1 && other.portal_size > 0){
    	other.state = 3;
    	destroyed = true;
    	player_id.nspecial_charged = false;
    	player_id.nspecial_was_shot = false;
    }
    if (attack == AT_FSPECIAL && place_meeting(x,y,other.portal_hitbox) && hbox_num != 1 
	&& other.player_id = player_id && other.state == 1 && other.portal_size > 0){
		other.field_nspecial = 7;
    	player_id.fspecial_field = true;
    	spawn_hit_fx( player_id.x, player_id.y, 306);
    	destroyed = true;
    }
}

if (x > room_width or y > room_height + 200){
	shoulddie = true;
}

//Dying
if (shoulddie == true){
	player_id.killarticles = false;
	instance_destroy(uspecial_hitbox);
	instance_destroy(portal_hitbox);
    instance_destroy();
    exit;
}


//Make time progress
state_timer++;
