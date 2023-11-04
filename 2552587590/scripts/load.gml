sprite_change_offset("idle", 64, 96);
sprite_change_offset("run", 64, 96);
sprite_change_offset("taunt", 64, 96);
sprite_change_offset("turn", 64, 96);

pet_w = 36;			// Default: 36 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 128;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

ledge_spr = idle_spr;
wait_spr = idle_spr;

frame_data_loaded = false;
data = [];

last_text_size = [];
was_attacking = false;
prev_attack = 0;
times_attack_repeated = 0;