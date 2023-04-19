if (player_id.player == player) {
	switch(attack) {
		case AT_FSPECIAL: //Mic
			y = player_id.y - 24;
			if (hitbox_timer <= 6 && !has_hit) {
				x = player_id.x + spr_dir * (40 + hitbox_timer * 20);
			} else if (hitbox_timer >= 20) {
				x = lerp(x, player_id.x + spr_dir * 40, .2);
				//Uncomment this and remove it from the one below to make hitbox active longer
				//image_xscale = 0;
				//image_yscale = 0;
			} else {
				image_xscale = 0;
				image_yscale = 0;
				x = player_id.x + spr_dir * (160);
			}

			if (instance_exists(mic_grabbed_obj)) {
				mic_grabbed_obj.old_hsp = 0;
				mic_grabbed_obj.vsp = -30;
				mic_grabbed_obj.hitstop += 1;
				mic_grabbed_obj.x = lerp(x, mic_grabbed_obj.x, .5);
				mic_grabbed_obj.y = lerp(y + 20, mic_grabbed_obj.y, .5);
				mic_grabbed_obj.can_tech = false;
				mic_grabbed_obj.can_wall_tech = false;
			}
		break;
		case AT_NSPECIAL:
			if (hitbox_timer == length && hbox_num == 1) {
				player_id.clam_ball = instance_create( x, y, "obj_article1");
			}
			if (hbox_num == 2) {
				if (hitbox_timer >= 4 && hitbox_timer <= 6) {
					image_xscale = 80 / 200;
					image_yscale = 80 / 200;
				} else {
					image_xscale = 0;
					image_yscale = 0;
				}
			}
		break;
	}
}