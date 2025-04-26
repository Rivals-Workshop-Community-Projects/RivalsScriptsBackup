//

if attack == AT_NSPECIAL {
	proj_angle = spr_dir?point_direction(0,0,hsp,vsp):point_direction(hsp,vsp,0,0);
	if hitbox_timer%7 == 0 { 
		var trail = spawn_hit_fx(x-16*spr_dir,y,player_id.fx_nspecial_trail);
		trail.depth = depth+1;
		if (was_parried) trail.spr_dir = -spr_dir;
		else trail.spr_dir = spr_dir;
		trail.hsp = hsp;
	}
	if destroyed {
		sound_stop(sound_get("sfx_hellfire_hit"));
		sound_play(sound_get("sfx_hellfire_hit"),0,0,.5,.8);
	}
	//if (hbox_num == 1) proj_angle = 30*spr_dir;
	//if (hbox_num == 3) proj_angle = -30*spr_dir;
}

if attack == AT_NSPECIAL_2 {
	hsp = lerp(0,3,min(hitbox_timer,60)/60)*sign(spr_dir);
	draw_xscale = lerp(.5,1,min(hitbox_timer,180)/180);
	draw_yscale = draw_xscale;
	proj_angle -= sign(hsp);
} 

if attack == AT_DATTACK {
	if bat_trail_cd <= 0 {
		if random_func_2(hbox_num,4,true) == 0 && hitbox_timer < length-10 { 
			var angle = spr_dir == 1 ? random_func_2(hbox_num,60,true)-30 : random_func_2(hbox_num,60,true)+150;
			var trail = spawn_hit_fx(x-16*spr_dir,y,player_id.fx_bat_small);
			trail.depth = depth+1;
			trail.spr_dir = spr_dir;
			trail.hsp = lengthdir_x(hsp*spr_dir,angle);
			trail.vsp = lengthdir_y(hsp*spr_dir,angle);
			bat_trail_cd = 10;
		}
	} else {
		bat_trail_cd--;
	}
	if (player_id.dattack_hit > 0){
		player_id.dattack_hit -= 0.1;
		hsp = 0;
		vsp = 0;
		hitbox_timer -= 1;
	} else {
		var accel = 0;
		if (hitbox_timer < 5) accel = -1*spr_dir; else accel = 1*spr_dir;	
		stored_speed += accel;
		stored_speed = spr_dir == 1 ? clamp(stored_speed,-9,20) : clamp(stored_speed,-20,9);
		if (hitbox_timer < 5) {
			stored_hsp = stored_speed;
		} else {
			stored_hsp = lengthdir_x(stored_speed*spr_dir,point_direction(x,y,player_id.x,player_id.y+y_pos));
			stored_vsp = lengthdir_y(stored_speed*spr_dir,point_direction(x,y,player_id.x,player_id.y+y_pos));
		}
		hsp = stored_hsp;
		vsp = stored_vsp;
	}
	if hitbox_timer == 10 for(var i = 0; i < 20; i++) can_hit[i] = true;
	if player_id.dattack_has_hit for(var i = 0; i < 20; i++) can_hit[i] = false;
	if place_meeting(x+hsp,y,asset_get("par_block")) hsp = 0;
	if place_meeting(x,y,player_id) && player_id.window == 4 {
		with player_id {
			if free {
				hsp = 0;
				vsp = -3;
				ignore_camera = 0;
				if dattack_hit <= 0 {
					spawn_hit_fx(x+12*spr_dir,y-56,fx_bat_moon_glow).hit_length = 16;
					var bat_moon = spawn_hit_fx(x+12*spr_dir,y-56,fx_bat_moon2);
					bat_moon.hit_length = 12;
					bat_moon.depth = depth-1;
					sound_play(sound_get("sfx_bat_moon_transform"));
					sound_play(sound_get("sfx_bats_flap"),0,0,.3);
					sound_play(sound_get("sfx_bats_squeak_swarm"+string(random_func_2(0,3,true)+1)),0,0,.4);
					for (var i = 0; i < 5; i++){
						var bat = create_hitbox(AT_EXTRA_5,random_func_2(10+i,2,true)+1,x+random_func_2(i,256,true)-128,y-round(lerp(168,56,i/5)));
						var dirto = point_direction(bat.x,bat.y,x,y);
						bat.length = bat.length-5;
						bat.depth = depth+1;
						bat.hsp = lengthdir_x(random_func_2(20+i,2,false)+2,dirto);
						bat.vsp = lengthdir_y(random_func_2(20+i,2,false)+2,dirto);
						bat.grav = -.05;
					}
				}
				window = 8;
			} else {
				window = 5;
				window_timer = 0;
			}
		}
	}
}

if attack == AT_DAIR {
	if free && hitbox_timer < 16 hitbox_timer = 16;
	if hitbox_timer < 16 {
		if hitbox_timer % 3 == 0 {
			var sparks = spawn_hit_fx(x, y+32, player_id.fx_shockwave_sparks);
				sparks.spr_dir = spr_dir;
				sparks.vsp = -2;
		}
	} else {
		sprite_index = sprite_get("fx_shockwave_dissipate");
		image_index = lerp(0,4,hitbox_timer/4);
	}
}

