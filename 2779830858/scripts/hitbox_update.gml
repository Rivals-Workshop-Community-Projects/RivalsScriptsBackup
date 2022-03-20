//eee
if (attack == AT_DSPECIAL){

	with (oPlayer){
		if time_slowed
		other.can_hit[player] = false; 
	}
	

}


if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR)
{



	var bunt_sound;
 	var loop_sound;
 	var die_sound;



	with (oPlayer){
		if (player == other.orig_player){
			bunt_sound = sound_get("bat_hit_weak1");
			loop_sound = ball_humm;
			die_sound = sound_get("ball_die");
			move_cooldown[AT_NSPECIAL] = 60 * 2.5;
			my_slow = true;
		}
	}


	if (vsp != 0)
	true_vsp = vsp;
	if (hsp != 0)
	true_hsp = hsp;

	ball_timer--;


	if (hbox_num == 1){

	with (oPlayer){
		other.can_hit[player] = false; 
	}


		if (hitbox_timer == 1){

		if (attack == AT_NSPECIAL){
			vsp = -5;
			ball_timer = 60;
			if (player_id.left_down)
				hsp -= 3;
			if (player_id.right_down)
				hsp += 3;
		}

		if (attack == AT_NSPECIAL_AIR){
			vsp = 5;
			hsp = 6 * spr_dir;
			ball_timer = 20;
		}


		}else
		{
			hitbox_timer = 2;
		}

		vsp += 0.2;
		hsp -= 0.1 * sign(hsp);
	}
	else if (hbox_num == 2){
		if (hitbox_timer == 1){
		ball_timer = 60*4;
		sound_play(loop_sound, 1, noone, 0.2, 1.2);
		}
	}

	if (hbox_num == 2){
		vsp *= 0.94;
		hsp *= 0.94;
	}

	var hit_wall = instance_place( x, y, asset_get("par_block"));

	if (hit_wall && hbox_num == 1){
		ball_timer = 0;
		sound_play(bunt_sound);
	}

	if (!free){
		
		if (floor(true_vsp) != 0)
		vsp = -true_vsp;
		else
		vsp = -2;

		if (hbox_num == 1)
		ball_timer = 0;

		y -= 10;

		free = true;

		sound_play(bunt_sound);
	}


	// vsp = clamp(vsp, -8, 8);
	// hsp = clamp(hsp, -10,10);

	var highest_priority = 0;
	var group = -2;

	//print_debug(string(ball_timer));

	with (pHitBox){

		if (place_meeting(x,y,other))
		{

			if (highest_priority < hit_priority)
			highest_priority = hit_priority;


			if (!other.ball_hit 
				&& highest_priority == hit_priority 
				&& !player_id.hitpause 
				&& group != hbox_group 
				&& (( (other.orig_player == player && attack != AT_NSPECIAL && attack != AT_NSPECIAL_AIR && attack != AT_USPECIAL) || (other.orig_player == player && attack == AT_USPECIAL && hbox_num != 3) ) || other.orig_player != player)
				&& other.hit_lockout == 0
				){

				other.hit_lockout = 5;

				other.player = player;
				if (group != hbox_group)
				group = hbox_group;

				other.ball_hit = true;
				player_id.has_hit_player = true;

				if (other.hbox_num == 1)
				other.ball_timer = 15;
				if (other.hbox_num == 2)
				other.ball_timer = 60*4;	

				if (type == 1){
				player_id.hitpause = true;
				player_id.hitstop = floor(hitpause/2);
				}

				sound_play(bunt_sound);
				sound_play(sound_effect);

				if (player == other.orig_player) || ("rewind_clone" in player_id)
				{
					if (attack == AT_USPECIAL){
					    if (hbox_num == 3){
					        player_id.window = 4;
					        player_id.window_timer = -1;
					        player_id.hitpause = true;
							player_id.hitstop = 2;
					    }
					    else{
					        player_id.old_hsp = -3 * player_id.spr_dir;
					        player_id.old_vsp = -5;
					    }
	    			}

	    			else if (attack == AT_DAIR){
		    		player_id.old_vsp = -5;
		    		player_id.old_hsp /= 2;
		    		}
		    		else if (type == 1){
		    		player_id.old_hsp = hsp;
					player_id.old_vsp = vsp;
					}

				}
				else if (type == 1){
				player_id.old_hsp = hsp;
				player_id.old_vsp = vsp;
				}




				other.ball_hitstop = floor(hitpause/2);
				other.ball_hitstop_image = other.image_index;

				if (player == other.orig_player) || ("rewind_clone" in player_id){
					player_id.ball_check = other.ball_hit;
					if (type == 1){
					other.ball_hsp = lengthdir_x(ball_speed, ball_angle) * spr_dir;
					other.ball_vsp = lengthdir_y(ball_speed, ball_angle);
					}else{
					other.ball_hsp = lengthdir_x(5, point_direction(x, y, other.x, other.y));
					other.ball_vsp = lengthdir_y(5, point_direction(x, y, other.x, other.y));
					}
				}

				else{

					var alt_angle = 0;
					switch (attack){
						case AT_UAIR:
						case AT_UTILT:
						case AT_USPECIAL:
						case AT_USTRONG:
							alt_angle = 90;
						break;

						case AT_DTILT:
						case AT_DSTRONG:
						case AT_DSPECIAL:
							alt_angle = 45;
						break;

						case AT_BAIR:
							alt_angle = 180;
						break;

						case AT_DAIR:
							alt_angle = -45;
						break;
					}


					other.ball_hsp = lengthdir_x(kb_value, alt_angle) * spr_dir;
					other.ball_vsp = lengthdir_y(kb_value, alt_angle);




				}


				//no hitpause

				// if (player == other.orig_player){
				// other.hsp = lengthdir_x(ball_speed, ball_angle) * spr_dir;
				// other.vsp = lengthdir_y(ball_speed, ball_angle);
				// }

				// else{
				// other.hsp = lengthdir_x(10, kb_angle) * spr_dir;
				// other.vsp = lengthdir_y(10, kb_angle);
				//}


			}
		}
	}



	if (ball_hitstop > 0){
		ball_hitstop--;
		hsp = 0;
		vsp = 0;
		image_index = ball_hitstop_image;
		if (ball_hitstop == 0){
		hsp = ball_hsp;
		vsp = ball_vsp;	
		}

	}

		



	with (oPlayer){
		if (player == other.player){

			if (state_timer == 1 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
				other.ball_hit = false;
			}

			if (!hitpause){
				if (other.hit_lockout > 0)
				other.hit_lockout--;
			}



		}
	}

	// //check if hit other player
	// with (pHurtBox){
	// 	if (place_meeting(x,y,other) && player != other.player){
	// 		other.ball_hit_player = true;
	// 	}
	// }

	if (ball_timer <= 0 && hbox_num != 2) || (ball_hit_player)
	{
		destroyed = true;
		var ball_open = create_hitbox( AT_NSPECIAL, 2, x, y );
		ball_open.player = player;
		ball_open.ball_hit = ball_hit;
		ball_open.hsp = hsp;
		ball_open.vsp = vsp;
	}
	else if (ball_timer <= 0 && hbox_num == 2)
	{
		destroyed = true;
		sound_stop(loop_sound);
		sound_play(die_sound);
	}



	if (was_parried){
		destroyed = true;
		sound_stop(loop_sound);
		move_cooldown[AT_NSPECIAL] = 60 * 10;
	}


}


