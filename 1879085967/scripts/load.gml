sprite_change_offset("idle", 72, 94);
sprite_change_offset("run", 72, 94);
sprite_change_offset("taunt", 72, 94);
sprite_change_offset("wait", 72, 94);
sprite_change_offset("ledge", 72, 94);
sprite_change_offset("turn", 72, 94);

pet_w = 36;			// Default: 36 (The buddy's width)
run_speed = 1;		// Default: 3
max_run_dist = 100;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

hit_fx_create( sprite_get( "bubbles" ), 30 );