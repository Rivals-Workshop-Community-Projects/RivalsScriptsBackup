//reset a handful of flags
unown_text_buffer = "";
unown_best_word_pos = 0;
unown_best_word_length = 0;
unown_current_bonus = 0;
unown_recalculate_stats = true;

unown_a_used = false;
unown_c_used = false; 
unown_g_used = false; 
unown_t_used = false; 
// ------------- death.gml -------------------
// this file runs for one frame on death


sound_play(ssl_death_sound); //this plays when you die, change it in init for a different sound!