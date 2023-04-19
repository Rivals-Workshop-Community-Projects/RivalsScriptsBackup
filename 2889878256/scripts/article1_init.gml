sprite_index = sprite_get("normal");
image_index = 0;
depth = 28;

//types of the pokémon on the screen (not necessarily types of the stage)
type_1 = 1;
type_2 = 1;

//current type of the stage
next_stage_type_1 = 1;
next_stage_type_2 = 1;

//self explanatory
last_stage_type_1 = 1;
last_stage_type_2 = 1;

//random numbers
random_number_1 = 0;
random_number_2 = 0;
players_x = 0;
players_damage = 0;

//current phase of the stage
stage = 1;

//timers
transformation_duration_default = 2650;
transformation_transition_default = 300;

transformation_duration = 470; //normal type timer at the start
transformation_transition = transformation_transition_default;

//duration + transition*2 = multiple of 325 (which is 324 + 1) (so the rng timer will loop)

//stocks thingy
stocks_1 = -1;
stocks_2 = -1;
stocks_3 = -1;
stocks_4 = -1;