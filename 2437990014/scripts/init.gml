debug = false;

//para-assault grenadiers
//manually creating starting animation for aesthetics
//0 = lifetime, 1 = start_x
start_spawn[0, 0] = 300;
start_spawn[0, 1] = 1120;
start_spawn[1, 0] = 450;
start_spawn[1, 1] = 800;
start_spawn[2, 0] = 400;
start_spawn[2, 1] = 950;
start_spawn[3, 0] = 350;
start_spawn[3, 1] = 800;
start_spawn[4, 0] = 500;
start_spawn[4, 1] = 900;
spawn_troopers = false;
spawn_trooper_count = 0;
num_troopers = 5;
spawn_interval = 40;
event_interval = 2000;

//tank and gas lancers
timer = 0;
cav_interval = 5 + random_func(0, 100, true);
cav_num = 0;

//final transition
stocks = get_match_setting( SET_STOCKS );
transition = 1;
trans_time = 0;

sound_play(sound_get("warcry"), false, 0, 1.5);

track = random_func(round(current_second/2.5), 2, true);
