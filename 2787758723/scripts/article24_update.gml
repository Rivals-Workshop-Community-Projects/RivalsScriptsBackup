//article24_update, Large object area.

if !_init {
    area_w = spawn_variables[0];
    area_h = spawn_variables[1]; 
    article_vars = spawn_variables[2];
    grid = spawn_variables[3];
    disable_movement = true;
    if (grid <= 0) grid = 32;
    for (var ix = 0; ix < area_w; ix++) {
        for (var iy = 0; iy < area_h; iy++) {
            var art = noone;
            switch article_vars[3] {
                case 2:
                    //obj_type = "obj_stage_article_solid";
                    art = instance_create(floor(x + ix * grid),floor(y + iy * grid),"obj_stage_article_solid",article_vars[0]);
                    break;
                case 1:
                    //obj_type = "obj_stage_article_platform";
                    art = instance_create(floor(x + ix * grid),floor(y + iy * grid),"obj_stage_article_platform",article_vars[0]);
                    break;
                default:
                    //obj_type = "obj_stage_article";
                    art = instance_create(floor(x + ix * grid),floor(y + iy * grid),"obj_stage_article",article_vars[0]);
                	break;
            }
            art.spawn_variables = article_vars[5];
            art.depth = article_vars[4];
            art.og_depth = article_vars[4];
            art.room_manager = obj_stage_main.room_manager;
            art.action_manager =  obj_stage_main.action_manager;
            art.debug = obj_stage_main.debug;
            art.in_render = true;
            art.just_spawned = true;
            art.dont_despawn = true;
            art.visible = false;
            array_push(art_objs, art)
        }
    }
    _init = 1;
    visible = false;
    mask_index = asset_get("solid_32x32")
    image_xscale = area_w;
    image_yscale = area_h;
}
else {
    if (destroyed) {
        for (var i = 0; i < array_length(art_objs); i++) {
            instance_destroy(art_objs[i]);
        }
        instance_destroy(id);
        exit;
    }
}
