//hitbox_update

switch (attack) {
	case AT_FSPECIAL:
		if (!free) {
			ground_time++;
			if (ground_time > 1) {
				destroyed = true;
			}
		}
		
		if (vsp < 12) {
			proj_angle = floor((ease_linear(360, 315, vsp * 10, 12 * 10)) * spr_dir);
		} else {
			proj_angle = floor((ease_linear(315, 270, floor(abs(abs(hsp * 10) - 104)), 104)) * spr_dir);
		}
	case AT_NSPECIAL:
		var blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
	    var blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
	    var blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
	    var blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
	    
	    if ((x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b) || hsp == 0) {
	    	// Arrow dies at blast zone or against wall
			destroyed = true;
		}
		break;
	case AT_USTRONG:
		if player_id.buffNextHitbox {
			damage = damage+4;
			player_id.buffNextHitbox = false;
		}
		break;
	case AT_NSPECIAL_2:
		//nspecial finisher buff code.
	    if player_id.buffNextHitbox {
	        with player_id {
	            other.damage = get_hitbox_value(other.attack,other.hbox_num,HG_DAMAGE)+4;
	            if other.hbox_num == 3 {
	                buffNextHitbox = false;
	            }
	        }
	    }
		break;
}