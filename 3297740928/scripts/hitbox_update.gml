//hitbox_update.gml

//slow down the projectile and destroy it once it reaches 0
if (attack == AT_FAIR){
if hbox_num == 1 {
hsp=hsp-0.7*spr_dir //0.7
	if (spr_dir == 1 && hsp <= 5){ //5
		destroyed = true;
	}
	else if (spr_dir == -1 && hsp >= -5){
		destroyed = true;
	}
	
	if (hitbox_timer >= 9){
		with (pHitBox){
		damage = 4;
		kb_value = 5;
		kb_scale = 0.3;
		hitpause = 5;
		}
	} //these stats get reset in attack_update.gml
	
    }
    if (was_parried) = true {
        if hbox_num == 1 {
            destroyed = true;
        }
    }
}

//Grenade Launch
if(attack == AT_NSPECIAL_AIR){
	//spawn explosion
	if(hbox_num == 1){
		if(explode){
			destroy_fx = 1;
			with(player_id) var explosion =  create_hitbox(AT_NSPECIAL_AIR, 2, floor(other.x), floor(other.y));
			with(player_id) sound_play(sound_get("sfx_grenadelaunchexplode"));
			explosion.spr_dir = spr_dir;
			explosion.player = player;
			explosion.can_hit_self = was_parried;
			destroyed = true;
		}else{
			//do ground bounce
			if(!free){
				vsp = old_vsp * -0.5;
				hsp *= 0.6;
			}else{
				old_vsp = vsp;
			}
			//smoke trail
			if(hitbox_timer % 3 == 0){
				with(player_id) var smoke = spawn_hit_fx(other.x, other.y, grenade_smoke);
				smoke.spr_dir = 1;
				smoke.draw_angle = point_direction(x, y, x+hsp, y+vsp) - 90;
			}
			
			if((hitbox_timer == length - 1) || instance_place(x + hsp, y, asset_get("par_block"))){
				explode = true;
			}
		}
	}else if(hbox_num == 2){
		if(hitbox_timer == length - 1){
			destroy_fx = player_id.grenade_dis;
			destroyed = true;
		}
		//spawn actual hits
		if((hitbox_timer - 1) % grenade_freq == 0){
			var nextnum = (hitbox_timer == (length - grenade_freq)? 4 : 3);
			if(nextnum == 4) with(player_id) sound_play(asset_get("sfx_ell_strong_attack_explosion"));
			with(player_id) var next =  create_hitbox(AT_NSPECIAL_AIR, nextnum, floor(other.x), floor(other.y));
			next.spr_dir = spr_dir;
			next.player = player;
			next.can_hit_self = was_parried;
		}
	}
}

//Flame Pillar
if(attack == AT_FSPECIAL){
	player_id.move_cooldown[AT_FSPECIAL] = 30;
	//spawn pillar
	if(hbox_num < 3){
		if(make_pillar){
			destroy_fx = 1;
			with(player_id) var pillar =  create_hitbox(AT_FSPECIAL, 3, floor(other.x), floor(other.y - 28));
			with(player_id) sound_play(sound_get("sfx_flamepillarhit"));
			pillar.spr_dir = spr_dir;
			pillar.player = player;
			pillar.can_hit_self = was_parried;
			destroyed = true;
		}else{
			if(!free || instance_place(x + hsp, y + vsp, asset_get("par_block"))){
				make_pillar = true;
			}
		}
	}else if(hbox_num == 3){
		if(hitbox_timer == length - 1){
			destroy_fx = player_id.fpillar_dis;
			destroyed = true;
		}
		//spawn actual hits
		if((hitbox_timer - 1) % pillar_freq == 0){
			var nextnum = (hitbox_timer == (length - pillar_freq)? 5 : 4);
			with(player_id) var next =  create_hitbox(AT_FSPECIAL, nextnum, floor(other.x), floor(other.y));
			next.spr_dir = spr_dir;
			next.player = player;
			next.can_hit_self = was_parried;
		}
	}
}

//Stealth Burst
if (attack == AT_FSPECIAL_2){
if (hbox_num == 2){
        hsp = clamp(hsp, -18, 18);
        if (spr_dir == 1){
            hsp += 0.75
        }
        else{
            hsp -= 0.75
        }
    }
if (hbox_num == 3){
	if (hitbox_timer == 5){
		with(player_id) var hbox2 = create_hitbox(AT_FSPECIAL_2, 1, Sburst_x+2*spr_dir, Sburst_y-38);
		hbox2.spr_dir = spr_dir;
  		hbox2.player = player;
   		hbox2.can_hit_self = was_parried;
		}
	}
}

