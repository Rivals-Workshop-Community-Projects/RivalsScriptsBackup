//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("blank");//sprite_get("dspecial_shadow");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                       //The frame in the animation the article should start at. 0 = beginning of animation
image_speed = 0;
mask_index = sprite_get("peacock_crouch_hurtbox"); 
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = false;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

charge_time = 0;

left_x = 0;
right_x = 0;

stats_lvl1_time = 90;
stats_lvl2_time = 210;
stats_lvl3_time = 300;
stats_fall_speed = 25;

state = 0;
state_timer = 0;
article_hitlag = 0;
startup_timer = 0;
step_distance = 0;
//total_step_distance = 0;
maximum_step_distance = 100;
clipped_wall = 0;
went_off_ledge = 0;
finished_stepping = 0;
floor_check_error = 0;
destroy = 0;
can_be_grounded = true;
ignores_walls = false;
vsp = 0;
hitbox_id = noone;
hitbox_x = x;
hitbox_y = 0;
hitbox_y_target = 0;
hitbox_y_offset = 0;
hitbox_frame = 0;
power_level = 1;
hitbox_sprite_index = noone;
hitbox_image_index = 0;

spr_neutral = noone;
spr_falling = noone;
spr_ground = noone;
spr_die = noone;
spr_pillar = sprite_get("dspecial_pillar");

sfx_landed = noone;
sfx_falling = noone;

roller_freeze = false

ownershit = player_id;