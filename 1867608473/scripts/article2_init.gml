//article2_init

init = 0;

state = 0;
state_timer = 0;
sprite_index = sprite_get("energy");
// Checks to see if it finished
full_timer = 0;

can_be_grounded = false;
ignores_walls = true;
free = true;
uses_shader = true;

// Animates the sprites
movement_timer = 0;
movement_ended = 0;

//Random X pos