// article1_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++
//image_alpha = 0.5;

if (get_player_color(player) == 13 || get_player_color(player) == 11 ){
	if (image_index < 3){
		image_index += 0.25;
	}
	else {
		image_index = 0;
	}
}
else {
	if (image_index < 3){
		image_index += 0.2;
	}
	else {
		image_index = 0;
	}
}

if (free && hitstop == 0){
	vsp += .5;
}

if (state_timer == 1){
	state = 1;
}


if (state == 1){
	if (vsp > 2){
		past_hitbox = noone;
		past_attack = noone;
		past_group = noone;		
	}
	
	with (pHitBox){
		if (instance_exists(other.boxhitbox)){
			if (place_meeting(x, y, other.boxhitbox) && other.hit_delay <= 0){
				instance_destroy(other.boxhitbox) 
				other.boxhitbox = noone;
			}
		}
		
		if (place_meeting(x, y, other) && other.boxhitbox == noone){
			if (other.hit_delay <= 1 && throws_rock != 2){
				if ((!(other.past_hitbox == hbox_num && other.past_attack == attack)) && ((other.past_group == hbox_group && other.past_attack != attack) || other.past_group != hbox_group || -1 = hbox_group)){
					other.past_hitbox = hbox_num;
					other.past_attack = attack;
					other.past_group = hbox_group;

					other.hsp = 0;
					other.vsp = 0;
					
					other.destroy_check = false;
					other.hit_delay = 5 + hitpause + extra_hitpause;

					other.kb_scaling = kb_scale;
					other.bkb = kb_value;
					other.kb_angle = get_hitbox_angle(id);	

					other.hitpause = true;
					other.hitstop = hitpause;

					other.owner = player;
					
					other.health_check = true;
						
					sound_play(pHitBox.sound_effect);	
					spawn_hit_fx(other.x, other.y, hit_effect);
					
					player_id.has_hit = true;
					player_id.hitpause = true;
					player_id.hitstop = hitpause;
					
					player_id.old_hsp = player_id.hsp;
					player_id.old_vsp = player_id.vsp;
				}
			}
		}
	}

	kb_speed = ((bkb + 70 * kb_scaling * fancynum * kb_adj) / 1.2); // calculates knockback speed

	if (hit_delay = 5){
		vsp = lengthdir_y(kb_speed , kb_angle);
		hsp = lengthdir_x(kb_speed , kb_angle);
		
		if (initial_spawn){
			boxhitbox = create_hitbox( AT_DSPECIAL, 2, x, y );
			boxhitbox.kb_angle = 270;
			initial_spawn = false;
			
		}
		else {
			boxhitbox = create_hitbox( AT_DSPECIAL, 1, x, y );	
			boxhitbox.kb_angle = kb_angle;	
		}

//		boxhitbox.hit_effect = hitfxowner.hit_small1;
		boxhitbox.player = owner;
		boxhitbox.length = 999;
	}

	if (!free && vsp > -.5 && vsp < .5 && hsp < 2 && hsp > -2){
		instance_destroy(boxhitbox);
		boxhitbox = noone;
	}

	if (instance_exists(boxhitbox)){
		boxhitbox.y = y;
		boxhitbox.x = x;
	}

	if (hit_delay > -10){
		hit_delay--;
	}

	if (hsp > 0){
		hsp -= .15;
	}

	if (hsp < 0){
		hsp += .15;
	}
	
	if (hit_delay == 3 || hit_delay == -9){
		destroy_check = true;
		solid_timer = 2;
	}

	if (vsp != 0 || hsp != 0){
		can_be_grounded = true;
		ignores_walls = false;
	}
}
	
if (!instance_exists(boxhitbox) && boxhitbox != noone){
	boxhitbox = noone;
}

if (health_check){
	health_check = false;
	player_id.box_health = player_id.box_health - 1;
}

if (destroy_check){

	if (!free && hsp < 0.3 && hsp > -0.3){
		hsp = 0;
		vsp = 0;
		destroy = true;
		instance_destroy(boxhitbox);
		boxhitbox = noone;
	}
	
	if (solid_timer != 0){
		solid_timer--;
	}

}

if (state_timer == 990){	
	if (get_player_color(player) == 13 || get_player_color(player) == 11){
		sound_play(sound_get("squeak_sfx"));
		}
		else {
		sound_play(sound_get("box3_sfx"));			
	}
	spawn_hit_fx(x, y, player_id.hit_small1);
	player_id.move_cooldown[AT_DSPECIAL] = 80;
	if (instance_exists(boxhitbox)){
		instance_destroy(boxhitbox);
		boxhitbox = noone;
	}
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
	if (get_player_color(player) == 13 || get_player_color(player) == 11){
		sound_play(sound_get("squeak_sfx"));
	}
	else {
		sound_play(sound_get("box3_sfx"));			
	}
	spawn_hit_fx(x, y, player_id.hit_small1);
	if (instance_exists(boxhitbox)){
		instance_destroy(boxhitbox);
		boxhitbox = noone;
	} 
	player_id.move_cooldown[AT_DSPECIAL] = 80;
	instance_destroy();
	exit;
}