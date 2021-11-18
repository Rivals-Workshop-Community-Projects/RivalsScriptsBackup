//article1_update

switch(variant) {
	case "dust":
		image_index = floor(age / (life / 4));
		fake_hsp *= 0.97; fake_vsp *= 0.97;
		image_alpha -= 0.01;
	break;
	case "dust_rising":
		image_index = floor(age / (life / 4));
		fake_hsp *= 0.95; fake_vsp -= 0.025;
	break;
	
	case "burst":
		if(age % 2 == 0) image_angle += 90;
	break;
	
	case "points": case "reward notification": case "1up":
		fake_vsp += 0.075;
		if(fake_vsp > 0) fake_vsp = 0;
	break;
	
	case "droplet_friction":
		fake_hsp *= 0.98;
	case "droplet":
		if(y > despawn_y && age % 4 == 0 && (place_meeting(x, y, player_id.asset_par_block) || place_meeting(x, y, player_id.asset_par_jumpthrough))) {
			instance_destroy(); exit;
		}
	case "droplet_nocollide":
		fake_vsp += 0.4;
		// if(place_meeting(x, y, asset_get("par_block"))) mark_for_destruction = true;
	break;
	
	case "afterimage":
		image_alpha = 1.0 - (age / life);
	break;
	
	case "tossed sprite": case "tossed sprite shader":
		image_angle += -10 * sign(fake_hsp);
		fake_hsp *= 0.98; fake_vsp += 0.7;
	break;
	
	case "coin sparkle":
		image_index = (0.2 + (0.2 * image_mult)) * (image_offset + get_gameplay_time());
	break;
	
	case "star":
		if(age > 10) { fake_hsp *= 0.575; fake_vsp *= 0.575; }
		else { fake_hsp *= 0.85; fake_vsp *= 0.85; }
	break;
	
	case "music override":
		//maybe come back to this later??? maybe don't bother???
		//this was my attempt at making a Music Override Article format that could be standardized & accepted into Rivals Workshop conventions
		//However I gave up because 1. it's hard and 2. i doubt i could get people to adopt this
		
		// if(age == 0) {
		// 	is_music_override = true; music_override_priority = "transcendent"; music_override_time = get_gameplay_time();
		// 	music_override_instance = sound_play(sound_get("mus_starman_mpislandtour"));
			
		// 	var found_mus = noone;
		// 	with(asset_get("article1")) if(id != other) {
		// 		if("music_override" in self && "music_override_priority" in self && "music_override_time" in self && is_music_override)
		// 			if(found_mus == noone || music_override_priority > found_mus.music_override_priority || (music_override_priority == found_mus.music_override_priority && music_override_time > found_mus.music_override_time))
		// 				found_mus = id;
		// 	}
			
		// 	if(found_mus == noone)
		// }
	break;
	
	case "ice chunk":
		fake_vsp += 0.4;
		// if(life % random_seed == 0) image_angle += 90 * sign(hsp);
	break;
	
	case "frost cloud":
		image_index = floor(age / (life / 4));
		fake_vsp = min(3, fake_vsp + 0.01);
		image_alpha -= 0.002;
		image_angle += spin * 0.75;
	break;
	
	case "starman music override":
		if(age == 0) {
			life = -1;
			with(obj_article1) if(id != other && "music_override_instance" in self) {
				//delete all other music overrides
				//other characters can make their own Qua-Mario-styled music override articles if they really want to...?
				//and if they do, this code will stop those too. will cause problems if they don't respect mark_for_destruction tho
				sound_stop(music_override_instance);
				mark_for_destruction = true;
			}
			x = room_width;
			
			// music_override_instance = sound_play(music_override_sfx, true, noone, get_local_setting(SET_MUSIC_VOLUME), 1.0);
			music_override_instance = sound_play(music_override_sfx, true, 0.0);
		}
		
		suppress_stage_music(0.0, 1.0);
		
		if(!instance_exists(pin_to_obj) || pin_to_obj.neo_data.starman_time <= 0) {
			sound_stop(music_override_instance);
			mark_for_destruction = true;
		}
	break;
	
	case "snowflake":
		image_index = floor(age / (life / 3));
	break;
	
	case "kablammer":
		image_index = round(age / 2) % 2;
	break;
	
	case "letter":
		if(age > 10) {
			life = 2400;
			fake_hsp = spr_dir * 1.25;
			fake_vsp = sin(age / 20);
			image_angle = 15 * cos(age / 17);
			image_index = 1 + (round(age / 12) % 2);
			if(x < 0 || x > room_width) mark_for_destruction = true;
		}
	break;
	
	case "floortype zone":
		if(player_id.y < y2 && player_id.y > y1 && player_id.x > x1 && player_id.x < x2)
			player_id.floortype_override = subvariant;
		exit;
	break;
}

// if(variant == "dust") {  }
// if(variant == "popoff") fake_vsp *= 0.94;
// if(variant == "burst" && get_gameplay_time() % 2 == 0) image_angle += 90;
// if(variant == "star") { hsp *= 0.85; vsp *= 0.85; if(age > 10) { hsp *= 0.6; vsp *= 0.6; } }
// if(variant == "steam") { image_index = floor(age / (life / 4)); vsp -= 0.1; }
// if(variant == "snowflake") { image_index = floor(age / (life / 4)); }
// if(variant == "ice chunk") { vsp += 0.4; if(random_func(random_seed, 10, true) == 0) image_angle += 90 * sign(hsp); }
// if(variant == "tossed sprite") { image_angle += sign(hsp) * -13; vsp += 0.75; }
// if(variant == "coin sparkle") { image_index = (0.2 + (0.2 * image_mult)) * (image_offset + get_gameplay_time()); }

x += fake_hsp; y += fake_vsp;
age++;
if(mark_for_destruction || (age > life && life != -1)) instance_destroy();