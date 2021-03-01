//got_parried

//if (my_hitboxID.attack == AT_NSPECIAL){
//    if (my_hitboxID.hbox_num == 1){
        with (asset_get("obj_article1")){
			if (player_id == other.id){
			    state = 4;
		        state_timer = 0;
		        death_timer = 0;
			}
        }
//    }
//}