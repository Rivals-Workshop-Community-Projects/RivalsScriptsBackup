// article1_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++

if (free){
	vsp +=.5;
}
else {
	vsp = 0;
}

if (state_timer == 1){
	state = 1;
	vsp = 1;
}

if (flag){
	player_id.Box_temp_x = x;
	player_id.Box_temp_y = y;
}

if (state == 1){ 

	if (hsp > 0){
		hsp -= .05;
	}

	if (hsp < 0){
		hsp += .05;
	}
	
	with (pHitBox){
		if (place_meeting(x, y, other) && sprite_index != sprite_get("tomotomotomo")){
		
			other.player_id.create_moving = true;
			other.player_id.create_x = other.x;
			other.player_id.create_y = other.y;
			if (other.flag){
				other.player_id.flag_destroy = true;	
			}
			
			if (other.hit_delay <= 1 && throws_rock != 2){
				if ((!(other.past_hitbox == hbox_num && other.past_attack == attack)) && 
				((other.past_group == hbox_group && other.past_attack != attack) || 
				other.past_group != hbox_group || -1 = hbox_group)){
					other.past_hitbox = hbox_num;
					other.past_attack = attack;
					other.past_group = hbox_group;

					other.hsp = 0;
					other.vsp = 0;
					
					if (type == 1){
						pHitBox.player_id.has_hit = true;
						pHitBox.player_id.hitpause = true;
						pHitBox.player_id.hitstop = hitpause + 2;
						
						pHitBox.player_id.old_hsp = pHitBox.player_id.hsp;
						pHitBox.player_id.old_vsp = pHitBox.player_id.vsp;
					}
				}
			}
		}
	}

	if (vsp > 2.5 && !player_id.create_moving){
		player_id.create_moving = true;
		player_id.create_x = x;
		player_id.create_y = y;
		player_id.boxfalling = true;
	}
}

if (state == 2){ // Box 2

	with (pHitBox){
		if (place_meeting(x, y, other)){
		
			other.player_id.create_moving = true;
			other.player_id.create_x = other.x;
			other.player_id.create_y = other.y;
			
			health_check = true;
		
		}
	}

}

if (health_check){
	health_check = false;
	player_id.box_health = player_id.box_health - 1;
}


if (state_timer == 990){
//	player_id.trailer_effect = true;
	player_id.move_cooldown[AT_DSPECIAL] = 80;			
	if (get_player_color(player) == 13 || get_player_color(player) == 11){
		sound_play(sound_get("squeak_sfx"));
		}
		else {
		sound_play(sound_get("box3_sfx"));			
	}
	player_id.Box = noone;
	instance_destroy();
	exit;
}

if ((state_timer < 990 && state_timer > 985) || (state_timer < 980 && state_timer > 975) || (state_timer < 970 && state_timer > 965) || (state_timer < 960 && state_timer > 955) || (state_timer < 950 && state_timer > 945) || (state_timer < 940 && state_timer > 935)){
	image_alpha = 0;
}

if ((state_timer < 985 && state_timer > 980) || (state_timer < 975 && state_timer > 970) || (state_timer < 965 && state_timer > 960) || (state_timer < 955 && state_timer > 950) || (state_timer < 945 && state_timer > 940) || (state_timer < 935 && state_timer > 930)){
	image_alpha = 1;
}

if (y < 0 - 300 || y > room_height + 300 || x > room_width + 300 || x < - 300 ){
//	player_id.move_cooldown[AT_DSPECIAL] = 0;

	spawn_hit_fx(x, y, player_id.hit_small1);
	if (get_player_color(player) == 13 || get_player_color(player) == 11){
		sound_play(sound_get("squeak_sfx"));
	}
	else {
		sound_play(sound_get("box3_sfx"));		
		
	}
	player_id.trailer_effect = true;
	player_id.move_cooldown[AT_DSPECIAL] = 80;
	player_id.Box = noone;
	instance_destroy();
	exit;
}