if object_index == oPlayer exit;

can_be_grounded = (vsp >= 0 && !free); // giik fix

if "was_frozen" not in self was_frozen = 0;

visible = true;

switch(state){
	case PS_IDLE: // sitting there
		if !hitstop{
			if free{
				if hit_wall{
					hsp = -prev_hsp * 0.75;
				}
				prev_vsp = vsp;
				prev_hsp = hsp;
				vsp += 0.6;
				vsp = min(vsp, 12);
				hsp -= sign(hsp) * 0.02;
			}
			else{
				bomb_lockout = false;
				if has_bounced{
					hsp = 0;
					fake_image_angle = 0;
				}
				else{
					has_bounced = true;
					vsp = -prev_vsp * 0.75;
					hsp *= 0.5;
				}
			}
			fake_image_index += 0.15;
			if abs(fake_image_angle) fake_image_angle *= (abs(fake_image_angle) > 90 ? 0.7 : 0.9);
		}
		fake_sprite_index = sprite_get((state_timer % 8 < 4 && activation_queued && bomb_lockout) ? "bomb_flash" : "bomb_idle");
		hitbox_detection(true, true);
		break;
	case PS_DEAD: // despawning without detonating (how)
		break;
	case PS_ATTACK_AIR: // flying thru the air w/ a hitbox
		fake_image_angle = 0;
		var hbox_exists = false;
		with pHitBox if "article_owner" in self && article_owner == other hbox_exists = true;
		if !hbox_exists has_hit = true;
		if was_frozen{
			ignores_walls = place_meeting(x + hsp, y + vsp, asset_get("par_jumpthrough"));
			if hitstop{
				stasis_aim();
			}
		}
		if has_hit{
			hitstun = 0;
			hsp = 3 * -spr_dir;
			vsp = -5;
			fake_image_angle = -360;
		}
		if !hitstop{
			if free{
				if hit_wall{
					hsp = -prev_hsp * 0.75;
				}
				prev_vsp = vsp;
				prev_hsp = hsp;
				if !was_frozen vsp += 0.6;
				vsp = min(vsp, 12);
				if !was_frozen hsp -= sign(hsp) * 0.02;
			}
			else{
				if (has_bounced || (abs(prev_vsp) < 1 && abs(hsp) < 1)) && state_timer > 5{
					hitstun = 0;
				}
				else{
					has_bounced = true;
					vsp = -prev_vsp * 0.75;
					if !was_frozen hsp *= 0.5;
					
				}
			}
			if hitstun hitstun--;
			fake_image_index += has_bounced ? 0.25 : 0.5;
		}
		if !hitstun && !hitstop{
			if was_frozen{
				disappearing_formalities();
				instance_destroy();
				exit;
			}
			set_article_state(PS_IDLE);
			fake_image_angle = 360;
		}
		fake_sprite_index = sprite_get(was_frozen ? "bomb_stasis_launch" : "bomb_hitbox");
		if !was_frozen hitbox_detection(true, false);
		break;
	case PS_ATTACK_GROUND: // flashing and about to go off
		var s_t_max = 20;
		if cryonising{
			hsp = 0;
			vsp = 0;
			with oPlayer if abs(x - other.x) < 64 x += sign(x - other.x);
		}
		hsp *= 0.9;
		vsp *= 0.9;
		fake_sprite_index = sprite_get(state_timer % 8 < 4 ? "bomb_flash" : "bomb_idle");
		
		if state_timer >= s_t_max{
			if cryonising{
				with player_id instance_create(other.x, other.y, "obj_article_solid");
				var h = create_hitbox(AT_DSPECIAL_2, 3, x, y);
				h.link_no_cryonis_hit = true;
				sound_play(player_id.sfx_botw_cryonis_make_end);
				sound_play(asset_get("sfx_icehit_medium1"));
				instance_destroy();
				exit;
			}
			var h =	create_hitbox(AT_DSPECIAL_2, 1, round(x), round(y));
			h.can_hit_self = true;
			sound_play(player_id.sfx_botw_bomb_explode);
			spawn_hit_fx(round(x), round(y), player_id.vfx_bomb_explode);
			player_id.bomb_cooldown = player_id.bomb_cooldown_max;
			instance_destroy();
			exit;
		}
		fake_image_index += 0.15;
		if abs(fake_image_angle) fake_image_angle *= (abs(fake_image_angle) > 90 ? 0.7 : 0.9);
		hitbox_detection(true, true);
		break;
	case PS_FIRST_JUMP: // magnesising
		var s_t_max = 20;
		hsp *= 0.9;
		vsp *= 0.9;
		fake_sprite_index = sprite_get(state_timer % 8 < 4 ? "bomb_flash" : "bomb_idle");
		
		if state_timer == 1{
			sound_play(player_id.sfx_botw_magnesis_catch);
		}
		
		with player_id{
			
			var dist = point_distance(x, y - 48, other.x, other.y);
			var ang = point_direction(x, y - 48, other.x, other.y);
			var spd = lerp(1, 0.4, min(dist, 600) / 600);
			spd = 1;
			
			do_a_fast_fall = 0;
			
			if !free{
				if place_meeting(x, y + 2, asset_get("par_jumpthrough")) && vsp > -0.1{
					free = true;
					y += 2;
					fall_through = true;
				}
			}
			
			if y > phone_blastzone_t vsp -= gravity_speed * free;
			
			if (point_distance(0, 0, hsp, vsp) < 10 || point_distance(x, y, other.x, other.y) < point_distance(x+hsp, y+vsp, other.x, other.y)) && !hitstop{
				hsp += lengthdir_x(spd, ang);
				vsp += lengthdir_y(spd, ang) * 1.5;
			}
		}
		
		if state_timer >= s_t_max || place_meeting(x, y, player_id) || !player_id.visible{
			disappearing_formalities();
			instance_destroy();
			exit;
		}
		
		fake_image_index += 0.15;
		if abs(fake_image_angle) fake_image_angle *= (abs(fake_image_angle) > 90 ? 0.7 : 0.9);
		hitbox_detection(true, true);
		break;
	case PS_FROZEN: // stasis'd
		var s_t_max = 420;
		hsp = 0;
		vsp = 0;
		fake_sprite_index = sprite_get("bomb_frozen");
		
		if hitbox_detection(true, true){
			if state == PS_IDLE{
				state_timer = s_t_max;
			}
		}
		
		if state_timer > s_t_max - 45 && !hitstop{
			visible = (state_timer % 10 < 5);
			if state_timer % 15 == 0{
				sound_play(player_id.sfx_botw_stasis_tick);
			}
		}
		
		else if state_timer % 30 == 0 && !hitstop{
			sound_play(player_id.sfx_botw_stasis_tick);
		}
		
		if state_timer >= s_t_max && !hitstop{
			disappearing_formalities();
			instance_destroy();
			exit;
		}
		break;
}

