sprite_index = sprite_get("catrun");
mask_index = asset_get("cutrun_hurt");
spr_dir = player_id.spr_dir;

image_speed = 0.25;
state = 0;
//states: 0 = walk, 1 = attack
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
minionHealth = 1;
hsp = 2.9 * spr_dir; 
vsp = 0;

//custom vars
fall_speed = 8;
damage = 2;
attacked = false;