if can_equip_gun_timer > 0
{
	gun_all_cooldown = 2;
	can_equip_gun_timer -= 1;
}

//This disallows you from entering STEADY AIM while in the air
if free
{
	move_cooldown[AT_NSPECIAL_2] = 2;
}


if (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)
{
	if (attack == AT_USPECIAL)
	{
		
		if (window == 2 and window_timer == 0)
		{
			uspecial_proj = instance_create(x,y-1,"obj_article1");
			uspecial_proj.spr_dir = spr_dir;
			uspecial_proj.let_go = !free; // if on the ground, let the thing go
			if(!free)
			{
				var dist = 5*spr_dir;
				spawn_hit_fx(x+dist,y,uspecialdust_vfx)
				with (spawn_hit_fx(x+dist,y,uspecialdust_vfx))
				{
					spr_dir = -other.spr_dir;
				}
			}
		}
		
		if (window == 5 and !hitpause and window_timer == 0 and instance_exists(uspecial_proj))
		{
			create_hitbox(AT_USPECIAL,3,x,y)
			uspecial_proj.let_go = true;
			uspecial_proj.vsp = 10;
		}
	}
}


//Try to go into gun mode
if (!gun and is_special_pressed(DIR_NONE) and (gun_all_cooldown == 0 or depleted) )
{
	if !depleted
	{
		//print("fuck you")
		reticule_state = 0;
		spawn_hit_fx(x,y-(char_height/2),gun_stance_vfx[gun]);
		gun = 1;
		reticule_frame = 0;
		has_airdodge_buffer = has_airdodge;
	}
	else
	{
		//print("click clack")
		if !exclamation_show
		{
			sound_play(sound_get("glucky_click"));
		}
		exclamation_show = true;
	}
}


// Fill up concentration if you haven't been depleted
if !depleted and ((!hitpause and gun) or !gun)
{
	var new_concentration = concentration - (toPlusMinus(gun)*0.2) - (steady_anim*0.6)
	
	concentration = clamp(new_concentration, 0, 100);
}

//if you have no concentration, make the meter depleted.
if (concentration == 0)
{
	depleted = true;
	spawn_hit_fx(x,y-(char_height/2),gun_stance_vfx[gun]);
	gun = 0;
	has_airdodge = has_airdodge_buffer;
	reticule_state = 2;
	reticule_frame = 16;
	sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,0.6);
	
	//punishment hitbox for steady aim since I really don't care
	if steady_anim
	{
		var punishment_hitbox = create_hitbox(AT_NSPECIAL_2,2,x,y);
		for (var i = 1; i < 5; i++)
		{
			if i != player
			{
				punishment_hitbox.can_hit[i] = false;
			}
		}
		punishment_hitbox.can_hit_self = true;
	}
	steady_anim = false;
}

if (depleted)
{
	
	move_cooldown[AT_FSTRONG] = 2;
	move_cooldown[AT_USTRONG] = 2;
	move_cooldown[AT_DSTRONG] = 2;
	move_cooldown[AT_NSPECIAL] = 2;
	
	gun_all_cooldown = 2;
	concentration = min(concentration + (100/depletion_cooldown), 100);
	if (concentration == 100)
	{
		depleted = false;
	}
}

shown_concentration = lerp(shown_concentration, concentration, 0.7);

//INTRO
if state == PS_SPAWN
{
    if (introTimer2 < introAnimFrameLength)
    {
        introTimer2++;
    }
    else
    {
        introTimer2 = 0;
        introTimer++;
        if(introTimer == 4)
            sound_play(asset_get("sfx_forsburn_cape_swipe"));
        if(introTimer == 6)
            sound_play(asset_get("sfx_forsburn_reappear"));
    }
}

with (hit_fx_obj)
{
	if player_id == other
	{
		if sprite_index == sprite_get("vfx_bubbles") or sprite_index == sprite_get("vfx_bighit")
		{
			if ("ang" not in self)
			{
				ang = random_func(1 + (other.x mod 9), 360, true);
				draw_angle = ang;
			}
		}
		else if sprite_index == sprite_get("vfx_nspecial_enter") or sprite_index == sprite_get("vfx_nspecial_exit")
		{
			x = other.x + other.hsp;
			y = other.y - (other.char_height/2) + other.vsp;
		}
	}

}


