
state = 0
state_timer = 0

sprite_index = sprite_get("gyro_spin")
mask_index = sprite_get("gyro_mask")
image_index = 0

uses_shader = true

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;        //If the article moves into a wall on its own, this variable will be true.
spr_dir = player_id.spr_dir

//personal vars
stored_vsp = 0
gyro_wiggle = 0
gyro_wiggle_timer = 0
gyro_spin_rate = 0
hit_timer = 0
gotHit_timer = 0
gyro_pickup = false
thrown = false
hitbox_check = noone
stored_hsp = 0

laser_gyrobounce_fx = hit_fx_create(sprite_get("laser_gyrobounce_fx"), 16)