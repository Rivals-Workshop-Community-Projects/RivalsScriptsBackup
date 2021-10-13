
state = 0
state_timer = 0

sprite_index = sprite_get("flying_rock")
mask_index = sprite_get("flying_rock")
image_index = 0

uses_shader = true

can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;        //If the article moves into a wall on its own, this variable will be true.
spr_dir = player_id.spr_dir

//personal vars
grounded_state = false
hitbox_check = noone
hit_timer = 0
gotHit_timer = 0
rotate_angle = 0
rock_hitbox = noone
magnet = false

gotHit_timer = 0