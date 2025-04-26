//sequencer init

init = 0;
sprite_index = asset_get("empty_sprite");

depth = -50;


state = 0;
state_timer = 0;
state_end = 10;
loop_count = 0;

special_killeffect = 0;
special_killeffect_max = 60;

music_timer = 0;
music_timing = 397;
music_transition_timer = 0;
music_transition_timer_max = 30;
music_transition_b_timer = 0;
music_transition_b_timer_max = 80;