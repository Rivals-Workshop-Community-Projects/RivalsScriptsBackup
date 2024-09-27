//State 0: Soulmass Spawn
if (state == 0){
	if (player_id.nspecial_casting == false){
		state = 1;	
		image_alpha = 0.9;
		spawn_hit_fx( x, y, 111 );
	} 
	if (image_alpha < 1) image_alpha += 0.02;
	switch orb_number {
    case 1:
    	x = player_id.x;
		y = player_id.y - 100;
    break;
    case 2:
    	x = player_id.x-30*spr_dir;
		y = player_id.y - 70;
    break;
    case 3:
    	x = player_id.x+30*spr_dir;
		y = player_id.y - 70;
    break;
    case 4:
    	x = player_id.x-50*spr_dir;
		y = player_id.y - 40;
    break;
    case 5:
    	x = player_id.x+50*spr_dir;
		y = player_id.y - 40;
    break;
	}
}

//State 1: Soulmass Follow Undead
if (state == 1){
	player_id.hud_offset = round(lerp(player_id.hud_offset, 64, 1))
	switch orb_number {
    case 1:
    	x = player_id.x;
		y = player_id.y - 100;
    break;
    case 2:
    	x = player_id.x-30*spr_dir;
		y = player_id.y - 70;
    break;
    case 3:
    	x = player_id.x+30*spr_dir;
		y = player_id.y - 70;
    break;
    case 4:
    	x = player_id.x-50*spr_dir;
		y = player_id.y - 40;
    break;
    case 5:
    	x = player_id.x+50*spr_dir;
		y = player_id.y - 40;
    break;
}
	if (instance_exists(detection_hitbox)){
		detection_hitbox.x = player_id.x;
		detection_hitbox.y = player_id.y - 30;
	}
	if (player_id.nspecial_shoot == true){
		if (orb_number == 1) spawn_hit_fx( player_id.x, player_id.y-30, player_id.soulmass_ring );
		detection_hitbox = create_hitbox(AT_NSPECIAL, 1, player_id.x, player_id.y - 30);
		target_x = player_id.x+400*player_id.spr_dir;
		target_y = player_id.y-10;
		state = 2;
		state_timer = 0;
		//If it detects a nearby opponent
		with (oPlayer){
			if (place_meeting(x, y, other.detection_hitbox) && player != other.player){
				other.target_x = x;
				other.target_y = y;
				instance_destroy(other.detection_hitbox);
			}
		}
		if (instance_exists(detection_hitbox)) instance_destroy(detection_hitbox);
	}
	
}

//State 2: Homing Souls Activate
if (state == 2){
	if (state_timer == 0) homing_soulmass = create_hitbox(AT_NSPECIAL_2, 1, x, y-40);
	if (instance_exists(homing_soulmass) && homing_soulmass.hitbox_timer == orb_number*3){
		homing_dir = point_direction(target_x, target_y-30, x, y);
		homing_hsp = lengthdir_x(10, homing_dir);
		homing_vsp = lengthdir_y(10, homing_dir);
		hsp = -homing_hsp;
		vsp = -homing_vsp; 
	}
	if (instance_exists(homing_soulmass)){
		homing_soulmass.x = x;
		homing_soulmass.y = y;
	}
	else shoulddie = true;
}




//Dying
if (shoulddie == true || player_id.nspecial_destroy == true){
	if (instance_exists(detection_hitbox)) instance_destroy(detection_hitbox);
	if (instance_exists(homing_soulmass)) instance_destroy(homing_soulmass);
//	player_id.nspecial_casted = false;
	player_id.killarticles = false;
	spawn_hit_fx( x, y, 111 );
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;
image_index += 0.2;