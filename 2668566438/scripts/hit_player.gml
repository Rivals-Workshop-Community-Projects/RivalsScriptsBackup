// code for kamehameha
if my_hitboxID.attack == AT_DAIR{
	old_vsp = -5;
	window = 4;
	window_timer = 0;
	can_float = true;
}
if(was_on_puddle){
	hit_player_obj.poi_cooldown += floor(100 * my_hitboxID.damage / 6);
	if(hit_player_obj.poi_cooldown >= 500){
		hit_player_obj.poi_cooldown = 500;
	}hit_player_obj.bee_victim = self;
	was_on_puddle = false;
}
if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2 && my_hitboxID.hitpause > 15{
	sound_play(sfx_dbfz_hit_broken);
}
if(my_hitboxID.attack != AT_FSTRONG){
	killed_with_fstrong = false;
}else{
	killed_with_fstrong = true;
}
if(my_hitboxID.attack != AT_FSPECIAL){
	fspecial_target = noone;
}
switch(my_hitboxID.attack){
	case AT_JAB:
	case AT_DSPECIAL:
		hit_player_obj.poi_cooldown += floor(100 * my_hitboxID.damage / 6);
		if(hit_player_obj.poi_cooldown >= 500){
		    hit_player_obj.poi_cooldown = 500;
		}hit_player_obj.bee_victim = self;
	case AT_FSPECIAL:
		fspecial_target = hit_player_obj;
	break;
	break;
	case AT_NSPECIAL:
		hit_player_obj.poi_cooldown += floor(100 * my_hitboxID.damage / 2);
		if(hit_player_obj.poi_cooldown >= 500){
		    hit_player_obj.poi_cooldown = 500;
		}hit_player_obj.bee_victim = self;
	break;
	case AT_DSTRONG:
		if(my_hitboxID.hbox_num == 3){
			hit_player_obj.poi_cooldown += floor(100 * my_hitboxID.damage / 6);
			if(hit_player_obj.poi_cooldown >= 500){
			    hit_player_obj.poi_cooldown = 500;
			}hit_player_obj.bee_victim = self;			
		}
	case AT_DATTACK:
		sound_play(asset_get("sfx_blow_heavy1"));
	break;
}