if is_aether_stage() && "has_spawned" not in self{
	has_spawned = 1;
	instance_create(0, 0, "obj_stage_article", 1);
}