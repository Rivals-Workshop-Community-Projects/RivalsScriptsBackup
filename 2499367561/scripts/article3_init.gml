//blackhole thingy

//Sprite and direction
sprite_index = sprite_get("jetpack");          
mask_index = sprite_get("jetpack");

image_index = 0;                               
spr_dir = player_id.spr_dir;
uses_shader = true;       
depth = -100;
state = 0
state_timer = 0

rotation = 2*spr_dir

hitbox_timer = 0

vsp = 0
hsp = ((1 + random_func_2(1, 2, false)) * -1) * spr_dir
can_be_grounded = false

//Other vars

gotHit_timer = 0

windbox_timer = 20