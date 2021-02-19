//

if trigger{
	if (trigger == 60){
		with obj_stage_article died = 0;
		with obj_stage_article_solid died = 0;
		with obj_stage_article_platform{
			died = 10;
			all_breaking = 1;
		}
	}
	if trigger == 1{
		for (var i = 0; i < 4; i++){
			var plat = instance_create(get_marker_x(i + 1), get_marker_y (i + 1), "obj_stage_article_platform", 1);
			plat.plat_num = i + 1;
			plat.plat_dir = (plat.plat_num % 2) ? 1 : -1;
			plat.image_index = plat.plat_num - 1;
			plat.image_alpha = 0;
		}
	}
	
	trigger--;
}