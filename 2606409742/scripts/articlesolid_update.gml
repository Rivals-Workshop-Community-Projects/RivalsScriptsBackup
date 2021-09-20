hitbox_detection(1, 1);

if cracked player_id.phone_invis_cooldown = 30;

if cracked && !hitstop{
	cracked_timer++;
	if cracked_timer >= cracked_timer_max{
		for (var i = 0; i < room_height; i += 32){
			var rx = random_func(i/32, 96, true) - 48;
			var ry = random_func(i/32+20, 64, true) - 32;
			
			var h = noone;
			
			with player_id h = spawn_hit_fx(round(other.x + rx), round(i + ry), i % 2 ? vfx_cryonis_shard : vfx_cryonis_shard_long);
			
			h.hsp = ry / 8;
			h.vsp = abs(rx) / -5;
			h.asp = (ry+rx) / 10;
			h.draw_angle = i * 5;
			
			h.link_cryonis = player_id;
		}
		sound_play(player_id.sfx_botw_cryonis_break);
		player_id.bomb_cooldown = player_id.bomb_cooldown_max;
		instance_destroy();
		exit;
	}
}

if !cracked{
	exist_timer++;
	if exist_timer >= 150{
		cracked = true;
	}
}

if white_opac > 0{
	white_opac -= 0.05;
}



#define hitbox_detection(detect_owner_hits, detect_enemy_hits) // supersonic
//estimated like 80% accurate imo

var article = self;
//reset hitbox groups when necessary
with (oPlayer)
	if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
		other.hbox_group[@ player-1][@ attack] = array_create(10,0);
		//with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
	}

var currentHighestPriority = noone;
with (pHitBox) if "link_no_cryonis_hit" not in self{
	var can_player_hit = (player == other.player && detect_owner_hits || player != other.player && detect_enemy_hits);
	if instance_exists(self) && instance_exists(article) && can_player_hit && `hit_${article}` not in self
		if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
			if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
				//hit
				if currentHighestPriority != noone {
					if currentHighestPriority.hit_priority < hit_priority
						currentHighestPriority = self;
				} else {
					currentHighestPriority = self;
				}
				
				variable_instance_set(self, `hit_${article}`, true);
			}
		} else if (place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 1) || (hit_priority == 0) {
			//prevent from running hit detection for optimization sake
			//with other print_debug("hit but also not");
			variable_instance_set(self, `hit_${article}`, true);
		}
}

if instance_exists(currentHighestPriority) with currentHighestPriority {
	if !(currentHighestPriority.type == 1 && currentHighestPriority.player_id.hitpause) sound_play(sound_effect);
	sound_play(asset_get("sfx_boss_shine"));
	spawn_hit_fx(x+hit_effect_x*spr_dir,y+hit_effect_y,hit_effect);
	//this handles the knockback; hitstun, speed, etc.
	with other {
		cracked = true;
	}
	//apply hitpause (where applicable)
	var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
	if type == 1 with player_id {
		old_vsp = vsp;
		old_hsp = hsp;
		hitpause = true;
		has_hit = true;
		if hitstop < desired_hitstop {
			hitstop = desired_hitstop;
			hitstop_full = desired_hitstop;
		}
	}
	if type == 2 && player_id == other.player_id && "is_spear" in self && is_spear && false{
		hitpause_timer = floor(desired_hitstop) + 0.1; // + 0.1 means it won't bounce back. epic
	}
	other.hitstop = floor(desired_hitstop);
	if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
	
	return true;
}

return false;