state_timer += 1;

force_depth = true;
depth = player_id.depth-1;

if state_timer > 2{
	instance_destroy();
}