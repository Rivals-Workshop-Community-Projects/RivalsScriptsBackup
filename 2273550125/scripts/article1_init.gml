//article1_init

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
sprite_index = sprite_get("proj_bomb");
spr_dir = player_id.spr_dir;
vsp = -13;
hsp = (1.5*spr_dir)+(player_id.hsp * 0.875);