if attack == AT_FSTRONG {
	if hbox_num == 1 {
		image_xscale = player_id.fstrong_laser/200;
		image_yscale = 4/200;
		//image_yscale = (hitbox_timer < 4 ? lerp(0,1,hitbox_timer/4) : lerp(1,0,(hitbox_timer-4)/9));
		image_angle = player_id.spr_dir ? lerp(-70,-15,hitbox_timer/13) : lerp(250,195,hitbox_timer/13);
		
		x = player_id.x +12*player_id.spr_dir +lengthdir_x(player_id.fstrong_laser,image_angle)/2; 
		y = player_id.y -72 +lengthdir_y(player_id.fstrong_laser,image_angle)/2; 
	}
	if hbox_num == 2 {
		if extra_delay > 0 {
			hitbox_timer = 0;
			
			image_index = 0; 
			draw_yscale = 0;
			
			extra_delay--;
		} else {
			if hitbox_timer < 6 {
				image_index = 0; 
				draw_yscale = 0;
			} else {
				if hitbox_timer == 8 {
					image_yscale = 92/200;
					draw_yscale = 1;
					
					sound_play(sound_get("sfx_hellfire"));
					shake_camera(2,2);
				}
				if image_index > 3 image_yscale = 0;
				
				image_index = lerp(0,8,(hitbox_timer-6)/22);
				if hitbox_timer%5 == 0 && hitbox_timer < 20 {
					var angle = spr_dir == 1 ? random_func_2(hitbox_timer,35,true)+40 : random_func_2(hitbox_timer,35,true)+115;
					var embers = spawn_hit_fx(x-ease_sineInOut(-16,16,random_func_2(0,16,true),16),y+36,player_id.fx_nspecial2_trail);
					embers.spr_dir = random_func_2(1,2,true)==0?-1:1;
					embers.depth = depth+2;
					embers.draw_angle = 90;
					embers.hsp = lengthdir_x(5,angle);
					embers.vsp = lengthdir_y(5,angle);
					embers.grav = .2;
				}
			}
		}
	}
}

if attack == AT_USTRONG {
	if hbox_num == 1 {
		if state == 0 {
			var trail = spawn_hit_fx(x,y+48,player_id.fx_fatal_ray_trail);
			trail.depth = depth+1;
			trail.image_yscale = vsp;
			if y <= 0 {
				y = 0;
				hitbox_timer = 0;
				state = 1;
			}
		} else if state == 1 {
			if hitbox_timer % 6 == 0 {
				create_hitbox(AT_USTRONG,2,x+round(lerp(0,-144,(falling_arrows+1)/4)),y);
				create_hitbox(AT_USTRONG,2,x+round(lerp(0,144,(falling_arrows+1)/4)),y);
				falling_arrows++;
				if falling_arrows >= 3 { destroyed = 1; }
			}
			/*if hitbox_timer % 4 == 0 {
				create_hitbox(AT_USTRONG,2,x+round(ease_sineInOut(-96,96,random_func_2(0,192,true),192)),y);
				falling_arrows++;
				if falling_arrows >= 6 { destroyed = 1; }
			}*/
		}
	}
	if hbox_num == 2 {
		if !free {
			var explosion = create_hitbox(AT_USTRONG,3,x,y);
			explosion.spr_dir = random_func_2(0,2,true) == 0 ? -1 : 1;
			var i = 0;
			repeat(4){
				var trail = spawn_hit_fx(x+ease_sineInOut(32,-32,random_func_2(i,40,true),40),y-16,player_id.fx_fatal_ray_debris_longer);
				trail.depth = depth-1;
				trail.hsp = lengthdir_x(random_func_2(20+i,3,false)+7,lerp(80,100,random_func_2(i,40,true)/40));
				trail.vsp = lengthdir_y(random_func_2(20+i,3,false)+7,lerp(80,100,random_func_2(i,40,true)/40));
				trail.grav = .45;
				trail.draw_angle = random_func_2(10+i,360,true);
				i++;
			}
			shake_camera(3,2);
			sound_stop(sound_get("sfx_fatal_ray_land"));
			sound_play(sound_get("sfx_fatal_ray_land"),0,0,.75);
			destroyed = 1;
		} else {
			if hitbox_timer%2 == 0 { 
				var trail = spawn_hit_fx(x+random_func_2(0,32,true)-16,y-random_func_2(0,64,true),player_id.fx_fatal_ray_debris);
				trail.depth = depth-1;
				trail.hsp = lengthdir_x(5,random_func_2(2,60,true)+60);
				trail.vsp = lengthdir_y(5,random_func_2(2,60,true)+60);
				trail.grav = .1;
				trail.draw_angle = random_func_2(1,360,true);
			}
		}
	}
	if hbox_num == 3 {
		image_index = ease_sineOut(0,7,hitbox_timer,20);
		if image_index >= 4 image_yscale = 0;
		if (hitbox_timer > 6) hit_priority = 0;
	}
}

if attack == AT_TAUNT {
	if place_meeting(x,y,asset_get("par_block")){
		sound_play(sound_get("sfx_goblet_impact"));
		destroyed = 1; 
	}
	if destroyed {
		repeat(3){
			var trail = spawn_hit_fx(x+ease_sineInOut(8,-8,random_func_2(i,40,true),40),y,player_id.fx_glass_part[i]);
			trail.depth = depth+1;
			trail.hsp = lengthdir_x(random_func_2(20+i,2,false)+2,lerp(80,100,random_func_2(i,40,true)/40));
			trail.vsp = lengthdir_y(random_func_2(20+i,2,false)+2,lerp(80,100,random_func_2(i,40,true)/40));
			trail.grav = .25;
			trail.draw_angle = random_func_2(10+i,360,true);
			if i spawn_hit_fx(x,y-8,player_id.fx_blood_hit1);
			i++;
		}
	}
}

if attack == AT_EXTRA_5 {
	var bat_scale = lerp(1,0,(length-hitbox_timer)*0.1);
	//print(bat_scale)
	
	if(bat_scale > 0){
		draw_yscale += bat_scale/5;
		if(draw_xscale > 0){
			draw_xscale -= bat_scale/5;
		} else {
			draw_xscale += bat_scale/5;
		}
	} else {
		if sign(hsp) != 0 draw_xscale = sign(hsp);
	}
}