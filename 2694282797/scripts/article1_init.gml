//tree variables
sprite_index = sprite_get("art_tree");
mask_index = sprite_get("art_tree_mask");
image_index = 0;
state = 0;
state_timer = 0;
launch_player = player_id.player;
should_launch = false;
launch_x = 0;

spr_die = 1;
can_be_grounded = true;
ignores_walls = false;

treeproj_spawntimer = 1;
