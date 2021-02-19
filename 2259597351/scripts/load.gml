// Sprites
sprite_change_offset("idle", 28, 60);
sprite_change_offset("intro", 26, 64);
sprite_change_offset("dspecial", 28, 60);
sprite_change_offset("dspecial_run", 64, 162);
sprite_change_offset("run", 64, 156);
sprite_change_offset("run_start", 68, 274);
sprite_change_offset("run_stop", 72, 274);
sprite_change_offset("taunt", 62, 60);
sprite_change_offset("taunt_run", 72, 274);
sprite_change_offset("wait", 28, 60);
sprite_change_offset("ledge", 28, 60);
sprite_change_offset("turn", 28, 60);

pet_w = 40; // The width of the buddy.

// DISTANCE SHENANIGANS - EDITABLE
run_speed = 1; // How fast he moves
max_run_dist = 460; // How far away the player has to be to get him to move

// ANIMATION SPEEDS - EDITABLE
idle_anim_speed = 0.1; // Idle animation speed
run_anim_speed = 0.3; // Run animation speed
run_start_time = 27; // How much time for run start
run_stop_time = 18; // How much time for run stop
taunt_time = 80; // How many frames are in a taunt
taunt_frames = 16; // How many animation frames are in a taunt

// DON'T EDIT THESE
mojibake = "2108176600" // Mojibake's url
tamat = "2273328517" // Mojibake's url
orig_run_speed = run_speed; // The original run speed for when it's changed in code
true_image_index = 0; // The true image index that this is calculating to override the one the game wants to do
run_start = true; // Initialize the run start variable, used to make a startup anim to run
run_stop = false; // Initialize the run start variable, used to make a startup anim to run
run_stop_frames = 4; // How many animation frames in run stop
run_stop_timer = 0; // The timer for how long you've been in run stop
hsp = 0; // Custom hsp value to determine speed for the run_slide
turn_buffer_time = 0; // How much time after the turn does it buffer the idle animation to not look weird
attacking = false; // Whether or not the owner is attacking
yebth_eaten = false; // Whether or not yebth has been eaten by mojibake

add_compatible_urls(mojibake); // Mojibake can change this character's colour!
add_compatible_urls(tamat); // Tamat can change this character's colour!