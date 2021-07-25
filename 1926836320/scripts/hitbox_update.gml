
	
	if attack == AT_FSPECIAL {
		if !(player_id.attack == AT_FSPECIAL && player_id.window == 2) {
			//sound_play(asset_get("mfx_star"));
			instance_destroy();
		} else {
			x = player_id.x + x_pos
			y = player_id.y + y_pos
			length++;
		}
		if instance_exists(player_id.nspecial_current) && place_meeting(x,y,player_id.nspecial_current) {
		
		
		with (player_id){
			attack_end();
			set_attack(AT_FSPECIAL_2);
			spawn_hit_fx(x, y, hit_fx_create(sprite_get("fspecial_fx"), 15))
			y = ((nspecial_current.y))
			nspecial_current.vsp = 0;
			nspecial_current.hit_by_fspecial = 1;
			
		}
			sound_play(sound_effect);
		}
	}
	
    if (attack == AT_USPECIAL) {
        proj_angle += 0.5 * -hsp;
		if player_id.nspecial_active && player_id.nspecial_current == id {
			hsp *= player_id.nspecial_friction;
			vsp -= grav;
			vsp *= player_id.nspecial_friction;
			
			if ap_hit_enabled && !hit_by_fspecial {
				var aphit = instance_place(x,y,object_index);
				if aphit != id && aphit != noone {
					if !is_being_hit && aphit.attack != attack {
						if aphit.player_id == player_id {
							var dir = get_hitbox_angle(aphit);
							var dis = ((aphit.kb_value) + (ap_hit_kb_scale_percent * aphit.kb_scale) + ((player_id.power_state == player_id.POWER_STATE_UP) - (player_id.power_state == player_id.POWER_STATE_DOWN))*ap_hit_power_mult)*ap_hit_total_mult
							hsp = lengthdir_x(dis, dir);
							vsp = lengthdir_y(dis, dir);
							
							if grounds == -1 {player_id.nspecial_current = noone;
							hsp *= ap_hit_breakout_mult;
							vsp *= ap_hit_breakout_mult;
							}
							
							should_crack = 1;
							
							
						} else if get_player_team(aphit.player) != get_player_team(player) {
							destroyed = true;
						}
						is_being_hit = 1;
						
						if hitby != aphit.attack {
							sound_play(aphit.sound_effect);
						}
						hitby = aphit.attack;
						
						if hitby == AT_FSPECIAL_2 destroyed = 1;
						if destroyed sound_play(break_sound)
						
						if hitby == AT_DAIR with (player_id) {
							hsp = get_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_HSPEED)
							vsp = get_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_VSPEED)
							old_hsp = hsp;
							old_vsp = vsp;
						}					
						
					}
				} else {is_being_hit = 0; hitby = 0;}
			}
		}
        if (!free && hitbox_timer >= 60 * 0.1) {
            // Destroy on contact with ground
			
			if place_meeting(x,y,player_id.nspecial_current) {
				player_id.nspecial_current.should_crack = 1;
			}
			
            if grounds != 0 destroyed = true; else {
				vsp = abs(vspold)*-0.5
				hsp = hspold;
				should_crack = 1;
				//grav *= 2;
				sound_play(bounce_sound)
				y -= 10
			}
			
			if destroyed sound_play(break_sound)
        }

        if (x < 0 || x > room_width || y > room_height) {
            // Destroy when offstage
            destroyed = true;
        }

        if (destroyed) {
            player_id.boulder_alive = false;
        }
		vspold = vsp;
		hspold = hsp;
		
		if grounds == 0 trailtimer--;
		if trailtimer <= 0 {
			trailtimer = 6;
			var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("bouldertrail"), 20));
			newfx.depth = depth+1;
			newfx.spr_dir = -1+(x mod 2)*2;
			newfx.draw_angle = (y mod 4)*90
		}
		hit_by_fspecial = 0;
		
		if should_crack > 0{
			
		
			if should_crack != 2 sound_play(bounce_sound)
			
			grounds = -1;
			image_index = 1;
			damage = player_id.BOULDER_BOUNCE_DAMAGE;
			kb_value = player_id.BOULDER_BOUNCE_KNOCKBACK;
			hit_flipper = player_id.BOULDER_BOUNCE_FLIPPER;
			if should_crack != 2 spawn_hit_fx(x, y, bounce_fx)
			should_crack = 0;
		}
    }
