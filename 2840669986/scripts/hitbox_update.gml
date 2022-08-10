//hitbox_update.gml

//Pulls the opponent (windbox)
if (attack == AT_DSPECIAL_2){
	if (hbox_num == 1){
		with (oPlayer) 
		    if (place_meeting(x, y, other)) {
		        x -= 3*other.spr_dir;
		   }
	}
	if (hbox_num == 2){
		can_hit_self = true;
		if (was_parried){
			destroyed = true;
		}
	}
	if (hbox_num > 2){
		if (player_id.state == PS_HITSTUN)
		can_hit_self = true;
	}
	
	if (player_id.vacuum_myself == true){
		damage = 0;
		hitstun_factor = -1;
	}
	
}

if (attack == AT_NSPECIAL && hbox_num != 5){
	water_proj_timer++;
	proj_angle += (-2 * (spr_dir));
	clamp(proj_angle, -15, 15)
	
	if(hbox_num == 6){
		x = player_id.waterProjX
		y = player_id.waterProjY
	}
	
	if (hbox_num == 1){//normal proj
		if (water_proj_was_charged == false){
			water_proj_destroy_sfx = player_id.sfx_star_allies_clean_pitch_water
		} else if (water_proj_was_charged == true){
			water_proj_destroy_sfx = player_id.sfx_star_allies_clean_pitch_water_charged
		}
	} else if (hbox_num > 1 && hbox_num < 5){//nspec+dpsec projs
		water_proj_was_charged = false;
		water_proj_destroy_sfx = player_id.sfx_star_allies_clean_pitch_water
	}
	
	if (hbox_num == 1){//normal proj
	
		player_id.waterProjX = x;
		player_id.waterProjY = y;
		
		if (water_proj_timer == 5){
			water_proj_timer = 0;
			var travel_fx = spawn_hit_fx(x+(-22*spr_dir)+(proj_angle*-0.4),y-18+(vsp*1.3),player_id.water_proj_travel_vfx);
			var travel_fx2 = spawn_hit_fx(x+(0*spr_dir)+(proj_angle*-0.4),y-2+(vsp*1.3),player_id.water_proj_travel_vfx);
			var travel_fx3 = spawn_hit_fx(x+(-16*spr_dir)+(proj_angle*-0.4),y+8+(vsp*1.3),player_id.water_proj_travel_vfx);
			travel_fx.draw_angle += (proj_angle + (-90*spr_dir))
			travel_fx2.draw_angle += (proj_angle + (-90*spr_dir))
			travel_fx3.draw_angle += (proj_angle + (-90*spr_dir))
			travel_fx.spr_dir = spr_dir;
			travel_fx2.spr_dir = spr_dir;
			travel_fx3.spr_dir = spr_dir;
		}
	} else if (hbox_num > 1 && hbox_num < 5){//nspec+dpsec projs
		if (water_proj_timer == 5){
			water_proj_timer = 0;
			var travel_fx = spawn_hit_fx(x+(-16*spr_dir)+(proj_angle*-0.4),y-8+(vsp*1.3),player_id.water_proj_travel_vfx);
			var travel_fx2 = spawn_hit_fx(x+(2*spr_dir)+(proj_angle*-0.4),y-0+(vsp*1.3),player_id.water_proj_travel_vfx);
			travel_fx.draw_angle += proj_angle + (-90*spr_dir)
			travel_fx2.draw_angle += proj_angle + (-90*spr_dir)
			travel_fx.spr_dir = spr_dir;
			travel_fx2.spr_dir = spr_dir;
		}
	}
	
	if (hbox_num == 1){
		var destroy_fx_ground_offset = 16;
	} else {
		var destroy_fx_ground_offset = 10;
	}
	
	//Ground
	if (place_meeting(x+(0*spr_dir),y,(asset_get("par_block")))){
		//print("hit ground")
		if (hbox_num != 5){
			destroy_fx = player_id.water_proj_land_vfx;
		} else {
			destroy_fx = 150;
		}
		if (player_id.nspecialProjDropletRune){
			if(hbox_num == 1){
				additional_boost_offset = (12*player_id.nspecialProjDropletRune);
			} else {
				additional_boost_offset = (0*player_id.nspecialProjDropletRune);
			}
		} else {
			additional_boost_offset = 0;
		}
		sound_play(water_proj_destroy_sfx);
		var water = spawn_hit_fx(x,y+destroy_fx_ground_offset+additional_boost_offset,destroy_fx);
		if (hbox_num == 1){
			create_hitbox(AT_NSPECIAL, 5, x+0*spr_dir, y+additional_boost_offset);
			if(player_id.nspecialProjDropletRune){
				var waterDroplet1 = create_hitbox(AT_NSPECIAL, 4, x+6, y-10);
				var waterDroplet2 = create_hitbox(AT_NSPECIAL, 4, x-6, y-10);
				waterDroplet1.spr_dir = -1;
				waterDroplet2.spr_dir = 1;
				if (spr_dir == 1){
					waterDroplet1.hsp *= -1;
				} else {
					waterDroplet2.hsp *= -1;
				}
			}
		}
		player_id.waterProjDead = true;
		instance_destroy();
		exit;
	} else {
		destroy_fx = 150;
	}
	//Wall
	if (place_meeting(x+(6*spr_dir),y-6,(asset_get("par_block")))){
		//print("hit a wall")
		destroy_fx = 150;
		sound_play(water_proj_destroy_sfx);
		var water = spawn_hit_fx(x,y,destroy_fx);
		water.delay = 8.58;
		if (hbox_num == 1){
			if(player_id.nspecialProjDropletRune){
				var waterDroplet1 = create_hitbox(AT_NSPECIAL, 2, x-(0*spr_dir), y-10);
				var waterDroplet2 = create_hitbox(AT_NSPECIAL, 3, x-(0*spr_dir), y-10);
				var waterDroplet3 = create_hitbox(AT_NSPECIAL, 4, x-(0*spr_dir), y-10);
				waterDroplet1.hsp *= -1;
				waterDroplet2.hsp *= -1;
				waterDroplet3.hsp *= -1;
			}
		}
		instance_destroy();
		exit;
	}
	
	if(projAngleTickRotateBack == -1 && hsp > 0){
		projAngleTickRotateBack = 1;
	}
	
	if(was_parried == true){
		//spr_dir *= -1;
		if(hsp < 0){//>
			projAngleTickRotateBack *= -1;
		}
		hsp *= 1.25;
		vsp = -4.5;
		was_parried = false;
		hitbox_timer = 0;
		damage += 4;
	}
	//Blastzone stuffs lol
	if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){//>
		instance_destroy();
		exit;
	}
}

