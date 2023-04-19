//other_init - called by all other players when they're created while this workshop character exists

//MOTION BLUR CODE
blur = array_create(7);

targeted = false;
target_time = 0;
maintarget = false; //When there are multiple enemies locked on, this one takes priority.

prev_damage = 0;
timestop_damage = 0;
timestop_hit = false;