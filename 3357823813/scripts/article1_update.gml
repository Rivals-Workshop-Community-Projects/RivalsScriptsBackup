switch type {
	case 0:
		if (state_timer == 0) {
			state = 0;
			depth = -7;
			image_alpha = 1;
			orb_sound = sound_play(asset_get("sfx_kragg_roll_loop"),1,0,.2,.8);
			orb_hitbox = create_hitbox(AT_NSPECIAL_2, 1, x, y);
			orb_hitbox.parent = self;
		}
		image_angle += -1*spr_dir;
		//print(hitstop)
		if (state_timer >= 0){
			if (instance_exists(orb_hitbox)){
				orb_hitbox.x = x;
				orb_hitbox.y = y;
				orb_hitbox.image_xscale = image_xscale/1.7;
				orb_hitbox.image_yscale = image_yscale/1.7;
				hitbox_timer = 12;
				if (orb_hitbox.was_parried == true){
					shoulddie = true;
				}
			}
			else {
				if hitstop <= 0 hitbox_timer--;
				if (hitbox_timer == 0) {
					orb_hitbox = create_hitbox(AT_NSPECIAL_2, 1, x, y);
					orb_hitbox.parent = self;
				}
			}
		}
		image_blend = state_timer%5 < 2 ? c_black : c_white;
		if state_timer%5 == 0 {
			var scale = (sprite_get_width(sprite_index)+8) / sprite_get_width(sprite_index);
			var glow = spawn_hit_fx(x+hsp,y+vsp,player_id.fx_nspecial2_glow);
			glow.depth = depth+1;
			if (state_timer < 105) glow.depth = -6;
			if (state_timer >= 105) glow.depth = 1;
			glow.spr_dir = scale*image_xscale*spr_dir;
			glow.image_yscale = scale*image_yscale;
			
			var angle = random_func_2(0,180,true)-90;
			var trail = spawn_hit_fx(x-lengthdir_x(56*image_xscale,angle)*spr_dir,y+lengthdir_y(56*image_xscale,angle),player_id.fx_nspecial2_trail);
			if (state_timer < 105) trail.depth = -6;
			if (state_timer >= 105) trail.depth = 1;
			trail.spr_dir = -1;
			trail.draw_angle = 90;
			trail.hsp = hsp/4;
			trail.grav = -.1;
		}
		if (state_timer >= 110) depth = 0;

		if (state == -1){
			x = player_id.x-36*spr_dir;
			y = player_id.y-40;
			if state_timer > -10 { 
				image_xscale = .4; 
				image_yscale = image_xscale; 
			}
			if state_timer%2 == 0 {
				var spark = spawn_hit_fx(x+random_func_2(0,32,true)-16,y+random_func_2(1,32,true)-16,player_id.fx_darkness_spark[random_func_2(3,2,true)]);
				spark.depth = depth-1;
				spark.hit_angle = random_func_2(2,360,true);
				spark.spr_dir = random_func_2(3,1,false)+.75;
			}
		}

		//State 0: Fire Orb Summoned (Increases size)
		if (state == 0){
			image_xscale += 0.003;
			image_yscale += 0.003;
			hsp += 0.025*spr_dir;
			hsp = clamp(hsp, -2.5, 2.5);
			if (image_yscale >= 1) state = 1;
		}

		player_id.move_cooldown[AT_NSPECIAL_2] = 30;

		//Dying
		if (state_timer > 300 || x < -sprite_get_width(sprite_index) || x > room_width+sprite_get_width(sprite_index) 
		|| y > room_height+sprite_get_height(sprite_index)) shoulddie = true;
		if (shoulddie == true){
			sound_stop(orb_sound);
			spawn_hit_fx( x, y, 3 );
			player_id.killarticles = false;
			if (instance_exists(orb_hitbox)) instance_destroy(orb_hitbox);
			instance_destroy();
			exit;
		}
		break;
	case 1:
		if state == 0 {
			if state_timer >= 10 { state++; state_timer = 0; }
		} else if state == 1 {
			if state_timer >= 20 { state++; state_timer = 0; }
		} else if state == 2 {
			if state_timer >= 25 { instance_destroy(); exit; }
		}
		break;
}

//Make time progress
state_timer++;