//other_init.gml

//holy light
lightstun_timer = -1; //it counts down twice, once for the pre timer and again for the stun itself
lightstun = false;
lightstun_pre_stun = false;

fx_lightstunned_frame = 0;
fx_lightstunned_rot = 0;
fx_lightstunned_alpha = 1;
fx_lightstunned_speed = 0.25;
fx_lightstunned_alphaincrease = false;

//holy burn
holyburning = false;
holyburn_counter = 0;
holyburn_default_maxcount = 120;
holyburn_maxcount = holyburn_default_maxcount;
holy_burned_by = noone;

//lord's blessing
god_damage = 1.5;
god_burn_time = 240;

//theikos
theikosAttack = 1.5;