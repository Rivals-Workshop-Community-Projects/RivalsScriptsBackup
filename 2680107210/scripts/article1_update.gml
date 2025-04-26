//article1_update
increment_timer = 1;
lifetime_timer += 1;
if(state_timer > lifetime || x < player_id.phone_blastzone_l || x > player_id.phone_blastzone_r || y > player_id.phone_blastzone_b)
{
	change_state(PS_CLEANUP, 1);
}

macrostate_code();

if((macrostate != MS_UNATTACHED && microstate != PS_BASHED && macrostate != MS_ATTACHED_GROUND) || (microstate == PS_VANDA_UPLIFTED || microstate == PS_VANDA_KICKED))
{
	if(my_hitbox != noone)
	{
		instance_destroy(my_hitbox);
	}
	my_hitbox = noone;
}

//Microstate specific code
{
	switch(microstate)
	{
		case PS_UNATTACHED_UNARMED:
		{
			sprite_index = s_nspecial_projectile_unarmed;
			ignores_walls = false;
			/*if(owner_no_rune_f && rune_f_triggered)
			{
				sound_play(s_nspecial_buildup, false, noone, 1, 1.5);
				change_state(PS_UNATTACHED_ARMED, 0);
			}*/
			break;
		}
		case PS_UNATTACHED_ARMED:
		{
			sprite_index = s_nspecial_projectile_armed;
			ignores_walls = false;
			if(!owner_no_rune_f && state_timer >= player_id.nspecial_detonate_delay)
			{
				change_state(PS_EXPLODING_UNATTACHED, 0);
			}
			break;
		}
		case PS_VANDA_UPLIFTED:
		{
			if(!owner_no_rune_f) sprite_index = s_nspecial_projectile_unarmed;
			else sprite_index = s_nspecial_projectile_armed;
			ignores_walls = true;
			if(my_hitbox != noone && instance_exists(my_hitbox) && my_hitbox.hbox_num != 4)
			{
				//instance_destroy(my_hitbox);
				//my_hitbox = noone;
				/*my_hitbox = create_hitbox(AT_NSPECIAL, 4, round(x), round(y));
				my_hitbox.nspecial_entity = self;*/
			}
			
			if(who_hit_dair == noone)
			{
				if(!owner_no_rune_f) change_state(PS_UNATTACHED_UNARMED, 0);
				else change_state(PS_UNATTACHED_ARMED, 0);
			}
			break;
		}
		case PS_VANDA_KICKED:
		{
			if(!owner_no_rune_f) sprite_index = s_nspecial_projectile_unarmed;
			else sprite_index = s_nspecial_projectile_armed;
			ignores_walls = true;
			
			if(state_timer > 4)
			{
				if(!owner_no_rune_f) change_state(PS_UNATTACHED_UNARMED, 0);
				else change_state(PS_UNATTACHED_ARMED, 0);
			}
			break;
		}
		case PS_EXPLODING_UNATTACHED:
		{
			if(state_timer == 0)
			{
				//kaboom
			}
			break;
		}
		case PS_ATTACHED_GROUND_ARMING:
		{
			//Keep old velocity in case it detaches from the floor
			//Then arm the detonation timer
			if(state_timer == 0)
			{
				old_hsp = 3*spr_dir;
				old_vsp = -2;
				stuck_detonation_timer = player_id.nspecial_hazard_detonation_delay;
				sound_play(a_sfx_abyss_hazard_hit);
			}
			
			image_index = floor(ease_quadIn(0, 4, state_timer, player_id.nspecial_arm_time));
				
			if(state_timer == player_id.nspecial_arm_time)
			{
				if(!owner_no_rune_f)
				{
					sound_play(a_sfx_holy_textbox);
				}
				change_state(PS_ATTACHED_GROUND_ARMED, 0);
			}
			break;
		}
		case PS_ATTACHED_GROUND_ARMED:
		{
			state_timer = min(lifetime - 1, state_timer);
			//Keep old velocity in case it detaches from the floor
			//Then arm the detonation timer
			if(state_timer == 0)
			{
				old_hsp = 0;
				old_vsp = 0;
			}
			
			if(state_timer >= lifetime - 1)
			{
				change_state(PS_ATTACHED_GROUND_TIMED_OUT, 0);
			}
			
			for(var i = 1; i <= 8; i++) //Must be 8 because of abyss endless
			{
				var allowed_to_hit = (i == my_owner.player & get_bit(self_behavior, 1)); //Self
				allowed_to_hit = allowed_to_hit | (get_player_team(i) == get_player_team(my_owner.player) & get_bit(teammate_behavior, 1)); //Teammates
				//allowed_to_hit = allowed_to_hit | (get_player_team(i) != get_player_team(my_owner.player) & get_bit(enemy_behavior, 1)); //Enemies
				player_can_hit[i] = allowed_to_hit;
			}
			
			if(!owner_no_rune_f)
			{
				with(oPlayer)
				{
					//Check if an enemy is nearby
					if(other.nearby_enemy == noone && self != other.player_id && self.state != PS_DEAD && self.state != PS_RESPAWN && get_player_team(player) != get_player_team(other.player_id.player) && collision_circle(other.x, other.y, other.player_id.nspecial_detect_radius, self, true, false) == self)
					{
						other.nearby_enemy = self;
					}
				}
				
				if(nearby_enemy != noone)
				{
					change_state(PS_ATTACHED_GROUND_FUSING, 0);
					if(nearby_enemy.state == PS_HITSTUN || nearby_enemy.state == PS_HITSTUN_LAND)
					{
						stuck_detonation_timer = player_id.nspecial_hazard_detonation_delay;
					}
				}
				
				with(oPlayer)
				{
					if(other.player_can_hit[player] && collision_circle(other.x, other.y, other.player_id.nspecial_detect_radius, self, true, false) != noone)
					{
						if(state == PS_HITSTUN || state == PS_HITSTUN_LAND)
						{
							with(other)
							{
								stuck_detonation_timer = player_id.nspecial_hazard_detonation_delay_hitstun;
								change_state(PS_ATTACHED_GROUND_FUSING, 0);
							}
						}
						else
						{
							with(other)
							{
								stuck_detonation_timer = player_id.nspecial_hazard_detonation_delay;
								change_state(PS_ATTACHED_GROUND_FUSING, 0);
							}
						}
					}
				}
			}
			else if(owner_no_rune_f && rune_f_triggered)
			{
				change_state(PS_ATTACHED_GROUND_FUSING, 0);
				with(player_id)
				{
					var this_cue_fx = spawn_hit_fx(other.x, other.y + 8, nspecial_detonation_cue);
					this_cue_fx.depth = -1000;
					sound_play(s_nspecial_buildup, false, noone, 2, 1.1);
				}
			}
			break;
		}
		case PS_ATTACHED_GROUND_FUSING:
		{
			stuck_detonation_timer = max(0, stuck_detonation_timer - 1);
			
			if(stuck_detonation_timer == 0)
			{
				sprite_index = s_nspecial_hazard_mask;
				image_index = 1;
				
				change_state(PS_EXPLODING_GROUND, 0);
			}
			
			//Cancel fuse if owner is hit
			if(player_id.state_cat == SC_HITSTUN)
			{
				stuck_detonation_timer = player_id.nspecial_hazard_detonation_delay;
				rune_f_triggered = false;
				sprite_index = s_nspecial_hazard;
				image_index = 4;
				change_state(PS_ATTACHED_GROUND_ARMED, 0);
			}
			break;
		}
		case PS_ATTACHED_GROUND_TIMED_OUT:
		{
			var timeout_anim_frames = 5; //5 is frame count of nspecial_hazard
			var time_to_deflate = 15;
			image_index = floor(clamp((time_to_deflate - state_timer) / (time_to_deflate / timeout_anim_frames), 0, timeout_anim_frames - 1));
			if(state_timer >= time_to_deflate)
			{
				change_state(PS_CLEANUP, 0);
			}
			break;
		}
		case PS_EXPLODING_GROUND:
		{
			break;
		}
		case PS_ATTACHED_PLAYER:
		{
			var stuck_target_in_hitstun = (stuck_player.state == PS_HITSTUN || stuck_player.state == PS_HITSTUN_LAND) && stuck_player.state_timer < player_id.nspecial_hitstun_countdown_block;
			
			//if(!owner_no_rune_f || rune_f_triggered)
			
			{
				if(stuck_detonation_timer == player_id.nspecial_detonate_delay && !stuck_target_in_hitstun)
				{
					sound_play(s_nspecial_buildup, false, noone, 1, lerp(1, 1, owner_no_rune_f));
				}
				
				stuck_detonation_timer = max(stuck_detonation_timer - 1, 0);
				if(stuck_target_in_hitstun)
				{
					stuck_detonation_timer += 1;
					state_timer -= 1;
				}
			}
			
			if(stuck_detonation_timer == 0)
			{
				sprite_index = s_nspecial_stuck_mask;
				image_index = 1;
				
				change_state(PS_EXPLODING_PLAYER, 0);
			}
			
			if(stuck_player.state == PS_DEAD || stuck_player.state == PS_RESPAWN || stuck_player.state == PS_SPAWN)
			{
				//my_hitbox = noone;
				//cleanup(state);
				//exit;
				change_state(PS_CLEANUP, 0);
			}
			break;
		}
		case PS_EXPLODING_PLAYER:
		{
			break;
		}
		case PS_BASHED:
		{
			sprite_index = s_nspecial_projectile_armed;
			with(oPlayer)
			{
				if(get_char_info(player, INFO_STR_NAME) == "Ori & Sein" && collision_circle(x, y, 64, other, true, true) && state == PS_ATTACK_AIR && attack == AT_DSPECIAL && window == 4)
				{
					other.my_owner = self;
					break;
				}
			}
			
			if(my_hitbox != noone && instance_exists(my_hitbox) && my_hitbox.bashed && !my_hitbox.getting_bashed)
			{
				//Hitbox has been released
				hsp = my_hitbox.hsp;
				vsp = my_hitbox.vsp;
				my_hitbox.hsp = 0;
				my_hitbox.vsp = 0;
				spr_dir = lerp(-1, 1, hsp >= 0);
				change_state(PS_UNATTACHED_ARMED, 0);
				instance_destroy(my_hitbox);
			}
			else if(my_hitbox != noone && instance_exists(my_hitbox) && my_hitbox.getting_bashed)
			{
				x = my_hitbox.x;
				y = my_hitbox.y;
				hsp = 0;
				vsp = 0;
			}
			break;
		}
		case PS_PLASMA_FIELD_REFLECTED:
		{
			if(state_timer == 1)
			{
				hsp = -hsp * 1.25;
				vsp = -vsp * 1.25;
				
			}
			
			if(!in_plasma)
			{
				change_state(PS_UNATTACHED_ARMED, 0);
			}
			
			break;
		}
		case PS_PLASMA_FIELD_DESTROYED:
		{
			change_state(PS_CLEANUP, 0);
			break;
		}
		case PS_CLEANUP:
		{
			player_id.nspecial_current_projectiles -= 1;
			player_id.nspecial_index_array[index] = 0;
			if(my_hitbox != noone && instance_exists(my_hitbox))
			{
				my_hitbox.destroyed = true;
			}
			my_hitbox = noone;
			instance_destroy(self);
			exit;
			break;
		}
		
	}
}


