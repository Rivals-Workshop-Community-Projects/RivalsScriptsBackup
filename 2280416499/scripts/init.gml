practice = get_training_cpu_action() != CPU_FIGHT;



inited = true;
phone_inited = true;

phone_user_id = noone;

cur_settings = [];

phone_user_id = noone;

setting_updated = noone;

setting_clicked = noone;

settings_loaded = false;



songs = [];

music_timer = 0;
music_timer_max = 30;



has_music_interrupted = false;



firmware = 12;

death_timer = 0;
death_timer_max = 120;

if practice && is_aether_stage(){
	death_timer = death_timer_max;

	with obj_stage_article if num == 9{
		state = 2;
		state_timer = -90 - other.death_timer_max;
		// draw_height = draw_height_high;
	}
}