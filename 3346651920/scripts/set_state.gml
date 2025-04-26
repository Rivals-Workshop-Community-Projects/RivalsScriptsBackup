//


if (state==PS_HITSTUN||state==PS_HITSTUN_LAND){//taken atk
	if (hitpause){
		//if (hitstop == hitstop_full){
	if (hit_player_obj.slender_haunt == id){
		if (hit_player_obj.slender_haunt_timer>0){
			//print("happened")
			//print("vsp = "+string(vsp))
			//print("old_vsp = "+string(old_vsp))
			//print("hsp = "+string(hsp))
			//print("old_hsp = "+string(old_hsp))
			//print("hsp = "+string(sl_prev_hsp))
			//print("old_hsp = "+string(sl_prev_hsp_old))
			vsp = sl_prev_vsp
			old_vsp = 0
			hsp = sl_prev_hsp
			old_hsp = 0
			state = sl_prev_state
			prev_state = sl_prev_prev_state
			prev_prev_state = sl_prev_prev_prev_state
			state_cat = sl_prev_state_cat
			state_timer = sl_prev_state_timer
			attack = sl_prev_attack
			window = sl_prev_window
			window_timer = sl_prev_window_timer
			spr_dir = sl_prev_spr_dir
			strong_charge = sl_prev_strong_charge
			
			if (!free){
				vsp = 0;
				old_vsp = 0;
			}
			/*hit_player_obj.hitstop*=2
			hit_player_obj.hitstop_full*=2
			hitstop*=2
			hitstop_full*=2*/
			static_hitpause = hit_player_obj;
				sound_play(sound_get("antici_1"));
				sound_play(sound_get("distort_4"),false,noone,0.5);
				sound_play(sound_get("distort_6"));
				sound_play(sound_get("ETCSE_00000"));
				//sound_play(sound_get("distort_ex_2"),false,noone,0.6);
				sound_play(sound_get("distort_ex_2"));
				
			
		}
	}
		//}
	}
}



//=======================================================================================================================//


#define summon_afterimage
///summon_afterimage(hspboolean, vspboolean)
var aft_ = instance_create( x, y, "obj_article1" );
aft_.sprite_index = sprite_index;
aft_.image_index = image_index;
aft_.spr_dir = spr_dir;
aft_.hsp = hsp/3*argument[0];
aft_.vsp = vsp/3*argument[1];
return aft_;