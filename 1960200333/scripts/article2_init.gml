//article2_init
//Fry's "campfire" down special article.


init = 0;


sprite_index = sprite_get("dspecialflame"); //Build Sprite
sprite1 = sprite_get("dspecialflame"); //Active Sprite
sprite2 = sprite_get("dspecialflame"); //Destroy sprite

//Various timers & default

state = 0; //The state of the campfire. 0 = Building, 1 = Active, 2 = Dying
state_timer = 0; 
full_timer = 0;
stay_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;


build_time = 10;

hBox = noone; //The hitbox created using Dspecial data
inst = noone; //Checking for instances of floor objects

hit_timer = 0;
hit_timer_max = 8; //Maximum time between hitbox creation (prevent permanent trapping)
im_dex = 0; //Image index by another name
anim_speed = 0; //Speed of the animation - set from fireball animation speed

air_friction = .13; //The friction applied to the article
