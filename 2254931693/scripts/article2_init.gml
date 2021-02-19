//article2_init

init = 0;
sprite_index = sprite_get("enoughisenough_idle");
depth = 30;

sprite_change_offset("enoughisenough_idle", 465, 496);
sprite_change_offset("enoughisenough_slap", 465, 496);


can_be_grounded = false;
ignores_walls = true;
uses_shader = true;
