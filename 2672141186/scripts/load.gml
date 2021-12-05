pet_w = 0;		// Default: 36 (The buddy's width)
run_speed = 0;		// Default: 3
max_run_dist = 0;	// Default: 100 (The buddy will follow the player once their distance exceeds this value)

sprite_index = sprite_get("blank");

#macro TMS_LENGTH 60

//Time machine states
tms = array_create(TMS_LENGTH, undefined);
tms_current = 0;
tms_mode = "normal";
tms_load = 0;
tms_charge = 0;