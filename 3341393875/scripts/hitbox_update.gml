switch (attack){

	case AT_NSPECIAL:
		if (hbox_num == 1 && hit_priority == 3.543){
			if (!free){
				hsp = (2 - has_rune("I")) * spr_dir;
			}
			else{
				vsp = (2 + has_rune("I"));
			}

			if (has_hit && playerHitTimer == -1){
				playerHitTimer = 15;
				stop_effect = false;
			}

			if (playerHitTimer > 0){
				playerHitTimer -= 1;
			}

			if (playerHitTimer == 0){
				for (var i = 0; i < 20; i++) can_hit[i] = true;
				playerHitTimer = -1;
				has_hit = false;
			}

			if (hitbox_timer % 4 == 0){
				CreateAfterimage(12 * (has_rune("I") + 1));
			}

			player_id.move_cooldown[AT_NSPECIAL] = 60;


			var closeByBox = instance_place(x, y, pHitBox);
			if (closeByBox != noone && closeByBox.player_id == player_id && closeByBox.attack == AT_FSPECIAL){
				spr_dir = player_id.spr_dir;
				x = closeByBox.x;
				y = closeByBox.y;
				image_index += img_spd;
				hitbox_timer = round(length/2);
			}

			if (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
				instance_destroy();
				exit;
			}
		}
	break;

	case AT_DSPECIAL:
		switch (hbox_num){
    		case 2:
				if (hitbox_timer % 3 == 0){
					CreateAfterimage(12);
				}

    		    if (!free || has_hit){
    		        var facing = orig_player_id.spr_dir;
					orig_player_id.spr_dir = spr_dir;
					var dynamite = create_hitbox(AT_DSPECIAL, 3, x, y);
					dynamite.spr_dir = spr_dir;
					dynamite.draw_xscale = spr_dir;
					orig_player_id.spr_dir = facing;
					sound_play(asset_get("sfx_ell_big_missile_fire"));

					dynamite.hbox_owner = hbox_owner;
					instance_destroy(self);
					exit;
    		    }
    		break;
    		case 7:
    		    if (hitbox_timer % 3 == 0){
					CreateAfterimage(12 * (has_rune("L") + 1));
				}
    		break;
    	}
	break;

	case AT_DSPECIAL_2:
		if (!has_rune("O")) then player_id.move_cooldown[AT_DSPECIAL_2] = 2;

		switch (hbox_num){
			//Cheese bullet
			case 2:
				if (hitbox_timer == length-1){
    		    	var uziEnd = spawn_hit_fx(x, y, player_id.cheeseBulletEnd);
    		    	uziEnd.spr_dir = spr_dir;
				}
    		break;

			//Uzi
			case 3:

				if (hitbox_timer % 3 == 0){
					CreateAfterimage(9);
				}

			break;

			//Knight
			case 4:
				if (knightBounced == false){
					if (vsp < 0){
						walls = 1;
						grounds = 1;
					} else {
						walls = 2;
						grounds = 0;

						if (!free){
							vsp = prevVsp * -0.5;
							knightBounced = true;
							sprite_index = sprite_get("forknight_death_forkless");
							draw_xscale = 2 * spr_dir;
							draw_yscale = 2;
							spawn_hit_fx(x, y + 50, player_id.knightGroundHit);
							sound_play(sound_get("sfx_killenemy"));

							if (!has_rune("H")){
								var forkProjectile = create_hitbox(AT_DSPECIAL_2, 5, x, y);
								forkProjectile.max_fall = 30;
							} else {
								var forkProjectile = create_hitbox(AT_DSPECIAL_2, 6, x, y - 20);
								forkProjectile.vsp = -15;
								forkProjectile.hsp = 0;
								forkProjectile.length = 300;
							}

						}
					}

				} else {
					walls = 1;
					grounds = 1;

					if (y > view_get_yview() + view_get_hview()){
						destroyed = true;
					}
				}

				prevVsp = vsp;
			break;

			//Fork
			case 5:

				if (y > view_get_yview() + view_get_hview()){
					destroyed = true;
				}

			break;

			//Dynamite
			case 6:

				//Ground Explosion
    		    if (!free){
    		        var tempGround = spawn_hit_fx(x, y, player_id.dynamiteGroundExplosion);
    		        tempGround.spr_dir = spr_dir;
    		        tempGround.draw_xscale = draw_xscale;

    		        var groundBoom = create_hitbox(AT_DSPECIAL_2, 7, x, y - 20);
    		        groundBoom.player = player;
    		        sound_play(sound_get("sfx_explosion"));

    		        destroyed_next = true;
    		    }

    		    //Air Explosion
    		    if (free && ((hitbox_timer == length - 1 && free) || (place_meeting(x, y, pHurtBox) && instance_place(x, y, pHurtBox).player != player) && !getting_bashed || destroyed == true)){
    		        var tempAir = spawn_hit_fx(x, y + 10, player_id.dynamiteAirExplosion);
    		        tempAir.spr_dir = spr_dir;
    		        tempAir.draw_xscale = draw_xscale;

    		        var airBoom = create_hitbox(AT_DSPECIAL_2, 8, x + 2 * spr_dir, y);
    		        airBoom.player = player;
    		        sound_play(sound_get("sfx_explosion"));

    		        destroyed_next = true;
    		    }
			break;

			//Rat thrown
			case 9:

				if (!free){
					vsp = prevVsp * -1;
					spawn_hit_fx(x, y, player_id.ratGroundVFX);
					shake_camera(3, 9);
					sound_play(sound_get("sfx_groundpound"));

					if (has_rune("M") && abs(vsp) < 1 && abs(prevVsp) < 1){
						vsp = -18;
						sound_play(sound_get("Pizzahead1"))
						sound_play(sound_get("Pizzahead3"))
					}
				}

				if (hitbox_timer == length-1 || destroyed == true || (has_hit == true && !has_rune("M")) || ((x < view_get_xview()) || (x > view_get_xview() + view_get_wview()))){
    		        var deadRat = create_hitbox(AT_DSPECIAL_2, 10, x, y);
    		        deadRat.spr_dir = spr_dir;
    		        deadRat.draw_xscale = draw_xscale;
    		        destroyed = true;
    		    }

				prevVsp = vsp;

				if (hitbox_timer % 6 == 0){
					CreateAfterimage(18 + (has_rune("M") * 6));
				}

				if (has_rune("M")){
					if (instance_place(x, y, pHitBox) != noone && hitbox_timer > 8){
						var smacker = instance_place(x, y, pHitBox);
						if (smacker.player_id == player_id){
							//var tempAngle = point_direction(x + (6 * spr_dir), y - 76, nearest.x, nearest.y - round(nearest.char_height/2));
							hsp = lengthdir_x(smacker.kb_value, get_hitbox_angle(smacker));
							vsp = lengthdir_y(smacker.kb_value, get_hitbox_angle(smacker));

							if (sign(hsp) != 0){
    						    spr_dir = sign(hsp) * -1;
    						}

    						spawn_hit_fx(lerp(smacker.x, x, 0.5), lerp(smacker.y, y, 0.5), smacker.hit_effect);
    						spawn_hit_fx(x, y + 40, orig_player_id.minion_hit);
    						sound_play(smacker.sound_effect);

							hitbox_timer = 0;
							has_hit = false;
							for (var i = 0; i < 20; i++) can_hit[i] = true;

							if (smacker.attack == AT_DTHROW){
								smacker.player_id.vsp = -7;
							}
						}
					}

					if (has_hit){
						has_hit = false;
						hsp *= -1;
					}
				}

			break;

			//Rat dead
			//case 10:

			//break;

		}
	break;

}


#define CreateAfterimage(imgLength)
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $FFFFFF
    player_id.afterimage_array[array_length_1d(player_id.afterimage_array)] = {smallSprites:small_sprites, x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:proj_angle, col:_color, timer:0, timerMax:imgLength};
}