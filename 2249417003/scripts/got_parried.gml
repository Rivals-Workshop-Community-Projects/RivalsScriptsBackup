//got_parried.gml

//ignore everything if the attack parried was a reflected attack.
if (my_hitboxID.player != my_hitboxID.orig_player) exit;


//if this attack was a projectile, make it stun whoever it gets reflected into.
if (my_hitboxID.type == 2) {
	switch (my_hitboxID.attack) {
	
		case AT_FAIR:
			//increase the bullet's speed
			my_hitboxID.hsp *= 2;
			//my_hitboxID.vsp *= 2;
			//extend lifespan
			my_hitboxID.hitbox_timer = 0
			//make transcendant
			my_hitboxID.transcendent = true;
			//have hitstun
			my_hitboxID.hitstun_factor = 1;
			//upward knockback
			my_hitboxID.kb_angle = 90;
		break;
		case AT_BAIR:
			//increase the bullet's speed
			my_hitboxID.hsp *= 2;
			//track back to ralsei
			set_reflected_projectile_vsp();
			//extend lifespan
			my_hitboxID.hitbox_timer = 0
			//make transcendant
			my_hitboxID.transcendent = true;
			//have hitstun
			my_hitboxID.hitstun_factor = 1;
			//upward knockback
		break;
		case AT_DAIR:
			//increase the bullet's speed
			my_hitboxID.vsp *= 2;
			my_hitboxID.hitbox_timer = 0
			my_hitboxID.transcendent = true;
			my_hitboxID.hitstun_factor = 1.5;
		break;
		//case AT_JAB:
		case AT_NAIR:
			//make the bullet not-polite
			my_hitboxID.effect = 0;
			//increase the bullet's speed
			my_hitboxID.hsp *= 2;
			my_hitboxID.vsp *= 2;
			my_hitboxID.hitbox_timer = 3
			my_hitboxID.transcendent = true;
			my_hitboxID.hitstun_factor = 1;
		break;
		case AT_NSPECIAL:
			//extra check for kragg rock shards - don't do anything to those
			if (my_hitboxID.priority == 5) break;
			//increase stun and bullet speed
			my_hitboxID.hitbox_timer = 0
			my_hitboxID.hitstun_factor = 1;
			my_hitboxID.hsp *= 2;
			//track back to ralsei
			set_reflected_projectile_vsp();
		break;
		case AT_FSPECIAL:
			//minigun projectiles don't reflect; instead make the minigun self-destruct
			if (my_hitboxID.hbox_num != 4) break;
			
			if (instance_exists(ralsei_fspecial_minigun_article_id)) {
				if (ralsei_fspecial_minigun_article_id.state < 5) {
					ralsei_fspecial_minigun_article_id.state = 5;
					ralsei_fspecial_minigun_article_id.state_timer = 0;
				}
			}
			//stop holding the minigun.
			if ((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window < 5) {
				window = 5; 
				window_timer = 0;
				was_parried = true;
				parry_lag = 40;
			}
		break;
	}

}
else {
	switch (my_hitboxID.attack) {
		case AT_DSTRONG:
			//if dstrong is parried by an opponent (not a teammate), heal ralsei instead.
			if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG && get_player_team(hit_player) != get_player_team(player)) {
				ralsei_dstrong_player_heal_amount[player] += 5 + ralsei_dstrong_heal_amount;
				var nou = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - ceil(hit_player_obj.char_height / 2), ralsei_fx_nou);
				nou.depth = hit_player_obj.depth - 1;
				nou.spr_dir = 1;
				sound_play(sound_get("dr_awkward"));
			}
		break;
		case AT_FSPECIAL:
		case AT_FSPECIAL_AIR:
			//stop holding the minigun.
			if ((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window < 5) {
				window = 5; 
				window_timer = 0;
			}
		break;
	}

}

#define set_reflected_projectile_vsp 
var proj_speed = abs(my_hitboxID.hsp);
if (proj_speed < 5) return;
var ydist = my_hitboxID.y - (y - 30); 
var time = abs(my_hitboxID.x - x) / proj_speed; 
my_hitboxID.vsp = clamp((ydist / time) * 0.75, -4, 4);



