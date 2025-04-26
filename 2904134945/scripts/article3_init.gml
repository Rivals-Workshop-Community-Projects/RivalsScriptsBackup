sprite_index = asset_get("empty_sprite");
image_index = 0;
spr_dir = player_id.spr_dir;
uses_shader = true;
image_xscale = 2;
image_yscale = 2;

state = 0;
newState = 0;
state_timer = 0;

can_be_grounded = false;
ignores_walls = true;

dieTime = 0;