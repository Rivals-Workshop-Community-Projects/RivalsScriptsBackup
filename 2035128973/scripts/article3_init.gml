sprite_index = sprite_get("bone");
image_index = 0;
spr_dir = 1;
uses_shader = true;
depth = -10;

state = 0;
newState = 0;
state_timer = 0;
animSpeed = 4;

can_be_grounded = true;
ignores_walls = false;

dieTime = 10;

player_id.boneObj = id;