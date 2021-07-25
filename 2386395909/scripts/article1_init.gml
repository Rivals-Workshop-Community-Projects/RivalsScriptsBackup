//article1_init
can_be_grounded = false;
ignores_walls = true;
uses_shader = false;

sprite_index = sprite_get("ball");
mask_index = sprite_get("ballMask");
image_index = 0;
image_alpha = 0;
image_speed = 0;
depth = -10000;

original_url = player_id.url
draw_e = 0;//--shit that activates the cool unused negative shockwave effect
shoc2 = 0;//
size2 = 0;//
size = 0; // --
belongsto = 0;//checks which player has hit the ball
wall1a=0;//invisible wall 1
wall2a=0; //invisible wall 2
wall3a=0;//invisible wall 3
i_hit_wall = false;//checks if the ball has hit a wall.
hit_exists = false; //checks if the ball's hitbox exists.
first_hit = 0;//idk i think it checks if the ball hasn't been hit before.
fuckingrockid = noone; // gets the id of kraggs rock i think idk 
i_hit_cei =  false;
ori_length = 0;//????
hittime = 0;//idk

stagefloor = get_stage_data(SD_Y_POS);
stage_x = get_stage_data( SD_X_POS );

ball_hitfx = hit_fx_create(sprite_get("plasma_hitfx"),32);
smoke_fx = hit_fx_create(sprite_get("smoke"),12);
speedcloud_fx = hit_fx_create(sprite_get("dust"),32);
wall_fx = hit_fx_create(sprite_get("plasma_hitfx2"),32);
hitball_fx = hit_fx_create(sprite_get("ball_hit"),32);

spd = 0; // i am s peed
h = 0; //i dont remember what this  does
atk_repeat = noone;
multitimer = 0;
hitstop_increase = 3;
grav = 0.24;
hitlockout = noone;
hitlockout2 = 0;
smoketimer = 0;
playerurl = noone;
donotdraw = false;
life = 4;//how many times the opponent has to hit the ball to break it
hit_by_opponent = false;
spr_dir = player_id.spr_dir;
angle = 0; // gets the angle of the hitbox that hit the ball
angle2 = 0;
times_hit = 0;
playsound = false;
art_time = 0;
old_vsp = 0;
old_hsp = 0;
nvsp = 0;//new vsp to apply for the bunt state
nhsp = 0;//new hsp to apply for the bunt state

//states
st = 0;//current state
stt = 0;//state timer
timer_idle = 0;//idk
