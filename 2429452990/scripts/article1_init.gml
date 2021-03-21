//article1_init

init = 0;

sprite_index = sprite_get("duckminearming");
mask_index = sprite_get("duckmine");

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

vsp = -3
hsp = 3 * player_id.spr_dir

depth = -10;
arm_time = 0;
detstart = 0;
dettime = 0;

landed = 0;

sprite_change_offset("duckmine", 66, 87);
sprite_change_offset("duckminearming", 66, 87);

