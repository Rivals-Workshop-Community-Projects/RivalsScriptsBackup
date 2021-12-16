//article1_init

init = 0;
sprite_index = asset_get("empty_sprite");
//sprite_index = asset_get("ex_guy_hurt_box");
mask_index = sprite_get("dspecial_sludgebomb");
//mask_index = sprite_get("idle");
spr_dir = player_id.spr_dir;
state = noone;
state_timer = 0;
free = true;
//x = player_id.x;
//y = player_id.y;
done = false;
can_be_grounded = false;
ignores_walls = true; 
uses_shader = false;
landed = false;