if (reticule_state > -1)
{
	var prev = (reticule_state > 0) ? (reticule_timings[reticule_state-1]) : 0;
	reticule_frame += (reticule_timings[reticule_state] - prev)/(reticule_frames[reticule_state])
	
	if (reticule_frame >= reticule_timings[reticule_state])
	{
		switch (reticule_state)
		{
			case 0:
				reticule_frame = reticule_timings[reticule_state];
				reticule_state++;
			break;
			case 1:
				reticule_frame = reticule_timings[reticule_state-1];
			break;
			case 2:
				reticule_state = -1
			break;
		}
	}
}


var xx = x;
x=1000000

reticule_lockedplayer = instance_exists(scapegoat_obj) ? scapegoat_obj : instance_nearest(xx,y,asset_get("oPlayer"));
follow_cooldown = max(follow_cooldown-1,0);

if reticule_lockedplayer != self and gun and follow_cooldown == 0 and reticule_state != -1 and reticule_state != 2
{
	var radius = 80;
	var target_distance = point_distance(reticule_position[0],reticule_position[1],reticule_lockedplayer.x,reticule_lockedplayer.y-(reticule_lockedplayer.char_height/2));
	var x_point = reticule_lockedplayer.x; 
	var y_point = (reticule_lockedplayer.y - (reticule_lockedplayer.char_height/2));
	if target_distance > radius
	{
		var dir = point_direction(reticule_position[0],reticule_position[1],reticule_lockedplayer.x,reticule_lockedplayer.y-(reticule_lockedplayer.char_height/2))
		
		x_point = reticule_position[0]+lengthdir_x(radius,dir);
		y_point = reticule_position[1]+lengthdir_y(radius,dir);
	}
	
	
	var tarhit, cursed, ret_close
	tarhit = reticule_lockedplayer == scapegoat_obj ? true : (reticule_lockedplayer.state_cat == SC_HITSTUN)
	cursed = reticule_lockedplayer == scapegoat_obj ? true : (reticule_lockedplayer.fspecial_curse_player == id)
	ret_close = (reticule_state == 2)
	
	var amount;
	if !steady_anim
	{
		amount = 0.04 + (0.03*tarhit) + (.1*cursed);
		
		reticule_position[0] = lerp(reticule_position[0], x_point, amount)
		reticule_position[1] = lerp(reticule_position[1], y_point, amount)
	}
	else
	{
		amount = 0.2 + (.1*cursed);
		
		reticule_position[0] = lerp(reticule_position[0], x_point, amount);
		reticule_position[1] = lerp(reticule_position[1], y_point, amount);
	}
		
}

x = xx;

var color, out;
color = get_player_color(player)
out = [get_color_profile_slot_r(color, 3),get_color_profile_slot_g(color, 3),get_color_profile_slot_b(color, 3)]

for(var i=0; i < instance_number(oPlayer); i++)
{
  var p = instance_find(oPlayer,i);
  if p != self
  {
	  with p
	  {
	  	if (fspecial_curse_player == other)
		{
			fspecial_curse_timer = max(0,fspecial_curse_timer-(1*!hitpause) );
			//print(fspecial_curse_timer)
			outline_color = out
			
			if fspecial_curse_timer == 0
			{
				fspecial_curse_player = noone;
				outline_color = [0,0,0]
			}
			
			with other
			{
				if (random_func(10,10,true) == 2)
				{
					var newpart = {
						owner : other.id,
						frame : 0,
						sprite : sprite_get("vfx_curse_particle" + string(random_func(2, 2, true) + 1)),
						imgspd : 0.3,
						position : [other.x - 30 + floor(random_func(9, 60, false)), other.y - (other.char_height/2) - 30 + floor(random_func(10, 40, false))]
					}
					ds_list_add(particles, newpart)
				}
			}
			
			if (state == PS_RESPAWN or state == PS_DEAD)
			{
				fspecial_curse_player = noone;
				fspecial_curse_timer = 0;
				outline_color = [0,0,0];
			}
		}
	}
  }
}


//if (ammo == max_ammo) move_cooldown[AT_TAUNT_2] = 2;

