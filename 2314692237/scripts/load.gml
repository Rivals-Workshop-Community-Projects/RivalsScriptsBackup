pet_w = 0;			// Default: 36 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 90000000000000000000000;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

air_speed_limit_multiplier = 10;

with(asset_get("oPlayer"))
{
    jcroll_flag = false;
    jcroll_window_length = 6;
    jcroll_hsp = 0;
}