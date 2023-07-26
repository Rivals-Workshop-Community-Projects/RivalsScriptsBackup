// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;



// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);