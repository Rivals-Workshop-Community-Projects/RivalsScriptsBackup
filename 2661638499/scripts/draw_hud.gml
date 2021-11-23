// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;


draw_debug_text(temp_x, temp_y-12, string_upper(unown_text_buffer));
draw_debug_text(temp_x, temp_y-32, string_upper(string_copy(unown_text_buffer, unown_best_word_pos+1, unown_best_word_length)));

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5;
user_event(14);