state_timer += lerp(increment_timer, increment_timer * lifetime / time_until_despawn, microstate == PS_ATTACHED_GROUND_ARMED);

if(has_clairen)
{
	if(instance_exists(a_plasma_field_obj))
	{
		in_plasma = false;
		with(a_plasma_field_obj)
		{
			var v_nspecial = instance_place(get_instance_x(self), get_instance_y(self), other);
			if(v_nspecial != noone && get_player_team(get_instance_player(self)) != get_player_team(v_nspecial.my_owner.player))
			{
				//Reflecting
				with(other)
				{
					if(microstate != PS_ATTACHED_GROUND_FUSING && macrostate == MS_ATTACHED_GROUND)
					{
						change_state(PS_CLEANUP, 0);
					}
					else if(microstate == PS_ATTACHED_GROUND_FUSING || macrostate == MS_EXPLODING)
					{
						my_owner = get_instance_player_id(other);
					}
					else
					{
						change_state(lerp(PS_PLASMA_FIELD_REFLECTED, PS_CLEANUP, born_plasma), 0);
						my_owner = get_instance_player_id(other);
					}
					in_plasma = true;
				}
			}
		}
	}
	else
	{
		in_plasma = false;
	}
}



#define macrostate_code()
	{
		switch(macrostate)
		{
			case MS_UNATTACHED:
			{
				if(state_timer % 12 == 0)
				{
					var rand_dir = random_func(player + 2, 80, true) - 40;
					rand_dir += point_direction(0, 0, hsp, vsp);
					
					var t_hsp = dcos(rand_dir) * sqrt(point_distance(0, 0, hsp / 2, vsp / 2));
					var t_vsp = dsin(rand_dir) * sqrt(point_distance(0, 0, hsp / 2, vsp / 2));
					
					spawn_rune_fx(x, y, player_id.dspecial_fx_length * 2 / 3, t_hsp, t_vsp, random_func(player + 6, 8, true) + 0 + 1, 2, 1, 1);
				}
				
				//Check on the state of the hitbox
				if(my_hitbox == noone || !instance_exists(my_hitbox) || my_hitbox.destroyed)
				{
					if(microstate != PS_VANDA_UPLIFTED && microstate != PS_VANDA_KICKED)
					{
						//Hitbox did not exist or was destroyed
						my_hitbox = create_hitbox(AT_NSPECIAL, 4, round(x), round(y));
						my_hitbox.nspecial_entity = self;
						my_hitbox.hsp = 0;
						my_hitbox.vsp = 0;
						my_hitbox.player = my_owner.player;
					}
				}
				/*else if(my_hitbox.was_parried)
				{
					//Hitbox was parried, should be handled in got_parried.gml except for some strange situations.
					//eg. an opponent hits the projectile twice in a row and then Vanda parries.
					//This also can run when the got_parried script runs. But that script doesn't
					//always run either. A deep dive into these situations will need to be conducted
					//at a later time. For now, we accept some niche jank with parrying.
					print("also got parried")
					var owner_dir = point_direction(x, y, my_owner.x + my_owner.hsp * 1.5, my_owner.y - (my_owner.char_height / 2) + my_owner.vsp * 1.5);
					var grav_angle = 0;
					use_gravity = false;
					var owner_dist = point_distance(x, y, my_owner.x, my_owner.y - (my_owner.char_height / 2));
					var vel_mag = point_distance(0, 0, hsp, vsp) * 1.75;
					
					
					hsp = dcos(owner_dir) * vel_mag;
					vsp = -dsin(owner_dir) * vel_mag;
					//image_speed *= 1.5;
					spr_dir = lerp(-1, 1, hsp >= 0);
					
					microstate = 11;//PS_UNATTACHED_ARMED
					macrostate = 1; //MS_UNATTACHED
					state_timer = 0;
					
					with(oPlayer)
					{
						if(player == other.my_hitbox.player)
						{
							other.my_owner = self;
							break;
						}
					}
					my_hitbox.was_parried = false;
				}*/
				else if(my_hitbox.getting_bashed) //Currently getting bashed
				{
					x = my_hitbox.x;
					y = my_hitbox.y;
					hsp = 0;
					vsp = 0;
					change_state(PS_BASHED, 1);
				}
				else
				{
					my_hitbox.x = x + hsp;
					my_hitbox.y = y + vsp;
					//Don't uncomment this! It makes it so Ori can't bash!
					//Why Dan??!
					/*my_hitbox.hsp = 0;
					my_hitbox.vsp = 0;*/
				}
				
				if(microstate != PS_VANDA_UPLIFTED && microstate != PS_VANDA_KICKED && check_ground_collision())
				{
					if(microstate == PS_UNATTACHED_ARMED)
					{
						change_state(PS_EXPLODING_UNATTACHED, 0);
					}
					else
					{
						change_state(PS_ATTACHED_GROUND_ARMING, 1);
					}
					
					break;
				}
				/*else if(check_player_collision())
				{
					change_state(lerp(PS_ATTACHED_PLAYER, PS_EXPLODING_UNATTACHED, microstate == PS_UNATTACHED_ARMED), 1);
					break;
				}*/
				else if(hit_detection() != noone)
				{
					//On hit function, handled in on_hit()
				}
				else
				{
					unattached_movement();
					img_spd = (3/4) * pyth(hsp, vsp) / player_id.nspecial_spawn_force[0][2];
					img_store += img_spd;
					while(img_store > 0 && hitstop == 0)
					{
						img_store -= 1;
						image_index = (image_index + 1) % sprite_get_number(sprite_index);
					}
				}
				break;
			}
			case MS_ATTACHED_GROUND:
			{
				if(my_hitbox != noone && instance_exists(my_hitbox))
				{
					if(my_hitbox.hbox_num == 4)
					{
						instance_destroy(my_hitbox);
						if(ori_in_match)
						{
							my_hitbox = create_hitbox(AT_NSPECIAL, 1, round(x), round(y));
							my_hitbox.nspecial_entity = self;
							my_hitbox.player = my_owner.player; //just added
						}
						else
						{
							instance_destroy(my_hitbox);
							my_hitbox = noone;
						}
					}
					if(my_hitbox != noone && instance_exists(my_hitbox) && my_hitbox.getting_bashed) //Currently getting bashed
					{
						x = my_hitbox.x;
						y = my_hitbox.y;
						hsp = 0;
						vsp = 0;
						change_state(PS_BASHED, 1);
					}
				}
				
				else if(ori_in_match)
				{
					my_hitbox = create_hitbox(AT_NSPECIAL, 1, round(x), round(y));
					my_hitbox.nspecial_entity = self;
					my_hitbox.player = my_owner.player; //just added
				}
				else
				{
					instance_destroy(my_hitbox);
					my_hitbox = noone;
				}
				
				sprite_index = s_nspecial_hazard;
				hsp = 0;
				vsp = 0;
				//Detect if not actually on anything
				//Test this by going to Endless Abyss, stand facing right on X=880, and do angle-30 NSpecial
				if(collision_line(x, y, x, y + 26, a_par_block, true, true) == noone && collision_line(x, y, x, y + 26, a_par_jumpthrough, true, true) == noone)
				{
					if(state_timer == 1)
					{
						hsp = 3*spr_dir;
						vsp = -2;
					}
					else
					{
						hsp = 0;
						vsp = 0;
					}
					
					change_state(PS_UNATTACHED_UNARMED, 1);
					stuck_detonation_timer = player_id.nspecial_detonate_delay;
				}
				
				hit_detection();
				break;
			}
			case MS_ATTACHED_PLAYER:
			{
				sprite_index = s_nspecial_stuck;
				x = stuck_player.x + stuck_player.hsp;
				y = stuck_player.y - floor(stuck_player.char_height/2) + stuck_player.vsp;
				img_spd = 0;
				image_index = clamp(floor(state_timer / 4), 0, 4);
				break;
			}
			case MS_EXPLODING:
			{
				sprite_index = lerp(s_shadowflame_explosion_large, s_shadowflame_explosion_small, microstate == PS_EXPLODING_PLAYER);
				
				if(state_timer == 0)
				{
					image_index = 0;
					sound_stop(s_nspecial_buildup);
					var hbox_number = lerp(3, 2, microstate == PS_EXPLODING_PLAYER);
					var this_hbox = create_hitbox(AT_NSPECIAL, hbox_number, round(x), round(y));
					this_hbox.nspecial_entity = self;
					this_hbox.player = my_owner.player;
					sound_play(s_nspecial_explode);
				}
				
				img_spd = 1/4;
				img_store += img_spd;
				while(img_store > 0 && hitstop == 0)
				{
					img_store -= 1;
					image_index = (image_index + 1);
				}
				hsp = 0;
				vsp = 0;
				
				if(image_index >= sprite_get_number(sprite_index))
				{
					change_state(PS_CLEANUP, 1);
				}
				
				break;
			}
			case MS_MISC:
			{
				break;
			}
			case MS_CLEANUP:
			{
				break;
			}
		}
	}

