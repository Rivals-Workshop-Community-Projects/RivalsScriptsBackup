//article1_init
//Graze Machine
enum GRAZE {
	blue,
	pink
}
can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
visible = 0;
sprite_index = sprite_get("grazebox");
mask_index = sprite_get("grazebox");
tenshi = noone;
can_graze = true;
vo_lockout = 30;
vo_timer = 0;

hit_lockout = 60;
hit_timer = 0;
counter_graze = false;
graze_lockout = 7;
graze_timer = graze_lockout+1;

graze_x = 0;
graze_y = 0;
graze_dir = 0;

blue = false;
