
//if (hitstop == 0) hitpause = false;

//debug_var = my_hitboxID.hbox_num;

//ignore everything if this is a reflected attack.
if (my_hitboxID.player != my_hitboxID.orig_player) exit;

//reward melee attacks with tp gain. don't gain meter from EX FStrong.
if (my_hitboxID.damage > 0 && hit_player_obj.invincible == false && (my_hitboxID.attack != AT_FSTRONG || my_hitboxID.type != 2)) { // my_hitboxID.type == 1
	ralsei_tp += my_hitboxID.damage / 3 * ralsei_tp_multiplier; //max(1, floor(my_hitboxID.damage / 3) );
}


switch (my_hitboxID.attack) {
	case AT_NAIR:
		if (my_hitboxID.hbox_num == 1) {
			spawn_hit_fx(x, y - 30, 302);
		}
		break;
		
	case AT_DAIR:
		//hitting a projectile removes this attack's endlag
		has_hit = 1;
	break;
	case AT_BAIR:
		//mom get the camera
		if (my_hitboxID.hbox_num == 3) {
			spawn_hit_fx(my_hitboxID.x + spr_dir * 32, my_hitboxID.y, 303);
			ralsei_bair_bullet_hit_player_object_id = hit_player_obj;
			sound_play(sound_get("hitmarker"));
			sound_play(sound_get("hitbody_by_filmmakersmanual"));
			var fx_x = hit_player_obj.x;
			var fx_y = hit_player_obj.y - floor(hit_player_obj.char_height/2);
			spawn_hit_fx(fx_x, fx_y, ralsei_fx_hitmarker).depth = hit_player_obj.depth - 1;
			
			//rune
			if (has_rune("C") && scr_detected_headshot()) {
				spawn_hit_fx(fx_x, fx_y, 305);
				with (hit_player_obj) {
					if (state == PS_HITSTUN && hitpause == true && hitstop >= 1) {
						hitstop = min(hitstop + 15, 30);
					}
				}
			}
		}
	break;
	case AT_UAIR:
		if (my_hitboxID.hbox_num == 1
	 	 && hit_player_obj.state == PS_HITSTUN
		 && state != PS_HITSTUN && state != PS_HITSTUN_LAND
		 && hit_player_obj.hitpause && hitpause) {
			hit_player_obj.old_hsp += clamp(old_hsp / 2, -5, 5);
			hit_player_obj.old_vsp += clamp(old_vsp / 2, -5, 5);
		}
	break;
	case AT_FTILT:
		if (my_hitboxID.hbox_num == 2) {
		sound_stop(sound_get("shotgun_fire_by_lemudcrab_edited"));	
		sound_play(sound_get("shotgun_fire_by_lensflare8642_edited"));
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 19).depth -= 1; //basic sweetspot
		}
	break;
	case AT_UTILT:
		//remove whifflag even if the projectile part of the attack hits.
		if (state == PS_ATTACK_GROUND && attack == AT_UTILT && hit_player_obj.state_cat == PS_HITSTUN) has_hit = true;
		
		//utilt projectiles can't be crouch cancelled.
		if (my_hitboxID.type == 2 && hit_player_obj.state == PS_HITSTUN && hit_player_obj.hitpause) {
			hit_player_obj.vsp = min(hit_player_obj.vsp, -1);
		}
		
		//play extra sound on finishing hit
		if (my_hitboxID.hbox_num == 5 && hit_player_obj.state == PS_HITSTUN) {
			sound_play(asset_get("sfx_burnconsume"));
			spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 148).draw_angle += spr_dir * 45;
		}
	break;
	case AT_DSTRONG:
		//if the opponent wasn't stunned by this move, don't heal them.
		if (hit_player_obj.state != PS_HITSTUN && hit_player_obj.state != PS_HITSTUN_LAND) break;
		
		//heal the hit player.
		var hit_object_player = hit_player_obj.player;
		if (hit_object_player >= 0 && hit_object_player) {
			ralsei_dstrong_player_heal_amount[hit_object_player] = ralsei_dstrong_heal_amount;
			//heal more and stun longer if this attack is powered up AND the opponent is not on the same team.
			if (ralsei_use_super_move && get_player_team(hit_object_player) != get_player_team(player)) {
				//ralsei_dstrong_player_heal_amount[hit_object_player] += 5;
				hit_player_obj.hitstop += 50;
				hit_player_obj.hitstop_full += 50;
			}
			//heal fx.
			repeat (4) {
				spawn_hit_fx(hit_player_obj.x - 25 + random_func(13, 50, true), hit_player_obj.y - random_func(14, floor(hit_player_obj.char_height), true), ralsei_fx_heal).depth = depth-1;
			}
		}
	break;
	case AT_FSPECIAL: 
		if (my_hitboxID.hbox_num == 4) {
			if (instance_exists(ralsei_fspecial_minigun_article_id)) {
				spawn_hit_fx(my_hitboxID.x + ralsei_fspecial_minigun_article_id.spr_dir * 32, my_hitboxID.y, 303).spr_dir = -spr_dir;
			}
			if (my_hitboxID.hitbox_timer >= 16) sound_play(ralsei_fspecial_minigun_sweetspot_sfx);
		}
		
	break;
	
	case AT_NSPECIAL: 
		if (my_hitboxID.hbox_num == 1) {
			spawn_hit_fx(my_hitboxID.x + spr_dir * 32, my_hitboxID.y, 303).spr_dir = -spr_dir;
			sound_play(sound_get("hitbody_by_filmmakersmanual"));
		}
	break;
	
}




#define scr_get_player_obj_id_with_highest_damage
epinel_grabbed_player_object_id = noone;
instance_exists(id);
return argument[0];
//rule out one of the players if they don't exist
if ( argument[0] < 0 || !instance_exists(argument[0]) ) {
	if ( argument[1] < 0 || !instance_exists(argument[1]) ) return noone;
	else { return argument[1]; }
}
else if (argument[1] < 0 || !instance_exists(argument[1])) { return argument[0]; }

//sort by health first
var tempvar_hp0 = get_player_damage(argument[0].player);
var tempvar_hp1 = get_player_damage(argument[1].player);

if (tempvar_hp0 > tempvar_hp1) return argument[0];
if (tempvar_hp0 < tempvar_hp1) return argument[1];

//then sort by distance
var tempvar_dist0 = point_distance(x, y, argument[0].x, argument[0].y);
var tempvar_dist1 = point_distance(x, y, argument[1].x, argument[1].y);

if (tempvar_dist0 > tempvar_dist1) return argument[0];
if (tempvar_dist0 < tempvar_dist1) return argument[1];

//tiebreaker: just return the first player.
return argument[0];



#define scr_get_player_width
return (argument[0].hurtboxID.bbox_right - argument[0].hurtboxID.bbox_left);

#define scr_get_player_height
return (argument[0].hurtboxID.bbox_bottom - argument[0].hurtboxID.bbox_top);

#define scr_detected_headshot
var height = scr_get_player_height(hit_player_obj);
var top = hit_player_obj.hurtboxID.bbox_top + height * 0.01;
var bottom = top + height * 0.24;
return (my_hitboxID.y >= top && my_hitboxID.y <= bottom);