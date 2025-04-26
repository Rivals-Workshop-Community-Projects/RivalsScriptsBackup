//other_init - called by all other players when they're created while this workshop character exists

//MOTION BLUR CODE
blur = array_create(7);

target_number = random_func(0, 7, true);
target_X_placement = random_func(0, 50, true);
target_Y_placement = random_func_2(0, 50, true);

targeted = false;
target_time = 0;
maintarget = false; //When there are multiple enemies locked on, this one takes priority.

prev_damage = 0;
timestop_damage = 0;
timestop_hit = false;

//error checkers
//OverallEmeralds = 7;
//EmeraldAmount = 0; 
Blue = 0;
Red = 0;
Pink = 0;
Yellow = 0;
Gray = 0;
Green = 0;
Cyan = 0;

has_emerald = false; //All other players having a possible emerald