#define unattached_movement()
	{
		if(use_gravity)
		{
			vsp += lerp(instance_gravity/2,instance_gravity,clamp(state_timer / (14+3*instance_gravity),0,1));
		}
		old_hsp = hsp;
		old_vsp = vsp;
		old_x = x;
		old_y = y;
		return true;
	}

#define check_ground_collision()
	{
		if(!free) //Ground
		{
			if(rune_k_bounces > 0)
			{
				rune_k_bounces -= 1;
				vsp = max(old_vsp * -1, -6);
				sound_play(player_id.nspecial_hit_sound);
				return false;
			}
			return true;
		}
		else if(hit_wall && x >= old_x) //Right wall
		{
			hsp = old_hsp * -0.75;
			use_gravity = true;
			spr_dir *= -1;
			sound_play(player_id.nspecial_hit_sound);
		}
		else if(hit_wall && x < old_x) //Left wall
		{
			hsp = old_hsp * -0.75;
			use_gravity = true;
			spr_dir *= -1;
			sound_play(player_id.nspecial_hit_sound);
		}
		else if(!free && y < old_y) //Ceiling
		{
			vsp = old_vsp * -1;
		}
		return false;
	}

#define check_player_collision()
	{
		for(var i = 1; i <= 8; i++) //Needs to be 8 for abyss endless mode
		{
			var allowed_to_hit = (i == my_owner.player & get_bit(self_behavior, 1)); //Self
			allowed_to_hit = allowed_to_hit | (get_player_team(i) == get_player_team(my_owner.player) & get_bit(teammate_behavior, 1)); //Teammates
			//allowed_to_hit = allowed_to_hit | (get_player_team(i) != get_player_team(my_owner.player) & get_bit(enemy_behavior, 1)); //Enemies
			player_can_hit[i] = allowed_to_hit;
		}
		with(oPlayer)
		{
			//print(collision_circle(other.x, other.y, 32, self, true, false))
			if(other.stuck_player == noone && other.player_can_hit[player] && collision_circle(other.x, other.y, 32, self, true, false) != noone)
			{
				other.stuck_player = self;
			}
		}/*
		if(stuck_player != noone && my_hitbox == noone) //Hitbox does not exist yet
		{
			my_hitbox = create_hitbox(AT_NSPECIAL, 4, round(x), round(y));
			my_hitbox.nspecial_entity = self;
			stuck_player = noone;
		}
		else if(stuck_player != noone && my_hitbox != noone && (!instance_exists(noone) || (instance_exists(my_hitbox) && my_hitbox.destroyed))) //Hitbox destroyed, do nothing
		{
			my_hitbox = noone;
			stuck_player = noone;
		}
		else if(stuck_player != noone && my_hitbox != noone && instance_exists(noone) && my_hitbox.was_parried) //Hitbox was parried, handled in got_parried.gml
		{
			stuck_player = noone;
		}
		else //Enemy got hit by hitbox
		{
			//return true;
		}*/
		return stuck_player != noone;
	}

