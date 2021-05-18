//Init

room_width = 1280 * 2;
room_height = 960 * 2;

var solidmap = instance_create(160, 272, "obj_stage_article", 13)
solidmap.sprite_index = sprite_get("solids");
solidmap.type = 2;

var platmap = instance_create(160, 272, "obj_stage_article", 13)
platmap.sprite_index = sprite_get("plats");
platmap.type = 1;