if (gun)
{
	parry_cooldown = 5;
	has_airdodge = false;
	
	move_cooldown[AT_FSTRONG] = 2;
	move_cooldown[AT_USTRONG] = 2;
	move_cooldown[AT_DSTRONG] = 2;
	
	if !steady_anim
	{
		if (((up_strong_pressed or down_strong_pressed or left_strong_pressed or right_strong_pressed) and gun_all_cooldown == 0) and state_cat != SC_HITSTUN)
		{
			gun_all_cooldown = 30;
			if ammo > 0
			{
				follow_cooldown = follow_max_cooldown;
	            sound_play(asset_get("sfx_mol_flare_explode"));
				gunshot_position = [floor(reticule_position[0]),floor(reticule_position[1])]
				ammo_timer = ammo_max_timer;
				var i = spawn_hit_fx(gunshot_position[0],gunshot_position[1],gun_stance_vfx[2]);
				i.depth = depth - 4
				
				// for (var i = 0; i < ds_list_size(positions_list); i++)
				// {
				// 	var found = false; 
				// 	 var position_data = positions_list[| i];
				// 	 //print(string(position_data.at_index) + " ?= " +string(sprite_index));
				// 	 if sprite_index == position_data.at_index
				// 	 {
				// 	 	//print("found")
					 	
				// 	 	var frame_data = position_data.data
					 	
				// 	 	for (var j = 0; j < array_length_1d(frame_data)-1; j+=2)
				// 	 	{
				// 	 		//print(floor(image_index mod image_number))
					 		
				// 	 		if frame_data[j] == floor(image_index mod image_number)
				// 	 		{
				// 	 			var array_to_access = frame_data[j+1];
				// 	 			with (spawn_hit_fx(x+(array_to_access[0]*spr_dir),y+array_to_access[1],gunshot_vfx)) depth = other.depth - 3;
				// 	 			found = true;
				// 	 		}
				// 	 	}
				// 	 }
					 
				// 	 if found break;
				// }
				
				
				ammo--;
			}
			else
			{
				if !free and !depleted
				{
					set_attack(AT_TAUNT);
				}
				else
				{
					sound_play(sound_get("glucky_click"));
					exclamation_show = true;
					exclamation_frame = 0;
				}
			}
		}
	}
	
    if ammo_timer == 1
    {
        //concentration -= 20;
        sound_play(sound_get("glucky_gunshot"),false,noone,0.65,1.2)
        quick_shot_hitbox = create_hitbox(AT_NSPECIAL, 1, gunshot_position[0],gunshot_position[1]);
    }
    
	ammo_timer = max(ammo_timer-1, 0)
	
	
	if (shield_pressed and !steady_anim and !gun_all_cooldown)
	{
		if (state == PS_IDLE or state == PS_IDLE_AIR or state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_PARRY_START)
		{
			set_attack(AT_EXTRA_1)
			gun_all_cooldown = 60;
		}
		else
		{
			//print('go back I want to be normal')
			spawn_hit_fx(x,y-(char_height/2),gun_stance_vfx[gun]);
			gun = 0;
			reticule_state = 2;
			reticule_frame = 16;
			has_airdodge = has_airdodge_buffer;
		}
		// if (state == PS_IDLE)
		// {
		// 	set_attack(AT_EXTRA_1);
		// }
		// else
		// {
		// 	gun = 0;
		// }
		// has_airdodge = true;
		// gun_all_cooldown = 120;
	}
	
}
else
{
	if reticule_state == -1 reticule_position = [x,y];
}
gun_all_cooldown = max(gun_all_cooldown-1,0)


if exclamation_show
{
	var maxval = sprite_get_number(sprite_get("exclamation"));
	
	exclamation_frame = min(exclamation_frame+exclamation_speed,maxval);
	if exclamation_frame == maxval
	{
		exclamation_show = false;
		exclamation_frame = 0;
	}
}


update_particles();

#define toPlusMinus(n)

return (n-.5)*2; 


#define update_particles

for (var i = 0; i < ds_list_size(particles); i++)
{
	particles[| i].frame += particles[| i].imgspd
	if particles[| i].frame > sprite_get_number(particles[| i].sprite) - 1
	{
		ds_list_delete(particles, i)
	}
}