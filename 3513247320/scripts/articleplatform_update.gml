switch article_state{
	case "IDLE":
		image_index += 1/10;
		if image_index >= 2 image_index = 0;
		if place_meeting(x, y + 12, asset_get("par_block")) && vsp > 0 vsp = 0;
		var check = 0;
		var dist = 24;
		while !place_meeting(x + (check * spr_dir), y, asset_get("par_block")) && check < dist check++;
		if place_meeting(x + (check * spr_dir), y, asset_get("par_block")) || y <= get_stage_data(SD_TOP_BLASTZONE_Y) && !instance_exists(oTestPlayer) {
			rush_pause = true;
			hsp = 0;
			vsp = 0;
			if article_timer < article_lifetime - article_collision_grace article_timer = article_lifetime - article_collision_grace;
		}
		if(player_id.state != PS_ATTACK_GROUND && player_id.state != PS_ATTACK_AIR || (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack != AT_USPECIAL_2){
			vsp = 0;
			hsp *= .9;
			if(abs(hsp) < 1) hsp = 0;
			player_id.uspec_fuel -= 6;
		} else {
			if(vsp < 0) player_id.uspec_fuel -= 40;
			else player_id.uspec_fuel -= 20;
		}
		if article_timer == article_lifetime ||  y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) + 200 && !instance_exists(oTestPlayer) || player_id.uspec_fuel <= 0{
			if orig_player_id.standingonrush{
				orig_player_id.free = true;
			}
			
			article_state = "DESPAWN";
			image_index = 2;
			mask_index = asset_get("empty_sprite");
			sound_play(sound_get("rush_vanish"));
		}
	break;
	case "DESPAWN":
		hsp = 0;
		vsp = 0;
		
		can_be_grounded = false;
		ignores_walls = true;
		
		image_index += 1/4;
		if image_index >= image_number{
			vsp = pillar_ascent_speed;
			if y < get_stage_data(SD_TOP_BLASTZONE_Y) - 200 {
				instance_destroy(self);
				exit;
			}
			image_index -= 1/4;
		}
	break;
}

article_timer++;