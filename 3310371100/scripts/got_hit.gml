//USHR GOT HIT

signalling_all_my_besties_i_have_been_HIT_by_this_player = hit_player_obj;
grabbed_player_obj = noone;

if (prev_state==PS_ATTACK_AIR||prev_state==PS_ATTACK_GROUND){
	//print("phase1")
	if (attack==AT_FSPECIAL_2){
		//print("phase2")
		if (fsp_vulnerable){
			//print("phase3")
			fsp_loop_count = 0;
			sound_play(sound_get("oops"),false,noone,0.6,1)
		}
	}
}