#define check_hitbox_collision()
	{
		//Check if striking a hitbox
		var is_hit = (instance_exists(my_hitbox) && my_hitbox.destroyed == true);
		if(my_hitbox != noone && instance_exists(my_hitbox))
		{
			with(my_hitbox)
			{
				other.colliding_hitbox = collision_circle(x, y, 16, a_pHitBox, true, true);
				//other.colliding_field = collision_circle(x, y, 16, a_plasma_field_obj, true, true);
			}
		}
		else
		{
			colliding_hitbox = collision_circle(x, y, 16, a_pHitBox, true, true);
			//colliding_field = collision_circle(x, y, 16, a_plasma_field_obj, true, true);
		}
		
		/*if(colliding_field != noone)
		{
			var this_clairen = get_instance_player_id(colliding_field);
			
			if(my_owner != this_clairen.player)
			{
				//Run parry code
				proximity_behavior = player_id.nspecial_parry_proximity_behavior;
				
				//Update article to move the other direction
				hsp = -hsp * 1.25;
				vsp = -vsp * 1.25;
				//image_speed *= 1.5;
				spr_dir *= -1;
				
				can_stick = false;
				with(player_id)
				{
					nspecial_entity.sprite_index = s_nspecial_projectile_armed;
				}
				
				my_owner = this_clairen.player;
			}
		}*/
		
		if(colliding_hitbox != noone && (is_hit || (instance_exists(colliding_hitbox) && colliding_hitbox.player == my_owner.player)) && lockout == 0)
		{
			var col_hb_player_name = get_char_info(colliding_hitbox.player_id.player, INFO_STR_NAME);
			//Work with Vanda DAir
			var is_vanda_dair = (
			col_hb_player_name == player_id.my_name && colliding_hitbox.attack == AT_DAIR && colliding_hitbox.hbox_num == 1);
			
			/*var is_vanda_dair2 = (col_hb_player_name == player_id.my_name && colliding_hitbox.attack == AT_DAIR && colliding_hitbox.hbox_num == 2);*/
			
			/*var is_vanda_fstrong4 = (
			col_hb_player_name == player_id.my_name && colliding_hitbox.attack == AT_FSTRONG && colliding_hitbox.hbox_num == 4);*/
			
			var is_vanda_fstrong = (
			col_hb_player_name == player_id.my_name && colliding_hitbox.attack == AT_FSTRONG && colliding_hitbox.hbox_num == clamp(colliding_hitbox.hbox_num,1,2));
			
			var is_fstrong3 = (
			col_hb_player_name == player_id.my_name && colliding_hitbox.attack == AT_FSTRONG && colliding_hitbox.hbox_num == 3);
			
			var is_fair = (
			col_hb_player_name == player_id.my_name && colliding_hitbox.attack == AT_FAIR && colliding_hitbox.hbox_num == 1);
			
			if(is_vanda_dair)
			{
				img_spd = 0;
				with(colliding_hitbox.player_id)
				{
					//hit_player.gml DAir code
					window = 4;
					window_timer = 0;
					
					if(vanda_landed_dair == noone)
					{
						vanda_landed_dair = other;
						other.attachable = false;
					}
				}
			}
			
			if(is_vanda_fstrong && !hit_fstrong1)
			{
				hit_fstrong1 = true;
			}
			
			if(is_fstrong3 && hit_fstrong1)
			{
				//Do nothing
			}
			else //Process the hit like normal
			{
				
				state_timer = 0;
				//Handle hitpause, hitstop, and lockout
				if(colliding_hitbox.effect != 2110996332)
				{
					apply_knockback();
					
					if(colliding_hitbox.player_id.hitstop > 0)
					{
						lockout += 1;
					}
					
					if(colliding_hitbox.type != 2)
					{
						colliding_hitbox.player_id.old_hsp = colliding_hitbox.player_id.hsp;
						colliding_hitbox.player_id.old_vsp = colliding_hitbox.player_id.vsp;
						colliding_hitbox.player_id.hitstop = colliding_hitbox.hitpause / 2;
						colliding_hitbox.player_id.hitpause = 1;
						colliding_hitbox.player_id.has_hit = true;
					}
					
					colliding_hitbox.player_id.has_hit = true;
					sound_play(colliding_hitbox.sound_effect);

					sound_play(player_id.nspecial_hit_sound);
					
					
					with(colliding_hitbox.player_id)
					{
						spawn_hit_fx(other.colliding_hitbox.x, other.colliding_hitbox.y, other.colliding_hitbox.hit_effect);
					}
					lockout += 0 + hitstop + colliding_hitbox.no_other_hit;
					if(colliding_hitbox.type == 2 && !(colliding_hitbox.transcendent))
					{
						colliding_hitbox.destroyed = true;
					}
				}
				
				
				spr_dir = lerp(-1,1,hsp >= 0);
				
				my_owner = colliding_hitbox.player_id.player;
				if(my_hitbox != noone && instance_exists(my_hitbox))
				{
					instance_destroy(my_hitbox);
				}
				my_hitbox = create_hitbox(AT_NSPECIAL, 4, round(x), round(y));
				my_hitbox.nspecial_entity = self;
				my_hitbox.player = my_owner.player; //just added
				use_gravity = true;
				
				colliding_hitbox = noone;
				return true;
			}
		}
		lockout = max(lockout - 1, 0);
		colliding_hitbox = noone;
		return false;
	}

