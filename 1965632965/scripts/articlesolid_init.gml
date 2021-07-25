//article_solid_init

init = 0;
sprite_index = sprite_get("table");
mask_index = sprite_get("table_mask");
image_index = 0;

tablehit = 0;

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;

free = false;


//The table can take damage, and it will be sent flying when it runs out.
health = 13;
knockdir = 0;
//uses_shader = false;

timer = 0;

collidingplayerleft = noone;
collidingplayerright = noone;

invinc = 60;
invitime = 60;

hit = noone;
launch_angle = 0;
launch_knock = 0;
launch_player = noone;

destroyed = false;

tabletech = 0;