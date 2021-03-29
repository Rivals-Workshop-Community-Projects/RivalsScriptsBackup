//paratroopers
disable_movement = 1;
sprite_index = sprite_get("anim7");
image_xscale = -2;
image_yscale = 2;
depth = 30;
anim_speed = 0.17;

range_x1 = 800;
range_x2 = range_x1 + 390; //the horizonal range in the top right to be spawned in

start_x = random_func(0, range_x2 - range_x1, true) + range_x1;

start_y = -200;

//the distance over which to travel
vY = 1000;
vX = 300;

life = 500;
lifetime = life;
