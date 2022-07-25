//cool transition

if (timer < 5){
	timer++;
}

if (timer == 5){
	sprite_index = sprite_get("powerups");
}

//rest

with oPlayer {

		if ((place_meeting(other.x, other.y, hurtboxID))) {


			notification = instance_create(x, y - char_height - 20, "obj_stage_article", 2);
			notification.notif_id = other.powerup;
			notification.who_got_it = player;

			switch (other.powerup){
				case 1:
						if (ct_glide < 3) { 
							ct_glide = ct_glide + 1;
						}
				break;

				case 2:

						if (ct_offense < 3) { 
							ct_offense = ct_offense + 1;
						}

				break;

				case 3:

						if (ct_hp <= 3) {
							take_damage(player, -1, -10*ct_hp);
							sound_play(asset_get("mfx_hp"));
						}

						if (ct_hp < 3) { 
							ct_hp = ct_hp + 1;
							// with other{
							// 	spawn_hit_fx( x, y, obj_stage_main.hp_plus );
							// }
						}
					
				break;

				case 4:

						if (ct_weight < 3) { 
							ct_weight = ct_weight + 1;
						}
				break;

				case 5:			
						if (ct_boost < 3) { 
							ct_boost = ct_boost + 1;
						}

				break;

				case 6:
		
						if (ct_turn < 3) { 
							ct_turn = ct_turn + 1;
						}

				break;

				case 7:

						if (ct_defense < 3) { 
							ct_defense = ct_defense + 1;
						}

				break;

				case 8:

						if (ct_charge < 3) { 
							ct_charge = ct_charge + 1;
						}

				break;

				case 9:

						if (ct_topspeed < 3) { 
							ct_topspeed = ct_topspeed + 1;
						}
				break;
			}
			other.delete_itself = 1;
		}
}

if (delete_itself == 1){
	obj_stage_main.present_powerups = obj_stage_main.present_powerups - 1;
	sound_play(sound_get("patch_pickup"));
	instance_destroy(self);
}