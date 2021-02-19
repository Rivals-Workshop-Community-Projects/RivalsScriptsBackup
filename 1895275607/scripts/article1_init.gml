//article1_init lode

sprite_index = sprite_get("bird_idle");
new_sprite = sprite_get("bird_idle");

state_timer = 0;
state = 0; //0 = notOut , 1 = hovering in place, 2 = aiming, 3 = returning, 4 = flying out, 5 = follow opponent, 6 = free roam, 7 = taunt
//birdout = false;
//moving = false;
moving_timer = 0;
can_be_grounded = false;
ignores_walls = false;
uses_shader = true;
radius = 200;

animation_type = 0; // 0 = idle, 1 = flying
idle_anim_rate = 4;
fly_anim_rate = 3;

temp_x = 0;
temp_y = 0;
joy = 0;