if activation_queued && !bomb_lockout && state != PS_ATTACK_GROUND && !hitstop{
	if player_id.cur_rune == player_id.RUNE_BOMB || player_id.cur_rune == player_id.RUNE_CRYONIS{
		var h = state == PS_ATTACK_AIR;
		set_article_state(PS_ATTACK_GROUND);
		if h fake_image_angle = 360;
		if !free vsp = -3;
		cryonising = player_id.cur_rune == player_id.RUNE_CRYONIS;
		if cryonising{
			sound_play(player_id.sfx_botw_cryonis_make);
		}
	}
	if player_id.cur_rune == player_id.RUNE_MAGNESIS{
		var h = state == PS_ATTACK_AIR;
		set_article_state(PS_FIRST_JUMP);
		if h fake_image_angle = 360;
		if !free vsp = -3;
		activation_queued = false;
	}
	if player_id.cur_rune == player_id.RUNE_STASIS{
		if(state != PS_ATTACK_AIR || !was_frozen) && state != PS_FROZEN{
			set_article_state(PS_FROZEN);
			activation_queued = false;
			has_been_hit = false;
			var h = spawn_hit_fx(x + hsp, y + vsp, player_id.vfx_stasis_chains);
			h.spr_dir = 1;
			h.depth = depth - 1;
			sound_play(player_id.sfx_botw_stasis_start);
		}
		else if state == PS_FROZEN{
			set_article_state(PS_IDLE);
			has_bounced = !free;
			activation_queued = false;
			sound_play(player_id.sfx_botw_bomb_cancel);
		}
	}
}

if was_free && !free{
	spawn_base_dust(x, y + 16, state == PS_ATTACK_AIR ? "land" : "walk");
	sound_play(asset_get("sfx_land_light"));
}

if !hitstop state_timer++;
was_free = free;

if x != clamp(x, player_id.phone_blastzone_l, player_id.phone_blastzone_r) || y > player_id.phone_blastzone_b || y < player_id.phone_blastzone_t - 256{
	disappearing_formalities();
	instance_destroy();
	exit;
}



#define disappearing_formalities

