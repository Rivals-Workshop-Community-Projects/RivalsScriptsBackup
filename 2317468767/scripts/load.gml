pet_w = 0;			// Default: 36 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 90000000000000000000000;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

charge_time = 30;

with(asset_get("oPlayer"))
{
    wector_flag = false;
    wector_speed = 0;
    wector_charge_counter = 0;
}