//Gunner Missile
if (attack == AT_FSPECIAL_AIR){
	if (hbox_num == 1){
		//speed behavior
		hsp = clamp(hsp, -18, 18);
		hsp *= 1.05;
	}
	
	if (hbox_num == 2){
		//speed behavior
		if(hitbox_timer > 70){
		hsp *= 0.95;
		vsp *= 0.95;
		}
		
		//find target
		if(curr_target == noone){
		with (asset_get("oPlayer")) {
			if (player != other.player && collision_circle( other.x, other.y, 100, self, true, false)){
			other.curr_target = self;
				
			}
		}
		}else{
			
			var tx = curr_target.x
			var ty = curr_target.y - curr_target.char_height/2;
			
			//get angle between target and projectile
			if((hsp > 0 && x < tx) or (hsp < 0 && x > tx)){
			missile_angle = point_direction(x, y, tx, ty);
			}
	
	//visual cleanup		
	if(spr_dir == 1){
		if(missile_angle >= 60 and missile_angle < 180){
			missile_angle = 60;
		}if(missile_angle <= 300 and missile_angle > 180){
			missile_angle = 300;
		}
		
		if(missile_angle > 180){
			missile_angle -= missile_angle + (360-missile_angle);
		}
    }
    
    if(spr_dir == -1){
    	if(missile_angle < 120){
    		missile_angle = 120;
    	}if(missile_angle > 240){
    		missile_angle = 240;
    	}
    }
    
			//print(missile_angle);
			//print(proj_angle);
		
	
	//lose target if out of range
		with (asset_get("oPlayer")) {
			if (player == other.curr_target && !collision_circle( other.x, other.y, 90, self, true, false)){
			other.curr_target = noone;
				
			}
		}
		
		//autoaim
		if(spr_dir == 1){
		proj_angle = lerp(proj_angle, missile_angle, 0.075);
		}else{
		proj_angle = lerp(proj_angle, missile_angle-180, 0.075);	
		}
		vsp = lerp(vsp, lengthdir_y(5, missile_angle), 0.09);
		}
		
		
		if(!free){
			destroyed = true;
		}
	}
	
		if(hitbox_timer = length){
		spawn_hit_fx(x, y, 139); 
		}
}

//Lunar Launch
if (attack == AT_USPECIAL){
	if (hbox_num == 1) {
		if (!free == true){
			destroyed = true;
		}
	}
}

//Bomb Drop
if (attack == AT_DSPECIAL_2){
	if (hbox_num == 1) {
		
		//doesnt have hitbox immediately
		if(hitbox_timer < 4){
        	image_xscale = 0;
        	image_yscale = 0; 
        	bomb_x = 0;
        	bomb_y = 0;
		}if(hitbox_timer = 4){
        	image_xscale = 0.1;
        	image_yscale = 0.1; 			
		}
		
		//explosion
		if(hitbox_timer = length-7 || player_id.KILL == true){
        	var bombed = spawn_hit_fx(x, y, BdropExplode); 
        	bomb_x = bombed.x;
        	bomb_y = bombed.y;
        	sprite_index = asset_get("empty_sprite");
        	destroyed = true;
        	create_hitbox(AT_DSPECIAL_2, 2, bomb_x, bomb_y);
		}

		/*
		ORIGINAL CODE NOT EDITED BY INFINITE (except the hit fx lol)
		//explosion
		if(hitbox_timer = length-4){
			hsp = 0;
			vsp = 0;
			projectile_parry_stun = true;
        	image_xscale = 0.3;
        	image_yscale = 0.3; 
        	sprite_index = asset_get("empty_sprite");
        	spawn_hit_fx(x, y, BdropExplode); 
		}
		*/
		//bouncing mechanic
		if(vsp != 0){
			init_vsp = vsp;
		}else{
		if(bounced < 3){
			vsp = (init_vsp/2)*-1;
			bounced += 1;
			//hsp *= 0.9;
			sound_play(sound_get("sfx_bombdropground"));
		}else{
			hsp *= 0.95;
		}
		}
		if (player_id.DIE == 1){
			hitbox_timer = length-8;
		}
	}
	if (hbox_num == 2) {
		
		//doesnt have hitbox immediately
		if(hitbox_timer < 6){
        	image_xscale = 0;
        	image_yscale = 0; 
		}if(hitbox_timer = 6){
        	image_xscale = 0.4;
        	image_yscale = 0.4;
        	sound_play(sound_get("sfx_bombdropexplode"));
		}
	}
}