//article1_init
life_timer = 0;
telesprite = "teleporter_opening";
hurtbox_spr = sprite_get("teleporter_cooldown");
mask_index = sprite_get("sentry_lv1_idle")
sprite_index = sprite_get("teleporter_opening");
//mask_index = sprite_get("tele_hurt");
image_index = 0;


sprite[0] = sprite_get("teleporter_opening"); //goingup
sprite[1] = sprite_get("teleporter_ready"); //idle
sprite[2] = sprite_get("teleporter_cooldown"); //cooldown
sprite[3] = sprite_get("teleporter_using"); //using

sprite[4] = sprite_get("dispenser_opening"); //goingup
sprite[5] = sprite_get("dispenser_lv1_idle"); //idle
sprite[6] = sprite_get("dispenser_lv1_upgrading"); //upgrading from lv1 to lv2
sprite[7] = sprite_get("dispenser_lv2_idle"); //idle
sprite[8] = sprite_get("dispenser_lv2_upgrading"); //upgrading from lv2 to lv3
sprite[9] = sprite_get("dispenser_lv3_idle"); //idle

sprite[10] = sprite_get("sentry_opening"); //goingup
sprite[11] = sprite_get("sentry_lv1_idle"); //idle
sprite[12] = sprite_get("sentry_lv1_shoot_0"); //shooting forwards
sprite[13] = sprite_get("sentry_lv1_shoot_45"); //shooting at a 45* angle
sprite[14] = sprite_get("sentry_lv1_shoot_90"); //shooting upwards
sprite[15] = sprite_get("sentry_lv1_upgrading"); //upgrading from lv1 to lv2
sprite[16] = sprite_get("sentry_lv2_idle"); //idle
sprite[17] = sprite_get("sentry_lv2_shoot_0"); //shooting forwards
sprite[18] = sprite_get("sentry_lv2_shoot_45"); //shooting at a 45* angle
sprite[19] = sprite_get("sentry_lv2_shoot_90"); //shooting upwards
sprite[20] = sprite_get("sentry_lv2_upgrading"); //upgrading from lv2 to lv3
sprite[21] = sprite_get("sentry_lv3_idle"); //idle
sprite[22] = sprite_get("sentry_lv3_shoot_0"); //shooting forwards
sprite[23] = sprite_get("sentry_lv3_shoot_45"); //shooting at a 45* angle
sprite[24] = sprite_get("sentry_lv3_shoot_90"); //shooting upwards
sprite[25] = sprite_get("sentry_range"); //the range that the sentry can detect players



sprite[30] = sprite_get("detonate"); //self-destruct

building_type = 0; //0=teleporter, 1=dispenser, 2=sentry

//universal code
//framerate/animation stuff
life_timer = 0;
frame_num = 4;//this tells how many fps the animation uses
frames_3s = [3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36]
frames_4s = [4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 47]
frames_5s = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65]

building_health = 20;//health
building_max_health = 20;//health
building_hit = 0;//0-nothing, 1-enemy hit, 2-friendly hit
building_hit_cooldown = 0;//to prevent single-hitbox attacks from hitting 30 times in a row
building_upgrade = 0;// will insert 25 metal at a time, each time that happens, this number will go up by 1. When this number reaches 3, the building upgrades
building_level = 1;
building_state = 0;//explanation below
//teleporter: 0=constructing, 1=cooldown, 2=ready to teleport, 3=using
//dispenser: 0=constructing, 1=idle, 2=upgrading
//sentry: 0=constructing, 1=ready to fire, 2=upgrading, 3=wrangling, 4=auto-fire


//teleporter code
tp_count = 0; //the amount of times that he has teleported
tp_cooldown_loop = 0; //the amount of times that the teleporter's cooldown loops
tp_sfx_loop_counter = 0;//loop for the search sfx, it plays when this gets to x


//dispenser code
dispense_timer = 250; //this will count up intil it reaches dispense_timer_max, then it will spit out an ammo pack
dispense_timer_max = 300; //this will change based on the dispenser level

//sentry code
sentry_sfx_loop_counter = 0;//loop for the search sfx, it plays when this gets to x
range_anim = 0;//makes the sentry's range indicator animated
enemy_being_shot = 0;//if it is nobody, = 0. otherwise it = their player number
shoot_angle = 0;//angle 0 = forwards aim, angle 45 = diagonal aim, angle 90 = upwards aim
sentry_enemy_x = 0;
sentry_enemy_y = 0;
more_than_2_players = true; //changes the sentry's targetting code if there are >2 players because otherwise it breaks
still_fire_anyways = false; //thing for if there's more than 2 players
still_fire_anyways_loop_prevent = false;
rocket_timer = 0;// when this hits 3, it fires a rocket


//note to self: when making sentry code, when it is out of ammo, make it play the idle animation but only on the first frame

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
type = 0;
