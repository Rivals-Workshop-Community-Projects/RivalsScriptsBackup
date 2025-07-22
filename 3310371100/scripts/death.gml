// called when the character gets KO'd


signalling_all_my_besties_i_have_been_PARRIED = true; //ive not been parried but this will remove all of my clouds

with(asset_get("obj_article1")){
	if (player_id == other.id){
		ushr_rainclouded = false;
	}
}
fsp_loop_count = 0;