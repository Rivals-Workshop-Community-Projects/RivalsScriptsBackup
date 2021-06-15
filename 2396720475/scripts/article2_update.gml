// article1_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++
image_alpha = .1;
if (state_timer == 1){
	state = 1;

	sound_play(sound_get("uspecial_sfx"));
	var travel = 20;
	
	hsp = (travel * cos(player_id.angle));
	vsp = (travel * sin(player_id.angle));
	
	image_angle = player_id.needle_angle;
}

if (state == 1){

	if (hit_wall){
		state = 2;
		can_be_grounded = false;
		ignores_walls = true;
	}
	
	if (!free || position_meeting(x, y, asset_get("par_jumpthrough")) || touched_player){
		state = 4;
		sound_play(sound_get("needle2_sfx"));
		if (touched_player){
			y = y - 20;
			needlehitbox = create_hitbox(AT_USPECIAL, 1, hit_x, hit_y);
			needlehitbox.player_id = player_id;
			needlehitbox.player = player;
			needlehitbox.orig_player = player;
			
			player_id.has_hit = true;
			
		}
		
		if (!player_parry && !player_dodge){				
			with(player_id){
				move_cooldown[AT_USPECIAL] = 60;
				
				if (point_distance( x, y, other.x, other.y) < 25 && y > other.y && other.angle == 270){
				}
				
				else {				
					if (other.touched_player){
						hsp = 13 * dcos(point_direction( x, y - 5, other.x, other.y));
						vsp = - 13 * dsin(point_direction( x, y - 5, other.x, other.y));								

						if (vsp < -12.50){
							tsj_check = true;
						}
					}
					else {
						hsp = 13 * dcos(point_direction( x, y - 5, other.x, other.y));
						vsp = - 13 * dsin(point_direction( x, y - 5, other.x, other.y));
						
						if (point_distance(x, y, other.x, other.y) < 30){
							vsp = - 14 * dsin(point_direction( x, y - 5, other.x, other.y));
						}
						if (vsp < -13.5){
							tsj_check = true;
						}
					}
					

				}
			}
		}
		else{
			if (player_parry){
				with (player_id){
					was_parried = true;
				}
			}
		}
		vsp = 0;
		hsp = 0;
		
		can_be_grounded = false;
		ignores_walls = true;
		state_timer = 900;
	}
	
	if (vsp == 0 && hsp == 0 && !hit_wall){
		state = 4;
	}
}

if (state == 2){

	player_id.needleland = true;
 	if (image_angle >= 270 || image_angle <= 90){
		image_angle = 0;
	}
	else {
		image_angle = 180;
	}

	vsp = 0;
}


if (state == 4){ // Autopull
	
	if (position_meeting( x, y, player_id) || !position_meeting( x, y, oPlayer)){
		instance_destroy();
		exit;
	}

}

if (state_timer >= 990){
	instance_destroy();
	exit;
}

if (y < 0 - 1000 || y > room_height + 1000 || x > room_width + 1000 || x < - 1000 ){
	instance_destroy();
	exit;
}