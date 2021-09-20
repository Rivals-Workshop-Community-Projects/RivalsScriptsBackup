my_hitboxID.has_hit_player = true;

if my_hitboxID.type == 1 && !cur_spear{
	var found = false;
	with obj_article2 if player_id == other found = true;
	with pHitBox if player_id == other && "is_spear" in self && is_spear found = true;
	if !found{
		var a = instance_create(hit_player_obj.x, hit_player_obj.y - 48, "obj_article2");
		a.fake_image_angle = 135;
		if abs(hit_player_obj.old_hsp){
			a.spr_dir = sign(hit_player_obj.old_hsp);
		}
		a.hsp = -4 * a.spr_dir;
		a.vsp = -7;
		a.spear_durability = spear_durability_max;
		sound_play(sfx_botw_rupee);
		
		var spear_found = 0;
		
		if "has_dropped_link_spear" not in hit_player_obj{
			hit_player_obj.has_dropped_link_spear = true;
			switch(hit_player_obj.select){
				case CH_MAYPUL:
				case CH_SYLVANOS:
					spear_found = SPEAR_TRAVELER;
					break;
				case CH_WRASTOR:
				case CH_SHOVEL_KNIGHT:
					spear_found = SPEAR_HALBERD;
					break;
				case CH_ORCANE:
					spear_found = SPEAR_MOP;
					break;
				case CH_RANNO:
				case CH_KRAGG:
					spear_found = SPEAR_BOKO;
					break;
				case CH_ZETTERBURN:
				case CH_FORSBURN:
				case CH_ELLIANA:
					spear_found = SPEAR_FLAME;
					break;
				case CH_ETALUS:
				case CH_ORI:
					spear_found = SPEAR_FROST;
					break;
				case CH_ABSA:
					spear_found = SPEAR_THUNDER;
					break;
				case CH_CLAIREN:
					spear_found = SPEAR_GUARDIAN;
					break;
				default:
					if "link_spear_drop" in hit_player_obj{
						spear_found = clamp(hit_player_obj.link_spear_drop, 1, 8);
					}
			}
		}
		
		if spear_found{
			a.fake_image_index = spear_found;
		}
		
		else{
			if array_length(spear_queue) == 0 || spear_queue_position > 4{
				spear_queue = [
					SPEAR_FLAME + min(random_func(10, 4, true), 3),
					SPEAR_TRAVELER,
					SPEAR_HALBERD,
					SPEAR_MOP,
					SPEAR_BOKO
					];
				
				var i, j, k;
				
				var size = 5;
				
				for (i = 0; i < size; i += 1){
				    j = min(random_func(i, size - i, true) + i, size - 1);
				    if (i != j){
				        k = spear_queue[i];
				        spear_queue[i] = spear_queue[j];
				        spear_queue[j] = k;
				    }
				}
				
				spear_queue_position = 0;
			}
			
			a.fake_image_index = spear_queue[spear_queue_position];
			spear_queue_position++;
		}
		if phone_cheats[CHEAT_SPEAR_ID]{
			a.fake_image_index = phone_cheats[CHEAT_SPEAR_ID];
		}
		a.phone_offscr_index = a.fake_image_index; // image_index of the icon
	}
}

switch(my_hitboxID.attack){
	case AT_FTILT:
		sound_play(sfx_minecraft_shield[1]);
		break;
	case AT_UTILT:
	case AT_DAIR:
	case AT_FAIR:
		if my_hitboxID.hbox_num == 2{
			sound_play(sfx_botw_hit_1);
		}
		break;
	case AT_UAIR:
		switch my_hitboxID.hbox_num{
			case 1:
			case 2:
				if hit_player_obj.state_cat == SC_HITSTUN{
					var amt = 0.25;
					hit_player_obj.x = lerp(hit_player_obj.x, x, amt);
					hit_player_obj.y = lerp(hit_player_obj.y, y - 48, amt);
				}
				break;
			case 3:
				if spears[cur_spear].sfx[0] != noone{
					sound_play(spears[cur_spear].sfx[0]);
				}
				break;
			case 4:
				sound_play(sfx_botw_crit);
				break;
		}
		break;
	case AT_NSPECIAL:
		if my_hitboxID.is_spear{
			my_hitboxID.hitpause_timer = floor(hit_player_obj.hitstop);
			my_hitboxID.in_hitpause = true;
			if my_hitboxID.hbox_num == 2{
				with my_hitboxID sound_play(other.sfx_botw_crit);
			}
		}
		break;
	case AT_FSTRONG:
		if my_hitboxID.hbox_num == 2{
			sound_play(sfx_botw_hit_1);
		}
	case AT_USTRONG:
		if my_hitboxID.hbox_num == 3{
			sound_play(sfx_botw_crit);
		}
		break;
	case AT_DSTRONG:
		if my_hitboxID.hbox_num == 1{
			hit_player_obj.x = lerp(hit_player_obj.x, x + 64 * spr_dir, 0.75);
			hit_player_obj.y = lerp(hit_player_obj.y, y, 0.75);
		}
}



if ("article_owner" in my_hitboxID && !hit_player_obj.clone ){
	my_hitboxID.article_owner.hitstop = round(hit_player_obj.hitstop);
	my_hitboxID.article_owner.has_hit = 1;
	my_hitboxID.article_owner.has_hit_player = 1;
	my_hitboxID.article_owner.hit_player_obj = hit_player_obj;
}

if my_hitboxID.type == 1 && !hit_player_obj.clone melee_hit_player = hit_player_obj;