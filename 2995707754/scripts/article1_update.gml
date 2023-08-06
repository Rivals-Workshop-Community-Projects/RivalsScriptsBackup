//article1_update.gml
switch (article_id){
	case 1:
		can_be_grounded = false;
		
		if (x < 0 - 64*2 || x > room_width + 64*2) || (y > room_height + 48*2) { player_id.ice_meteor_article = -4; instance_destroy(); }
		meteor_sparkle_timer--;
		if meteor_sparkle_timer == 0 { 
		sparkle_spawn = spawn_hit_fx(x+random_func_2(25,6,true)*16-48, y+random_func_2(25,6,true)*16-48, player_id.sparkle); 
		sparkle_spawn.depth = -2
		meteor_sparkle_timer = 12; }
		switch (meteor_state){
			case 0:
				if player_id.b_reversed { spr_dir = -spr_dir; meteor_dir = -meteor_dir; }
				meteor_charge_anim+=0.1;
				if meteor_charge_anim == 1 { meteor_charge_anim = 0; }
				
				meteor_charge_timer--;
				if meteor_charge_timer < 0 { 
					meteor_charge_timer = 8; 
				}
				if (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_NSPECIAL { 
					if player_id.window == 1 {
						if player_id.window_timer <= 19 { 
							if meteor_charge_timer == 1 { 
								player_id.shard_spread = 5;
								instance_create( x, y-16, "obj_article3" ); 
							}
							meteor_size = 1; 
						} else {
							if player_id.window_timer <= 39 {
								if meteor_charge_timer == 1 { 
									player_id.shard_spread = 5;
									instance_create( x, y-16, "obj_article3" ); 
								}
								meteor_size = 2; 
							} else {
								if player_id.window_timer == 59 { 
									meteor_size = 3; 
								} 
							}
						}
					}
					if player_id.window > 1 {
						meteor_state = 1;
					}
				}
			break;
			case 1:
				meteor_falling_timer++;
				hsp = ease_cubeIn( 1, 3, meteor_falling_timer, 60 )* meteor_dir; 
				vsp = ease_cubeIn( 1, 3, meteor_falling_timer, 60 );
				if meteor_falling_timer == 1 { 
					var ice_meteor_article_this = player_id.ice_meteor_article;
					create_hitbox( AT_NSPECIAL, meteor_size, ice_meteor_article_this.x, ice_meteor_article_this.y ); 	
				}
				if hitstop == 0 && meteor_has_hit == 1 { meteor_size--; meteor_falling_timer = 0; meteor_has_hit = 0; }
				if meteor_size == 0 { 
					sound_play(asset_get("sfx_mol_norm_explode"));
					sound_play(asset_get("sfx_ice_shatter_big")); 
					var word_ice_dust = spawn_hit_fx( x-10, y+48, player_id.word_ice_huge );
					word_ice_dust.spr_dir = 1; 
					word_ice_dust.depth = -10; 
					player_id.ice_meteor_article = -4; instance_destroy(); }
			break;
		}

		var platform_check = position_meeting(x, y+4, asset_get("par_jumpthrough"));
		if !free || (meteor_splash_timer < 4 && !free){
			if !platform_check {
				hsp = 0; 
				vsp = 0;
				meteor_splash_timer--;
				if meteor_splash_timer == 3 { sound_play(asset_get("sfx_ice_dspecial_ground")); shake_camera(meteor_size, 4); }
				if meteor_splash_timer == 0 { 
					shake_camera(4+meteor_size*6, 4);
					sound_play(asset_get("sfx_icehit_heavy2"));
					sound_play(asset_get("sfx_mol_norm_explode"));
					sound_play(asset_get("sfx_ice_shatter_big"));
					var word_ice_dust = spawn_hit_fx( x-10, y+8, player_id.word_ice_huge );
					word_ice_dust.spr_dir = 1; 
					word_ice_dust.depth = -10; 
					if meteor_size < 3 {
					spawn_hit_fx( x, y, player_id.ice_meteor_grounded_vfx );
					} else { spawn_hit_fx( x, y, player_id.ice_meteor_large_grounded_vfx ); }
					player_id.shard_spread = 1;
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					player_id.shard_spread = 3;
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					player_id.ice_meteor_article = -4;
					instance_destroy(); 
				}
			}
		}
		if hit_wall || (meteor_splash_timer < 4 && free){
			if !platform_check {
				hsp = 0; 
				vsp = 0;
				meteor_splash_timer--;
				if meteor_splash_timer == 3 { sound_play(asset_get("sfx_ice_dspecial_ground")); shake_camera(meteor_size, 4); }
				if meteor_splash_timer == 0 { 
					shake_camera(4+meteor_size*6, 4);
					sound_play(asset_get("sfx_icehit_heavy2"));
					sound_play(asset_get("sfx_mol_norm_explode"));
					sound_play(asset_get("sfx_ice_shatter_big"));
					var word_ice_dust = spawn_hit_fx( x-10, y+8, player_id.word_ice_huge );
					word_ice_dust.spr_dir = 1; 
					word_ice_dust.depth = -10; 
					if meteor_size < 3 {
					spawn_hit_fx( x, y, player_id.ice_meteor_vfx );
					} else { spawn_hit_fx( x, y, player_id.ice_meteor_large_vfx ); }
					player_id.shard_spread = 1;
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					player_id.shard_spread = 3;
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					instance_create( x, y-16, "obj_article3" ); 
					player_id.ice_meteor_article = -4;
					instance_destroy(); 
				}
			}
		}
	break;
	case 2:
		if free { x -= 10*ice_lance_spr_dir; }
		if player_id.window > 1 { player_id.ice_lance_ledge_article = -4; instance_destroy(); }
	break;
	case 3:
		if free { x -= 5*spr_dir; }
		if lance_anim_timer > 7 {
			player_id.ice_meteor_article = -4;
			instance_destroy(); 
		}
		if lance_anim_timer > 2 && lance_anim_timer < 3 {
			lance_anim_timer += 1/24;
		} else {
			lance_anim_timer += 1/4;
		}
		if lance_anim_timer == 1 { create_hitbox( AT_DSPECIAL_2, 1, x, y-50 ); }
		if lance_anim_timer == 4 {
			sound_play(asset_get("sfx_ice_fspecial_hit_ground"));
		}
	break;
	case 4:
		depth = -10
		x = player_id.x;
		y = player_id.y;
		aura_anim_timer += 1/6;
		if player_id.flight_mode == 0 { player_id.aura_article = -4; instance_destroy(); }
	break;
	case 5:
		depth = -20;
		menacing_lifetime++;
		if get_player_color(player) >= 26 {
			sprite_index = sprite_get("word_menacing_manga");
		} else { sprite_index = sprite_get("word_menacing"); }
		image_index = floor(menacing_lifetime/4);
		hsp = ease_sineOut( 0, 1, menacing_lifetime, 20 )*1.5*menacing_hsp_dir;
		vsp = ease_sineIn( 0, -2, menacing_lifetime, 20 );
		if menacing_lifetime > 30 { instance_destroy(); }
	break;
}