spawn_hit_fx(x, y, player_id.vfx_bomb_disappear);
sound_play(player_id.sfx_botw_bomb_cancel);
player_id.bomb_cooldown = player_id.bomb_cooldown_max;



#define spawn_base_dust // supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
with player_id{
	var dlen; //dust_length value
	var dfx; //dust_fx value
	var dfg; //fg_sprite value
	var dfa = 0; //draw_angle value
	var dust_color = 0;
	var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
	
	switch (name) {
	    default: 
	    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	    case "doublejump": 
	    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
	}
	var newdust = spawn_dust_fx(x, y, asset_get("empty_sprite"),dlen);
	if newdust != noone{
		newdust.dust_fx = dfx; //set the fx id
		if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
		newdust.dust_color = dust_color; //set the dust color
		if dir != 0 newdust.spr_dir = dir; //set the spr_dir
		else newdust.spr_dir = other.spr_dir;
		newdust.draw_angle = dfa;
	}
	return newdust;
}



#define hitbox_detection(detect_owner_hits, detect_enemy_hits) // supersonic
//estimated like 80% accurate imo
if hit_lockout <= 0 || true{
	var article = self;
	//reset hitbox groups when necessary
	with (oPlayer)
		if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
			other.hbox_group[@ player-1][@ attack] = array_create(10,0);
			//with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
		}
	
	var currentHighestPriority = noone;
	with (pHitBox) if instance_exists(self) && instance_exists(article){
		var can_player_hit = (player == other.player && detect_owner_hits || player != other.player && detect_enemy_hits);
		var not_self = ("article_owner" not in self || article_owner.player != other.player)
		if can_player_hit && not_self && `hit_${article}` not in self
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
		spawn_hit_fx(other.x+hit_effect_x*spr_dir,other.y+hit_effect_y,hit_effect);
		//this handles the knockback; hitstun, speed, etc.
		with other {
			//print_debug(`hit_${article}`);
			// set_a_state(AS.HITSTUN); //set_a_state is my article state setting function; replace this with yours lol
			
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
			
			hit_lockout = other.no_other_hit;
			// for you archy. 
			// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
			if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
			else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
			kb_dir = get_hitbox_angle(other);
			
			if currentHighestPriority.player == player{
				if state == PS_FROZEN{
					orig_knock = min(orig_knock * 3, 32);
				}
				set_article_state(PS_ATTACK_AIR);
			}
			
			else{
				orig_knock *= 0.75;
				fake_image_angle = -720;
				set_article_state(PS_IDLE);
				bomb_lockout = true;
				activation_queued = false;
			}
			
			hsp = lengthdir_x(orig_knock, kb_dir);
			vsp = lengthdir_y(orig_knock, kb_dir);
			if abs(hsp) spr_dir = sign(hsp);
			prev_vsp = vsp;
			prev_hsp = hsp;
			
			hit_player_obj = other.player_id;
			hit_player_num = other.player;
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
} else hit_lockout--;

return false;



#define set_article_state(n_s)

was_frozen = state == PS_FROZEN;
visible = true;

state = n_s;
state_timer = 0;
fake_image_index = 0;
has_bounced = false;
has_hit = false;

if state == PS_ATTACK_AIR{
	if was_frozen{
		spawn_hitbox_as_melee(AT_DSPECIAL_2, 2);
		sound_play(player_id.sfx_botw_stasis_end);
		sound_play(player_id.sfx_botw_stasis_hit);
		stasis_arrow = spawn_hit_fx(x, y, player_id.vfx_stasis_arrow);
		stasis_arrow.spr_dir = 1;
		stasis_arrow.depth = player_id.depth - 1;
		stasis_aim();
	}
	else{
		spawn_hitbox_as_melee(AT_DSPECIAL, 1);
	}
}



#define stasis_aim

if !instance_exists(self) return; // ok

with oPlayer if get_player_team(player) != get_player_team(other.player_id.player) other.kb_dir = point_direction(other.x, other.y, x + hsp, y - char_height / 2 + vsp);
stasis_arrow.draw_angle = kb_dir - 90;
var spd = point_distance(0, 0, hsp, vsp);
hsp = lengthdir_x(spd, kb_dir);
vsp = lengthdir_y(spd, kb_dir);



#define spawn_hitbox_as_melee(atk, num)

// spawn hitboxes

with pHitBox if "article_owner" in self && article_owner == other{
	instance_destroy(self);
}
		
var hbox = create_hitbox(atk, num, round(x), round(y));
hbox.article_owner = self;

hbox.type = 2;
hbox.spr_dir = spr_dir;

return hbox;