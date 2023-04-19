if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 1){
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+(30*spr_dir), .8);
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-20, .4);
    }
}

switch my_hitboxID.attack {
    case AT_FSTRONG:
    case AT_USTRONG:
     if my_hitboxID.hbox_num == 1 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_hod_charged_uspecial_hit"));
     }
    break;
    case AT_FAIR:
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_hod_charged_uspecial_hit"));
     }
    break;

	case AT_FSPECIAL_2:
     if my_hitboxID.hbox_num == 2 {
         sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8);
         sound_play(asset_get("sfx_hod_charged_uspecial_hit"));
     }
    break;
}

if (my_hitboxID.attack == AT_NSPECIAL){
	if ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    && was_parried == false && hit_player_obj.clone == false && my_hitboxID.hbox_num <= 2 && instance_exists(point)){
		point.point_pull = true;
		point.enemy_caught = hit_player_obj;
	}
	else {
		point.point_pull = false;
	}
}

if (hit_player_obj == beaded_player && marked_timer && bead_trigger == 0){
	if (my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG 
	|| (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 2)
	||(my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 2)
	|| (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1)){
		launch_direction = spr_dir;
		attack_used = my_hitboxID.attack;
		bead_trigger = 30;
	}
	else {
		with (oPlayer){
			if (state == PS_HITSTUN && hitpause){
				take_damage(player, -1, +1);
			}
		}
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, dspecial_vfx);	
	//	sound_play(sound_get("Hisako_BackLand_3D_02"));	
	}
	
}

if ((my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num < 3) 
	|| (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num > 1)
	|| my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DSTRONG){
	if (my_hitboxID.player == my_hitboxID.orig_player){
		marked_timer = 360;
		hit_player_obj.bead_marked = true;
		beaded_player = hit_player_obj;
	}
}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	if (hit_player_obj.state == PS_HITSTUN && hit_player_obj.hitpause){
		sound_play(asset_get("sfx_forsburn_reappear_hit"));
		spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-20, hfx_wind_large);
	}
	dspecial_hit = true;
}
