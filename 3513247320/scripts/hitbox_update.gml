if player_id.player == orig_player{
	// if was_parried && "parried" not in self{
	// 	draw_xscale = spr_dir;
	// 	if attack == AT_DAIR || attack == AT_UAIR draw_yscale *= -1;
	// 	hitbox_timer = 0;
	// 	parried = true;
	// 	hsp *= 1.2;
	// 	vsp *= 1.2;
	// }
	switch attack{
		case AT_FSTRONG:
		switch hbox_num{
			case 1: case 2:
				if hitbox_timer < length - 5{
					image_index = (image_index + .33) % 4;
				}
				else{
					image_index = clamp(image_index + 0.8, 4, 7);
					hit_priority = 0;
					image_xscale = 0;
					image_yscale = 0;
					hsp = 0;
				}
			break;
			case 3:
				if num2 == 0{
					hsp *= 0.94;
					if hitbox_timer == lifetime || hashitplayer || place_meeting(x + hsp, y, asset_get("par_block")){
						spawn_hit_fx(x, y, player_id.fx_explosion);
						hitbox_timer = lifetime;
						sound_play(asset_get("sfx_abyss_explosion"));
						sound_play(asset_get("sfx_mol_flare_explode"));
						shake_camera(20, 10);
						num2 = 1;
						sprite_index = asset_get("empty_sprite");
						hit_priority = 0;
						image_xscale = 0;
						image_yscale = 0;
						destroy_fx = 1;
						hsp = 0;
					}
				}
				else{
					if hitbox_timer % 5 == 0 {
						var hbox = create_hitbox(attack, hitbox_timer > length - 5? 5:4, x, y);
		                hbox.damage *= 1 + (strong_charge/100);
		                hbox.kb_value *= 1 + (strong_charge/240);
		                hbox.kb_scale *= 1 + (strong_charge/240);
		                hbox.player = player;
					}
				}
			break;
		}
		break;
		case AT_DAIR:
			// if vsp > 0 && (position_meeting(x + 35, y + (35 * sign(vsp)) + vsp, asset_get("par_block"))
			// || position_meeting(x - 35, y + (35 * sign(vsp)) + vsp, asset_get("par_block"))
			// || position_meeting(x, y + (35 * sign(vsp)) + vsp, asset_get("par_block"))
			// || (position_meeting(x, y + (35 * sign(vsp)) + vsp, asset_get("par_jumpthrough"))
			// && !position_meeting(x, y + (25 * sign(vsp)), asset_get("par_jumpthrough"))))
			// || !free{
			// 	proj_angle = vsp > 0? 180:0;
			// 	vsp *= -1;
			// 	y += 8 * sign(vsp);
			// 	kb_angle = vsp < 0? 90:270;
			// }
			if (hitbox_timer >= 4) {
				hit_effect = HFX_WRA_WIND_SMALL;
				kb_value = 4;
				kb_scale = .3;
				damage = 6;
				hitpause = 6;
				sound_effect = asset_get("sfx_bird_sidespecial_start");
				transcendent = false;
			}
			if (vsp < 0){
				proj_angle = 180;
				kb_angle = 90;
				if current_dir != proj_angle {
					current_dir = proj_angle;
					if "lifetime_extension" not in self {
						lifetime_extension = true;
						length += 15;
					}
				}
			} else {
				proj_angle = 0;
				kb_angle = 270;
				if current_dir != proj_angle {
					current_dir = proj_angle;
					if "lifetime_extension" not in self {
						lifetime_extension = true;
						length += 15;
					}
				}
			}
			// if "hashit" in self if hashit && hitbox_timer < length - 5 hitbox_timer = length - 5;
			if hitbox_timer < length - 5 {
				image_index = (image_index + 0.2) % 4;
			}
			else{
				image_index = clamp(image_index + 0.8, 4, 7);
				hit_priority = 0;
				image_xscale = 0;
				image_yscale = 0;
				grounds = 1;
				walls = 1;
			}
		break;
		case AT_UAIR:
		stop_effect = false;
		if hitbox_timer < round(length * (5/6)){
			image_index = (image_index + 0.2) % 4;
			if hitbox_timer % round(length * (1/6)) == 0{
				for (var i = 0; i < array_length(can_hit); i++;) can_hit[i] = true;
			// 	if hitbox_timer >= round(length * (2/4)){
			// 		damage = 3;
			// 		kb_value = 5;
			// 		kb_scale = 0.5;
			// 		hitpause = 5;
			// 		hitpause_growth = 0.3;
			// 		sound_effect = asset_get("sfx_bird_sidespecial");
			// 	}
			}
		}
		else {
			image_index = clamp(image_index + 0.5, 4, 8);
			hit_priority = 0;
			image_xscale = 0;
			image_yscale = 0;
		} 
		break;	
		case AT_DSPECIAL_2:
		if(hbox_num == 2){
			var transcend = true;
		    with(pHitBox){
		        if(self != other && player_id != other.player_id && type == 1 && !proj_break && place_meeting(x, y, other)){
		            transcend = false;
		        }
		    }
		    transcendent = transcend;
		}
		break;
		case AT_TAUNT:
			hsp *= 0.99;
			vsp *= 0.99;
		break;
	}
}