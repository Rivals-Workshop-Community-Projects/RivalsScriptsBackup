if is_aether_stage()
	{
	instance_create(get_marker_x(1),get_marker_y(1),"obj_stage_article_platform", 1)
	instance_create(get_marker_x(2),get_marker_y(2),"obj_stage_article_platform", 2)
	instance_create(get_marker_x(3),get_marker_y(3),"obj_stage_article_platform", 3)
	}
else
	{
	instance_create(get_marker_x(1),get_marker_y(1),"obj_stage_article_platform", 4)
	instance_create(get_marker_x(2),get_marker_y(2),"obj_stage_article_platform", 5)
	instance_create(get_marker_x(3),get_marker_y(3),"obj_stage_article_platform", 6)
	}