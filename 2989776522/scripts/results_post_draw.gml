with(asset_get("draw_result_screen")){
    if(results_timer == 5){
        //with(player){
            if(get_synced_var(player) == 0){ //Adventure/Bristow
                rand = random_func(0, 14, true);
			    if(rand == 0){
			        sound_play(sound_get("adv_i_win"),false,noone,1.5);
			    }else if(rand == 1){
			        sound_play(sound_get("adv_now_noone_stands_in_my_way"),false,noone,2);
			    }else if(rand == 2){
			        sound_play(sound_get("adv_at_least_make_it_challenging"),false,noone,2);
			    }else if(rand == 3){
			        sound_play(sound_get("adv_haha_piece_of_cake"),false,noone,2);
			    }else if(rand == 4){
			        sound_play(sound_get("adv_better_luck_next_time"),false,noone,2);
			    }else if(rand == 5){
			        sound_play(sound_get("adv_laugh_too_easy"),false,noone,2);
			    }else if(rand == 6){
			        sound_play(sound_get("adv_laughing_forever"),false,noone,2);
			    }else if(rand == 7){
			        sound_play(sound_get("adv_laughing_forever2"),false,noone,2);
			    }else if(rand == 8){
			        sound_play(sound_get("adv_stop_your_futile_efforts"),false,noone,2);
			    }else if(rand == 9){
			        sound_play(sound_get("adv_you_fools_have_been_tricked"),false,noone,2);
			    }else if(rand == 10){
			        sound_play(sound_get("adv_ill_see_you_again_soon"),false,noone,2);
			    }else if(rand == 11){
			        sound_play(sound_get("adv_only_the_beginning"),false,noone,2);
			    }else if(rand == 12){
			        sound_play(sound_get("adv_not_bad"),false,noone,2);
			    }else if(rand == 13){
			        sound_play(sound_get("adv_mince_meat"),false,noone,2);
			    }
            }else if(get_synced_var(player) == 1){ //Modern/Pollock
                rand = random_func(0, 2, true);
			    if(rand == 0){
			        sound_play(sound_get("pollock_laugh"),false,noone,1.75);
			    }
            }else if(get_synced_var(player) == 2){ //Fandub/Alfred
                rand = random_func(0, 4, true);
			    if(rand == 0){
			        sound_play(sound_get("alfred_announcement"),false,noone,3);
			    }else if(rand == 1){
			        sound_play(sound_get("alfred_taking_over_universe"),false,noone,2.25);
			    }else if(rand == 2){
			        sound_play(sound_get("alfred_letsplays"),false,noone,2);
			    }else if(rand == 3){
			        sound_play(sound_get("alfred_garbage"),false,noone,2);
			    }
            }else if(get_synced_var(player) == 3){ //Pingas
                rand = random_func(0, 6, true);
			    if(rand == 0){
			        sound_play(sound_get("pingas vanished destroyed obliterated"),false,noone,2);
			    }else if(rand == 1){
			        sound_play(sound_get("pingas villain worthwhile"),false,noone,2);
			    }else if(rand == 2){
			        sound_play(sound_get("pingas ill have to give myself a promotion"),false,noone,2);
			    }else if(rand == 3){
			        sound_play(sound_get("pingas culmination of career"),false,noone,2);
			    }else if(rand == 4){
			        sound_play(sound_get("pingas mama proud"),false,noone,2);
			    }else if(rand == 5){
			        sound_play(sound_get("pingas_i_win_double_my_salary"),false,noone,2);
			    }
            }
        //}
    }
}
