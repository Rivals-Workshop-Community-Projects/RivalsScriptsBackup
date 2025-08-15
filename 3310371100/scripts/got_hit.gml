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
				
				var tmp_fx = spawn_hit_fx( x-10+random_func( 1, 20, true )+(40*spr_dir*-1), y-70-20+random_func( 4, 40, true ), fx_ice_mist_A);
				
				tmp_fx.image_alpha = 0.5;
				tmp_fx.hsp = ((1.5+random_func( tmp_fx%5, 1, false ))*spr_dir*-1)/1.5
				tmp_fx.vsp = ((1+random_func( tmp_fx%5, 2, false ))*-1)/1.1
				
				var tmp_fx = spawn_hit_fx( x-10+random_func( 2, 20, true )+(40*spr_dir*-1), y-60-20+random_func( 5, 40, true ), fx_ice_mist_A);
				
				tmp_fx.image_alpha = 0.5;
				tmp_fx.hsp = ((1.7+random_func( tmp_fx%5, 1, false ))*spr_dir*-1)
				tmp_fx.vsp = ((0+random_func( tmp_fx%5, 2, false ))*1)/1.15
				
				var tmp_fx = spawn_hit_fx( x-10+random_func( 2, 20, true )+(40*spr_dir*-1), y-50-20+random_func( 5, 40, true ), fx_ice_mist_A);
				
				tmp_fx.image_alpha = 0.5;
				tmp_fx.hsp = ((2+random_func( tmp_fx%5, 1, false ))*spr_dir*-1)
				tmp_fx.vsp = ((-1+random_func( tmp_fx%5, 2, false ))*1)/1.25
		}
	}
}