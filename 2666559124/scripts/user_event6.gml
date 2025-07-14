// called when the character hits a player

// Run this if hitting a stage article (that uses Outskirts Invasion support)
if (hit_player_obj.object_index == asset_get("obj_stage_article")) {
	if (my_hitboxID.attack == AT_FSPECIAL && "article_owner" in my_hitboxID) {
		if ("physics_state" in hit_player_obj) {
			if (hit_player_obj.physics_state == 2) {
				var can_capture = false;
			} else {
				var can_capture = true;
			}
		} else {
			var can_capture = true;
		}
		if (instance_exists(my_hitboxID.article_owner)) {
			with (my_hitboxID.article_owner) {
				if (!instance_exists(barreled_id) && free && can_capture) {
					//other.hit_player_obj.barreled = true;
					barreled_id = other.hit_player_obj;
					grabbed_article = true;
					struggle_resist = 30;
					struggle_ai_timer_max = 8;
					struggle_ai_timer = struggle_ai_timer_max;
					sound_play(sound_get("sfx_barrel_capture"));
				}
			}
		}
	}
	exit;
}

if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 7 && hit_player_obj.should_make_shockwave) {
	sound_play(sound_get("sfx_meteor"));
}

if (my_hitboxID.attack == AT_FSPECIAL && "article_owner" in my_hitboxID) {
	if ("use_screen_bar" in hit_player_obj || hit_player_obj.url == 1928599994 ||
	    hit_player_obj.url == 2208624452) {
		var hit_boss = true;
	} else {
		var hit_boss = false;
	}
	if (instance_exists(my_hitboxID.article_owner)) {
		with (my_hitboxID.article_owner) {
			if (!instance_exists(barreled_id) &&
			    !other.hit_player_obj.barreled && free && !hit_boss) {
				other.hit_player_obj.barreled = true;
				barreled_id = other.hit_player_obj;
				struggle_resist = 5 + round(get_player_damage(barreled_id.player) * 0.1);
				struggle_ai_timer_max = 50 - (5 * other.hit_player_obj.temp_level);
				struggle_ai_timer = struggle_ai_timer_max;
				sound_play(sound_get("sfx_barrel_capture"));
			}
		}
	}
}