#define on_hit(hbox)
	{
		// This is the code the article should run on hit.
		// Edit this to have the desired functions when your article is hit by a hitbox.
		
		hit_player_obj = hbox.player_id;
		hit_player_num = hbox.player;
		
		//Default Hitpause Calculation
		//You probably want this stuff because it makes the hit feel good.
		if(hbox.type == 1)
		{
			desired_hitstop = floor(get_hitstop_formula(damage, hbox.damage, hbox.hitpause, hbox.hitpause_growth, hbox.extra_hitpause) / 2);
			
			if(hbox.attack == AT_DAIR && hbox.hbox_num == 1 && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
			{
				desired_hitstop = floor(get_hitstop_formula(damage, hbox.damage, hbox.hitpause, hbox.hitpause_growth, 0) / 2);
			}
			
			
			with(hit_player_obj)
			{
				if(!hitpause)
				{
					old_vsp = vsp;
					old_hsp = hsp;
				}
				hitpause = 1;
				has_hit = true;
				if(hitstop < other.desired_hitstop)
				{
					hitstop = other.desired_hitstop;
					hitstop_full = other.desired_hitstop;
				}
			}
		}
		// This puts the ARTICLE in hitpause.
		// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause or comment out the line below.
		hitstop = floor(desired_hitstop);
		desired_hitstop = 0;
		
		//Hit Lockout
		if(article_should_lockout)
		{
			hit_lockout = hbox.no_other_hit + base_hit_lockout;
		}
		if(hbox.attack == AT_UAIR && hbox.hbox_num == 1 && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
		{
			hit_lockout = 4;
		}
		
		var hbox_dmg = hbox.damage;
		var hbox_bkb = hbox.kb_value;
		var hbox_kbs = hbox.kb_scale;
		
		if(hbox.attack == AT_USTRONG && hbox.hbox_num == 2 && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
		{
			hbox_bkb = player_id.vanda_ustrong_nspecial_bkb;
			hbox_kbs = player_id.vanda_ustrong_nspecial_kbs;
		}
		
		//Default Knockback Calculation
		orig_knock = get_kb_formula(damage, knockback_adj, get_match_setting(SET_SCALING) * 2, hbox_dmg, hbox_bkb, hbox_kbs);
		
		kb_dir = get_hitbox_angle(hbox);
		if((hbox.attack == AT_FSTRONG || hbox.attack == AT_FAIR) && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
		{
			kb_dir = lerp(180 - hit_player_obj.vanda_fstrong_nspecial_angle, hit_player_obj.vanda_fstrong_nspecial_angle, hit_player_obj.spr_dir == 1);
		}
		 
		hsp = lengthdir_x(orig_knock, kb_dir);
		vsp = lengthdir_y(orig_knock, kb_dir);
		if(hbox.attack == AT_DAIR && hbox.hbox_num == 2 && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
		{
			hsp *= player_id.vanda_dair_nspecial_boost;
			vsp *= player_id.vanda_dair_nspecial_boost;
		}
		damage += hbox.damage * player_id.nspecial_damage_scaling;
		
		state_timer = 0;
		use_gravity = true;
		
		//Default hit stuff
		//print(hbox.kb_value + hbox.damage * hbox.kb_scale - damage / 10)
		var my_pitch = hbox.kb_value + hbox.damage * hbox.kb_scale - damage / 10;
		var my_pitch = (arctan(player_id.nspecial_pitch_b * (my_pitch - player_id.nspecial_pitch_c)) + player_id.nspecial_pitch_a) / player_id.nspecial_pitch_a;
		sound_play(player_id.nspecial_hit_sound, false, noone, 1, my_pitch);
		
		var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
		var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
		with(hit_player_obj)
		{ // use a with so that it's shaded correctly
			var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
			temp_fx.hit_angle = other.kb_dir;
			temp_fx.kb_speed = other.orig_knock;
		}
		
		/*var is_vanda_dair = (hbox.attack == AT_DAIR && hbox.hbox_num == 1 && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name);
		
		if(!(is_vanda_dair && who_hit_dair == noone)) //Exclude getting hit by DAir if they weren't the one bring grabbed
		{
			change_state(PS_UNATTACHED_ARMED, 1);
		}*/ //Disabled because it forces NSpecial to be immune to DAir if this condition is met
		//It can be reset by editing the attack_can_hit array, but idunno if that's worth trying
		if(!owner_no_rune_f) change_state(PS_UNATTACHED_UNARMED, 1);
		else change_state(PS_UNATTACHED_ARMED, 1);
		if(my_hitbox != noone && instance_exists(my_hitbox))
		{
			my_hitbox.player_id = my_owner;
		}
		
		if(hbox.attack == AT_DAIR && hbox.hbox_num == 1 && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
		{
			//Vanda DAir
			with(hit_player_obj)
			{
				//hit_player.gml DAir code
				window = 4;
				window_timer = 0;
				
				if(vanda_landed_dair == noone)
				{
					vanda_landed_dair = other;
					with(other)
					{
						who_hit_dair = hit_player_obj;
						img_spd = 0;
						sprite_index = s_nspecial_projectile_armed;
						change_state(PS_VANDA_UPLIFTED, 0);
						rune_k_bounces = rune_k_bounces_max;
					}
				}
				else
				{
					other.who_hit_dair = noone;
					
					//This fixes a bug where using DAir with multiple overlapping articles causes them to not respond to DAir / FStrong
					other.player_id.nspecial_hbox_group[@other.index][@ player-1][@ hbox.attack][@hbox.hbox_num] = other.player_id.nspecial_hbox_group_template[@other.index][@ player-1][@ hbox.attack][@hbox.hbox_num];
				}
			}
		}
		else if(hbox.attack == AT_DAIR && hbox.hbox_num == 2 && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
		{
			who_hit_dair = noone;
		}
		else if(hbox.attack == AT_FSTRONG && hbox.hbox_num == clamp(hbox.hbox_num, 1, 2) && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
		{
			change_state(PS_VANDA_KICKED, 0);
			rune_k_bounces = rune_k_bounces_max;
			for(var i_group = 0; i_group <= 11; i_group++)
			{
				player_id.nspecial_hbox_group[@index][hit_player_obj.player - 1][AT_FSTRONG][@i_group] = 1;
			}
		}
		else if(hbox.attack == AT_FAIR && hbox.hbox_num == clamp(hbox.hbox_num, 1, 1) && get_char_info(hit_player_obj.player, INFO_STR_NAME) == player_id.my_name)
		{
			change_state(PS_VANDA_KICKED, 0);
			rune_k_bounces = rune_k_bounces_max;
			for(var i_group = 0; i_group <= 11; i_group++)
			{
				player_id.nspecial_hbox_group[@index][hit_player_obj.player - 1][AT_FAIR][@i_group] = 1;
			}
		}
		
		/*if(hbox.attack == AT_DSPECIAL && get_char_info(hit_player_obj.player, INFO_STR_NAME) == "Clairen")
		{
			change_state(PS_PLASMA_FIELD_REFLECTED, 0);
		}*/
		
	}

#define filters(hbox)
	{
		//These are the filters that check whether a hitbox should be able to hit the article.
		//Feel free to tweak this as necessary.
		with(hbox)
		{
			//var player_equal = player == other.my_owner.player;
			//var team_equal = get_player_team(player) == get_player_team(other.my_owner.player);
			
			var allowed_to_hit = (player == other.my_owner.player) & get_bit(other.self_behavior, 0); //Self
			allowed_to_hit = allowed_to_hit | (get_player_team(player) == get_player_team(other.my_owner.player) & get_bit(other.teammate_behavior, 0)); //Teammates
			allowed_to_hit = allowed_to_hit | (get_player_team(player) != get_player_team(other.my_owner.player) & get_bit(other.enemy_behavior, 0)); //Enemies
			
			
			return allowed_to_hit;
			/*
			return ("owner" not in self || owner != other) //check if the hitbox was created by this article
				&& hit_priority == clamp(hit_priority, 0, 10) //allow priority 0
				&& (groundedness == 0 || groundedness == 1+other.free)
				&& (player_equal && get_bit(other.self_behavior, 0)) //uncomment to prevent the article from being hit by its owner.
				&& (!( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) && get_bit(other.teammate_behavior, 0)) //uncomment to prevent the article from being hit by its owner's team.*/
		}
	}

#define hit_detection()
	{
		//Code by Supersonic#9999
		//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
		//the other functions determine how and what the hit detection interacts with.
		//hbox group management
		with(oPlayer)
		{
			if(state == clamp(state, 5, 6) && window == 1 && window_timer == 1 && !other.dont_do_hit_detection)
			{
				for(var i = 0; i < 11; i++)
				{
					other.player_id.nspecial_hbox_group[@other.index][@ player-1][@ attack][@i] = other.player_id.nspecial_hbox_group_template[@other.index][@ player-1][@ attack][@i];
				}
			}
		}
		 
		//hit lockout stuff
		if(hit_lockout > 0)
		{
			hit_lockout--;
			return noone;
		}
		//get colliding hitboxes
		var hitbox_list = ds_list_create();
		 
		var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
		var final_hbox = noone;
		var hit_variable = `hit_article_${id}`;
		if(num == 0)
		{
			ds_list_destroy(hitbox_list);
			return;
		}
		if(num == 1)
		{
			//no priority checks if only one hitbox is found
			var hbox = hitbox_list[|0];
			var group = hbox.hbox_group;
			if(hit_variable not in hbox && hbox.object_index == pHitBox)
			{
				if(player_id.nspecial_hbox_group[@index][@ hbox.orig_player-1][@ hbox.attack][@ group + 1] == lerp(0, 2, dont_do_hit_detection))
				{
					if(filters(hbox))
					{
						final_hbox = hbox;
					}
					else if(group != -1)
					{
						//hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
						variable_instance_set(hbox, hit_variable, true);
					}
				}
				else
				{
					//fake hit if group has already hit; optimization thing
					variable_instance_set(hbox, hit_variable, true);
				}
			}
		}
		else
		{
			var highest_priority = -1;
			var highest_priority_owner = -1;
			var highest_priority_hbox = noone;
			for(var i = 0; i < ds_list_size(hitbox_list); i++)
			{
				var hbox = hitbox_list[|i];
				var group = hbox.hbox_group;
				if(hit_variable not in hbox && hbox.object_index == pHitBox)
				{
					//group check
					if(player_id.nspecial_hbox_group[@index][@ hbox.orig_player-1][@ hbox.attack][@ group + 1] == lerp(0, 2, dont_do_hit_detection))
					{
						if(filters(hbox))
						{
							
							if(hbox.hit_priority > highest_priority)
							{
								highest_priority = hbox.hit_priority;
								highest_priority_owner = hbox.player;
								highest_priority_hbox = hbox;
							}
						}
						else if(group != -1)
						{
							//hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
							variable_instance_set(hbox, hit_variable, true);
						}
					}
					else
					{
						//fake hit if group has already hit; optimization thing
						variable_instance_set(hbox, hit_variable, true);
					}
				}
			}
			if(highest_priority != -1)
			{
				final_hbox = highest_priority_hbox;
			}
		}
		if(final_hbox != noone)
		{
			on_hit(final_hbox);
			variable_instance_set(final_hbox, hit_variable, true);
			if(final_hbox.hbox_group != -1)
			{
				player_id.nspecial_hbox_group[@index][@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group + 1] = 1;
			}
			//clear hitbox list
			my_owner = final_hbox.player_id;
			if(my_hitbox != noone && instance_exists(my_hitbox))
			{
				my_hitbox.player_id = my_owner;
			}
			ds_list_destroy(hitbox_list);
			return final_hbox.player_id;
		}
		else
		{
			//clear hitbox list
			//ds_list_clear(hitbox_list)
			ds_list_destroy(hitbox_list);
			return noone;
		}
	}

#define apply_knockback()
	{
		hitstop = floor(get_hitstop_formula(damage, enemy_hitboxID.damage, enemy_hitboxID.hitpause, enemy_hitboxID.hitpause_growth, enemy_hitboxID.extra_hitpause) / 2);
		var this_kb = get_kb_formula(damage, knockback_adj, get_match_setting(SET_SCALING) * 2, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale);
		var this_kb_angle = get_hitbox_angle(enemy_hitboxID);
		hsp = this_kb * dcos(this_kb_angle);
		vsp = this_kb * -dsin(this_kb_angle);
		
		change_state(lerp(PS_UNATTACHED_ARMED, PS_VANDA_UPLIFTED, microstate == PS_VANDA_UPLIFTED), 0);
		instance_gravity *= gravity_mult;
		
		sound_play(enemy_hitboxID.sound_effect);
		sound_play(player_id.nspecial_hit_sound);
		
		with(colliding_hitbox.player_id)
		{
			hitstop = other.hitstop;
			hitpause = true;
		}
		
		if(get_char_info(enemy_hitboxID.player_id.player, INFO_STR_NAME) == get_char_info(player_id.player, INFO_STR_NAME) && enemy_hitboxID.attack == AT_DAIR)
		{
			if(enemy_hitboxID.hbox_num == 2)
			{
				//Vanda DAir2
				vsp *= player_id.vanda_dair_nspecial_boost;
				hsp *= player_id.vanda_dair_nspecial_boost;
			}
			with(colliding_hitbox.player_id)
			{
				hitstop = 0;
				hitpause = false;
			}
		}
	}

#define pyth(a, b)
	return sqrt(a * a + b * b);

#define get_bit(this_value, this_bit)
	return (this_value >> this_bit) & 1;

#define rebuild_hbox_group_array(fill_value)
	dont_do_hit_detection = fill_value;
	

#define change_state(new_state, frame_advance)
	{
		microstate = new_state;
		switch(microstate)
		{
			case PS_UNATTACHED_UNARMED:
			case PS_UNATTACHED_ARMED:
			case PS_VANDA_KICKED:
			{
				macrostate = MS_UNATTACHED;
				rebuild_hbox_group_array(0);
				for(var i_group = 0; i_group < 11; i_group++)
				{
					player_id.nspecial_hbox_group[@index][player_id.player - 1][AT_NSPECIAL][@i_group] = 1;
					player_id.nspecial_hbox_group_template[@index][player_id.player - 1][AT_NSPECIAL][@i_group] = 1;
				}
				break;
			}
			case PS_VANDA_UPLIFTED:
			{
				macrostate = MS_UNATTACHED;
				rebuild_hbox_group_array(1);
				for(var i_group = 0; i_group < 11; i_group++)
				{
					player_id.nspecial_hbox_group[@index][who_hit_dair.player - 1][AT_DAIR][@i_group] = 2;
				}
				break;
			}
			
			case PS_ATTACHED_GROUND_ARMING:
			{
				macrostate = MS_ATTACHED_GROUND;
				rebuild_hbox_group_array(1);
				for(var i_player = 0; i_player < 4; i_player++)
				{
					if(get_char_info(i_player + 1, INFO_STR_NAME) == player_id.my_name)
					{
						/*for(var i_group = 0; i_group < 11; i_group++)
						{
							player_id.nspecial_hbox_group[@index][i_player][AT_FSTRONG][@i_group] = 2;
							player_id.nspecial_hbox_group[@index][i_player][AT_DAIR][@i_group] = 2;
							player_id.nspecial_hbox_group[@index][i_player][AT_FAIR][@i_group] = 2;
						}*/
					}
					if(get_char_info(i_player + 1, INFO_STR_NAME) == "Ori & Sein")
					{
						for(var i_group = 0; i_group < 11; i_group++)
						{
							player_id.nspecial_hbox_group[@index][i_player][AT_DSPECIAL][@i_group] = 0;
							player_id.nspecial_hbox_group_template[@index][i_player][AT_DSPECIAL][@i_group] = 0;
						}
					}
				}
				break;
			}
			case PS_ATTACHED_GROUND_ARMED:
			{
				macrostate = MS_ATTACHED_GROUND;
				rebuild_hbox_group_array(1);
				for(var i_player = 0; i_player < 4; i_player++)
				{
					if(get_char_info(i_player + 1, INFO_STR_NAME) == player_id.my_name)
					{
						for(var i_group = 0; i_group < 11; i_group++)
						{
							player_id.nspecial_hbox_group[@index][i_player][AT_FSTRONG][@i_group] = 2;
							player_id.nspecial_hbox_group[@index][i_player][AT_DAIR][@i_group] = 2;
							player_id.nspecial_hbox_group[@index][i_player][AT_FAIR][@i_group] = 2;
						}
					}
					if(get_char_info(i_player + 1, INFO_STR_NAME) == "Ori & Sein")
					{
						for(var i_group = 0; i_group < 11; i_group++)
						{
							player_id.nspecial_hbox_group[@index][i_player][AT_DSPECIAL][@i_group] = 0;
							player_id.nspecial_hbox_group_template[@index][i_player][AT_DSPECIAL][@i_group] = 0;
						}
					}
				}
				break;
			}
			case PS_ATTACHED_GROUND_FUSING:
			{
				macrostate = MS_ATTACHED_GROUND;
				rebuild_hbox_group_array(1);
				for(var i_player = 0; i_player < 4; i_player++)
				{
					if(get_char_info(i_player + 1, INFO_STR_NAME) == "Ori & Sein")
					{
						for(var i_group = 0; i_group < 11; i_group++)
						{
							player_id.nspecial_hbox_group[@index][i_player][AT_DSPECIAL][@i_group] = 2;
						}
					}
				}
				break;
			}
			case PS_ATTACHED_GROUND_TIMED_OUT:
			{
				macrostate = MS_ATTACHED_GROUND;
				rebuild_hbox_group_array(0);
				break;
			}
			case PS_ATTACHED_PLAYER:
			{
				macrostate = MS_ATTACHED_PLAYER;
				rebuild_hbox_group_array(1);
				break;
			}
			case PS_EXPLODING_UNATTACHED:
			case PS_EXPLODING_GROUND:
			case PS_EXPLODING_PLAYER:
			{
				macrostate = MS_EXPLODING;
				rebuild_hbox_group_array(1);
				break;
			}
			case PS_BASHED:
			{
				macrostate = MS_MISC;
				rebuild_hbox_group_array(1);
				for(var i_player = 0; i_player < 4; i_player++)
				{
					if(get_char_info(i_player + 1, INFO_STR_NAME) == "Ori & Sein")
					{
						for(var i_group = 0; i_group < 11; i_group++)
						{
							player_id.nspecial_hbox_group[@index][i_player][AT_DSPECIAL][@i_group] = 2;
						}
					}
				}
				break;
			}
			case PS_PLASMA_FIELD_REFLECTED:
			case PS_PLASMA_FIELD_DESTROYED:
			{
				macrostate = MS_MISC;
				rebuild_hbox_group_array(1);
				for(var i_player = 0; i_player < 4; i_player++)
				{
					if(get_char_info(i_player + 1, INFO_STR_NAME) == "Clairen")
					{
						for(var i_group = 0; i_group < 11; i_group++)
						{
							player_id.nspecial_hbox_group[@index][i_player][AT_DSPECIAL][@i_group] = 2;
						}
					}
				}
				break;
			}
			case PS_CLEANUP:
			{
				macrostate = MS_CLEANUP;
				rebuild_hbox_group_array(1);
				break;
			}
		}
		state_timer = 0;
		increment_timer = frame_advance;
	}

#define spawn_rune_fx(t_x, t_y, t_length, t_hsp, t_vsp, t_frame, t_type, t_special, t_alpha)
		ds_list_add(player_id.dspecial_fx_list_add, [t_length, t_length, t_x, t_y, t_hsp, t_vsp, t_frame, t_frame, t_type, t_special, t_alpha]);

#macro PS_UNATTACHED_UNARMED 10
#macro PS_UNATTACHED_ARMED 11
#macro PS_VANDA_UPLIFTED 12
#macro PS_VANDA_KICKED 13

#macro PS_ATTACHED_GROUND_ARMING 20
#macro PS_ATTACHED_GROUND_ARMED 21
#macro PS_ATTACHED_GROUND_FUSING 22
#macro PS_ATTACHED_GROUND_TIMED_OUT 23

#macro PS_ATTACHED_PLAYER 30

#macro PS_EXPLODING_UNATTACHED 71
#macro PS_EXPLODING_GROUND 72
#macro PS_EXPLODING_PLAYER 73

#macro PS_BASHED 80
#macro PS_PLASMA_FIELD_REFLECTED 81
#macro PS_PLASMA_FIELD_DESTROYED 82

#macro PS_CLEANUP 90

#macro MS_UNATTACHED 1
#macro MS_ATTACHED_GROUND 2
#macro MS_ATTACHED_PLAYER 3
#macro MS_EXPLODING 7
#macro MS_MISC 8
#macro MS_CLEANUP 9
