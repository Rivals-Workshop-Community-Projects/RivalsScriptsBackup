//instance_create(room_width + 80,get_marker_y(1), "obj_stage_article_solid", 1); //Normal Block
ball_game = instance_create(get_marker_x(1) , get_marker_y(1), "obj_stage_article", 1); //Normal Block

stage_bg = 	instance_create(room_width / 2, room_height / 2 - 256, "obj_stage_article", 2); //Background
stage_bg.depth = 100;
stage_bg.sprite_index = sprite_get("bg_training");

stage_ground = 	instance_create(room_width / 2, room_height / 2 - 80, "obj_stage_article", 2); //Background
stage_ground.depth = 30;
stage_ground.sprite_index = sprite_get("ground_training");

