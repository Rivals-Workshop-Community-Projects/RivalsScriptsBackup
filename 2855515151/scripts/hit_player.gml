//#region ftilt
// if(my_hitboxID.attack == AT_FTILT)
// {
//     sound_play( wandhit_sfx1 , false,false, 5.4 );
// }
//#endregion 

switch my_hitboxID.attack
{
	case AT_JAB:
		if my_hitboxID.hbox_num == 4 hit_jab3 = true;
		//gamefeel juice
		if my_hitboxID.hbox_num != 2 {
			sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
			sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		}
		if(my_hitboxID.hbox_num == 2){
			spawn_hit_fx(hit_player_obj.x, floor(hit_player_obj.y-14), 261);
		}
	break;
	case AT_DAIR:
		var hb, vsp_to_apply;
		hb = my_hitboxID.hbox_num == 4;
		vsp_to_apply = floor(min((old_vsp - (!fast_falling)*(sign(vsp) == 0 ? -1 : sign(vsp)) )*!hb - ((6 + (min(get_player_damage( hit_player_obj.player )/30,6)))*hb), 0));
		old_vsp = vsp_to_apply;
		
		if !hit_player_obj.clone and hit_player_obj.free
		{
			hit_player_obj.x = lerp(hit_player_obj.x, x, 0.05)
			hit_player_obj.y = lerp(hit_player_obj.y, y+10, 0.08)
		}
	break;
	
	case AT_DATTACK:
		if !hit_player_obj.clone and my_hitboxID.hbox_num != 2
		{
			hit_player_obj.x = lerp(hit_player_obj.x, x + ((100 + (40*(my_hitboxID.hbox_num - (my_hitboxID.hbox_num > 2))))*spr_dir), 0.2)
			hit_player_obj.y = lerp(hit_player_obj.y, y-6, 0.15 + (.2*my_hitboxID.hbox_num == 1))			
		}
	break;
	case AT_UAIR:
	case AT_EXTRA_2:
		if !hit_player_obj.clone and (other.y <= y)
		{
			old_vsp -=2
		}
	case AT_NAIR:
		if !hit_player_obj.clone
		{
			switch my_hitboxID.hbox_num
			{
				case 1:
					hit_player_obj.x = lerp(hit_player_obj.x, x + (40*spr_dir), 0.15)
				break;
				case 2:
					old_vsp -= 3
				break;
			}
			//hit_player_obj.y = lerp(hit_player_obj.y, y-6, 0.15)			
		}
		//gamefeel juice
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
	break;
	
	// // strongs code both for gamefeel and functionality
	case AT_FSTRONG:
		//clyde bite
		/*if my_hitboxID.orig_player == player {
			if my_hitboxID.hbox_num == 1 {
				sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.85,1.35)
				if (hit_player_obj.state == PS_HITSTUN) or (hit_player_obj.state == PS_HITSTUN_LAND) {
					//pseudo-command grab code to make sure that even when clyde goes fast, the opponent doesn't fall out
					hit_player_obj.x = lerp(hit_player_obj.x,my_hitboxID.x + 15 * my_hitboxID.spr_dir,(1*strong_charge/110))
					hit_player_obj.y = lerp(hit_player_obj.y,my_hitboxID.y + 20,(1*strong_charge/100))
				}
			}
			if my_hitboxID.hbox_num == 2 {
				sound_play(asset_get("sfx_forsburn_reappear_hit"),false,0,0.65,1.65)
				sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.9,1.35)
			}
		}*/
		break;
		
	case AT_DSTRONG:

		if my_hitboxID.hbox_num == 1 {
			sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, .8)
			sound_play(asset_get("sfx_forsburn_reappear_hit"),false,0,0.65,0.85)
			sound_play(asset_get("sfx_ell_strong_attack_explosion"),false,0,0.45,1.85)
			shake_camera(6, 12);
		} else  if my_hitboxID.hbox_num == 2 {
			spawn_hit_fx(my_hitboxID.x-spr_dir*20, my_hitboxID.y+10, 261);
			sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.65,1.55)
		} else {
			sound_play(asset_get("sfx_forsburn_reappear_hit"),false,0,0.65,0.85)
			sound_play(asset_get("sfx_ell_strong_attack_explosion"),false,0,0.45,1.85)
		}
		break;
		
	case AT_USTRONG:
		sound_play(asset_get("sfx_ori_charged_flame_hit"),false,0,0.85,0.85)
		//sound_play(asset_get("sfx_zetter_fireball_fire"),false,0,0.35,1.65)
		if(my_hitboxID.hbox_num < 7 and !hit_player_obj.clone){
			sound_play(asset_get("sfx_mol_spark_explode1"), false, noone, .5, 1.2);
			hit_player_obj.x = lerp(hit_player_obj.x, my_hitboxID.x, .25);
			hit_player_obj.y = lerp(hit_player_obj.y, my_hitboxID.y+20, .25);
		} else {
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.95,1.25)
		}
		break;
	
	//other normals gamefeel code
	case AT_FTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_UTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_DTILT:
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		break;
	case AT_BAIR:
		if(my_hitboxID.hbox_num == 1) {
		spawn_hit_fx(my_hitboxID.x-spr_dir*20, my_hitboxID.y+10, 261);
		sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
		sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.65,1.55)
		} else {
			sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.55,1.85)
		}
		break;
	case AT_UAIR:
	case AT_EXTRA_2: //hatless uair
		if my_hitboxID.hbox_num != 4 {
			sound_play(asset_get("sfx_ell_steam_hit"),false,0,0.45,1.35)
			sound_play(asset_get("sfx_ori_energyhit_weak"),false,0,0.55,1.65)
		}
		break;
	case AT_DSPECIAL_2:
		if my_hitboxID.hbox_num == 3
		{
			my_hitboxID.otto_hitpause = 1;
			sound_play(asset_get("sfx_absa_kickhit"));
			sound_play(asset_get("sfx_absa_concentrate"));
		}
		break;
	case AT_USPECIAL:
		//set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
		//uspecBan = true;
		break;
	case AT_NSPECIAL:
		if(my_hitboxID.hbox_num == 2){
			spawn_hit_fx(x+58*spr_dir, y-30, 253);
			old_hsp = -spr_dir*8;
			shake_camera(8, 12);
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.9,.8);
			sound_play(asset_get("sfx_blow_heavy2"),false,0,0.9,1.35);
		}
		break;
	case AT_NSPECIAL_2:
		if(my_hitboxID.hbox_num == 2){
			spawn_hit_fx(x+58*spr_dir, y-30, 253);
			old_vsp = 8;
			shake_camera(8, 12);
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.9,.8);
			sound_play(asset_get("sfx_blow_heavy2"),false,0,0.9,1.35);
		}
		break;
	case AT_FSTRONG:
		if(my_hitboxID.hbox_num == 2){
			spawn_hit_fx(hit_player_obj.x+spr_dir*20, floor(hit_player_obj.y-38), 260);
			sound_play(asset_get("sfx_blow_heavy1"),false,0,1,.95);
			sound_play(asset_get("sfx_shine_charged"),false,0,0.9,1.35);
			sound_play(asset_get("sfx_flareo_rod"),false,0,.9,1);
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.85,1.45)
		} else {
			sound_play(asset_get("sfx_ori_energyhit_heavy"),false,0,0.55,1.85)
		}
		break;
		
}



//Grabs player
//	i added the hitstun state check so it prevents super armored enemies from being grabbed, aswell as making sure they aren't in ranno's bubble
//	also you should concider adding [hatted_id == undefined] too, just to make sure it won't overwrite who you grabbed
//	- bar-kun

if (my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 1) &&
	(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
	&& !hit_player_obj.bubbled)
{
    hatted_id = hit_player_obj.id;
    hatted_id.invincible = true;
    hatted_id.invince_time = 4;
	//hatted_id.hitstop = 2; //this number doesn't matter it will simply put them in hitpause for a long time
}



//Grab Hits
if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 3) && !hit_player_obj.clone) {
    hat_object.hatted_id = hit_player_obj.id;
    hat_object.hatted_id.invincible = true;
    hat_object.hatted_id.invince_time = 20;
	hat_object.hitstop = clamp(my_hitboxID.hitpause + my_hitboxID.damage + my_hitboxID.hitpause_growth * 0.05, 0, 20);	
	hat_object.hatted_id.visible = false;
}

if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 4) && !hit_player_obj.clone) {
	hat_object.hitstop = clamp(my_hitboxID.hitpause + my_hitboxID.damage + my_hitboxID.hitpause_growth * 0.05, 0, 20);	
}

