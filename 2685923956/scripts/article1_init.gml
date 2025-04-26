//article1_init

//Hello This Is Doom Desire

init = 0;
sprite_index = sprite_get("dspecial_doomdesire_smol");

image_xscale = 2;
image_yscale = 2;
image_alpha = 0;
depth = 15;

state = 0;
state_timer = 0;
state_end = 0;
idle_cycle = 0;


eye_y_offset = 90; //118
eye_y_radius = 85; //80

quicker = false;

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;