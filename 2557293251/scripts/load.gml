sprite_change_offset("idle", 0, 0);
sprite_change_offset("run", 0, 0);
sprite_change_offset("taunt", 0, 0);
sprite_change_offset("wait", 0, 0);
sprite_change_offset("ledge", 0, 0);
sprite_change_offset("turn", 0, 0);
sprite_change_offset("textbox", 60, -92);

pet_w = 36;			// Default: 36 (The buddy's width)
run_speed = 10;		// Default: 3
max_run_dist = 200;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)
round_start = 0;
diag_state = 0;
total_players = 0;  //Dont run if theres more than two :(
diag_player = 0; 
exist_timer = 0;
diag_timer = 0;
diag_fight = 0;
diag_fight_timer = 0;
diag_nrs = false;
diag_nrs_state = 0;
diag_nrs_timer = 0;
diag_nrs_p1 = 0;
diag_nrs_diag = 0;
diag_nrs_add = 0;
diag_text = sprite_get("textbox");
diag_announcer = 0; //0 - Regina (Rivals Based) , 1 - AKoT (Silly Anime)
diag_disable = false;
diag_disable_announce = false;
diag_alt_announce = false;

seed = 0;
announce_pick = 0;
announce[0] = sound_get("male_intro1");
announce[1] = sound_get("male_intro2");
announce[2] = sound_get("male_intro3");
announce[3] = sound_get("fem_intro1");
announce[4] = sound_get("fem_intro2");
announce[5] = sound_get("fem_intro3");