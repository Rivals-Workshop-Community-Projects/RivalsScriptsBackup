// if attack == AT_NSPECIAL {
// 	player_id.attack_cooldown[AT_NSPECIAL] = 60
// }

//makes the cosmetic scrap come out of destroyed buildings do stuff, has nothing to do with his wrench or nspecial
if attack == AT_NSPECIAL && hbox_num == 3{
	if hitbox_timer == 1{
		if spr_dir == -1{
			proj.x = proj.x + 200
		}
		//randomizing the sprite
		rand_scrap_sprite = random_func( 0, 4, true);
		if rand_scrap_sprite == 1{
			sprite_index = sprite_get("scrap1");
		}
		else if rand_scrap_sprite == 2{
			sprite_index = sprite_get("scrap2");
		}
		else if rand_scrap_sprite == 3{
			sprite_index = sprite_get("scrap3");
		}
		else {
			sprite_index = sprite_get("scrap4");
		}
	}
}

//cosmetic ammo count when you get/spend metal
// if attack == AT_NSPECIAL && hbox_num == 3{
// 	print("yes")
// 	if spr_dir == -1{
// 		print("yay")
// 		spr_dir = 1
// 	}
// 	// proj_angle = 180;
// }

//For Bair's projectile (it makes it move the way it does)
if player_id.bair_flag == true{
	if attack == AT_BAIR && hbox_num == 2{
		if spr_dir == -1{ //if facing right
			if proj_angle > -90 { 
				proj_angle = 60 + hitbox_timer * 4 * spr_dir;
			} else{//stops hsp when facing down
				hsp = hsp * 0.1;
			}
		}else{ //if facing left
			if proj_angle < 90 {
				proj_angle = -60 + hitbox_timer * 4 * spr_dir;
			} else{//stops hsp when facing down
				hsp = hsp * 0.1;
			}
		}
		if free != true{
			sound_play(asset_get("sfx_shovel_hit_heavy2"));
			destroyed = true;
		}
	}
} else{ //if out of metal, it just sends the rocket really far out of bounds. (much easier for me to code than to have it not spawn)
	if attack == AT_BAIR && hbox_num == 2{
		x = 900000;
	}
}

//sentry stuff
if attack == AT_USPECIAL && hbox_num == 3{
	if destroyed == true{
		sound_play(asset_get("sfx_shovel_hit_heavy2"));
	}
}

//short circuit fizzle effects
if attack == AT_FSTRONG && hbox_num == 2{
	if hitbox_timer == 43{
		sound_play(asset_get("sfx_absa_singlezap1"));
		spawn_hit_fx( x, y, player_id.miniball_destroy );
	}
}
if attack == AT_FSTRONG && hbox_num == 3{
	if hitbox_timer == 68{
		sound_play(asset_get("sfx_absa_singlezap2"));
		spawn_hit_fx( x, y, player_id.bigball_destroy );
	}
}

//makes ustrong's rockets decrease in knockback
if attack == AT_USTRONG && hbox_num == 3 && player_id.ustrong_dd == false{
	if kb_scale > 0.1{
		kb_scale = kb_scale * 0.99;
	}
}
if attack == AT_USTRONG && hbox_num == 3 && player_id.ustrong_dd == true{
	kb_value = 11;
	kb_scale = 1.1;
	hitpause = 7;
	hitpause_growth = 0.5;
}

// final smash crap past this point
if attack == 49 {
	if player_id.window == 2{
		if hbox_num == 2{
			proj_angle = 315 * spr_dir;
		}
	}
	if player_id.window == 4{
		if hbox_num == 2{
			proj_angle = 180 * spr_dir
			hsp = 0;
			vsp = 10;
			if free != true{
				sound_play(asset_get("sfx_shovel_hit_heavy2"));
				destroyed = true;
			}
		}
	}
	if hbox_num == 2{
		if free != true{
			sound_play(asset_get("sfx_shovel_hit_heavy2"));
			destroyed = true;
		}
	}
	if hbox_num == 1{
		if hsp < -1 or hsp > 1{
			hsp = 7 * spr_dir - (hitbox_timer * spr_dir * 0.1);
		}
		if hitbox_timer == 100{
			create_hitbox(49, 4, x, y);
			destroyed = true;
		}
	}
	if hbox_num == 4{
		if hitbox_timer == 1{
			player_id.fs_explosion_active = 1;
			player_id.fs_explosion_x = x;
			player_id.fs_explosion_y = y;
			shake_camera( 8, 130 )
		}
	}
}
