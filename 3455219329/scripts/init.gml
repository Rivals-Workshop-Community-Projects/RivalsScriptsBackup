plat_1 = instance_create( (room_width/2) - 136, (room_height/2) + 16, "obj_stage_article_platform", 1)
plat_1.sprite_index = sprite_get("platform_1")
plat_1.mask_index = sprite_get("platform_coll_1")
plat_1.initial_x = (room_width/2) - 136
plat_1.initial_y = (room_height/2) + 16
plat_1.plat_num = 1;
plat_1.state = 0;
plat_1.state_timer = 0;
plat_1.image_xscale = 2;
plat_1.image_yscale = 2;
plat_1.plat_hp = 5;
plat_1.bananas_spawned = false;

plat_2 = instance_create( (room_width/2) + 110, (room_height/2), "obj_stage_article_platform", 1)
plat_2.sprite_index = sprite_get("platform_2")
plat_2.mask_index = sprite_get("platform_coll_2")
plat_2.initial_x = (room_width/2) + 110
plat_2.initial_y = (room_height/2)
plat_2.plat_num = 2;
plat_2.state = 0;
plat_2.state_timer = 0;
plat_2.image_xscale = 2;
plat_2.image_yscale = 2;
plat_2.plat_hp = 5;
plat_2.bananas_spawned = false;

final_stock = false;
final_stock_cont = -1;