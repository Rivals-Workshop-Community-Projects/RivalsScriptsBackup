//article1_init

sprite_index = sprite_get("scarecrow_spawn");

mask_index = asset_get("ex_guy_hurt_box");

state = 0;
state_timer = 0;
can_be_grounded = true;
ignores_walls = false;
free = false;
uses_shader = true;
lockout = 0