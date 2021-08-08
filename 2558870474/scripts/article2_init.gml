// INIT

// Article Variables
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                              //Determines if the article goes through walls.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.
through_platforms = true;

// Custom Variables
state = 0;
prev_state = 0;
state_timer = 0;
ground_fric = 0.5;
hbox = noone;

hsp = 0;
hsp_charge = 0;

// Sprites
sprite[0]     = player_id.spr_clone_spawn;          // Spawning
sprite[1]     = player_id.spr_clone_dash;           // Speeding Forward
sprite[2]     = player_id.spr_clone_startup;        // Start-up
sprite[3]     = player_id.spr_clone_active;         // Hitting
sprite[4]     = player_id.spr_clone_endlag;         // Endlag
sprite[5]     = player_id.spr_clone_die;            // Despawning
sprite[6]     = player_id.spr_clone_die_dash;       // Despawning Dash

clonevf_x = 6 * spr_dir

// Animation Handling
// Speed Rune
anim_type[0] = 2;
anim_type[1] = 3;
anim_type[2] = 4;
anim_type[3] = 5;
anim_type[4] = 6;
anim_type[5] = 7;
anim_type[6] = 7;

//
image_index = 0;            // Animates the sprite
image_xscale = 2;
image_yscale = 2;
uses_shader = true;