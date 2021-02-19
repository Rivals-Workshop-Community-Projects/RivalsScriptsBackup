if ("lightning" in self){
	set_character_color_slot(2, 
		color_get_red	(cloud_col_target[0]),
		color_get_green	(cloud_col_target[0]),
		color_get_blue	(cloud_col_target[0]),
		);
	set_character_color_slot(3, 
		color_get_red	(cloud_col_target[1]),
		color_get_green	(cloud_col_target[1]),
		color_get_blue	(cloud_col_target[1]),
		);
	set_article_color_slot(2, 
		color_get_red	(cloud_hud_target[0]),
		color_get_green	(cloud_hud_target[0]),
		color_get_blue	(cloud_hud_target[0]),
		);
	set_article_color_slot(3, 
		color_get_red	(cloud_hud_target[1]),
		color_get_green	(cloud_hud_target[1]),
		color_get_blue	(cloud_hud_target[1]),
		);
	true_cloud_color = cloud_col_target;
	true_hud_color = cloud_hud_target;
}