//article2_update, Custom Marker


if (!_init) {
    if (grid <= 0) grid = 32;
    //depth = 9;
    //sprite_index = sprite_get("1px");
    image_xscale = 2;
    image_yscale = 2;
    width = sprite_get_width(sprite_index) * 2;
    height = sprite_get_height(sprite_index) * 2;
    visible = false;
    mask_index = sprite_index;
    //print_debug(string(tile_data));
    _init = 1;
    if (type > 0) {
       for (var i = 0; i < width; i+=grid) {
            for (var j = 0; j < height; j+=grid ) {
                if (position_meeting(x+i+1, y+j+1, id)) { 
                    var tile = noone;
                    switch type {
                        case 1:
                            //obj_type = "obj_stage_article_solid";
                            tile = instance_create(x + i, y + j,"obj_stage_article_platform",1);
                            break;
                        case 2:
                            //obj_type = "obj_stage_article";
                            tile = instance_create(x + i, y + j,"obj_stage_article_solid",1);
                        break;
                    }
                    if (tile.x == 0)
                    {
                        tile.x -= grid * 15;
                        tile.image_xscale = 15;                    
                    }
                    if (tile.y == 0)
                    {
                        tile.y -= grid * 15;
                        tile.image_yscale = 15;                    
                    }
                    if (tile.x == room_width - grid)
                    {
                        tile.image_xscale = 15;                    
                    }
                    if (tile.y == room_height - grid)
                    {
                        tile.image_yscale = 15;                    
                    }
                    tile.visible = false;
                }
            }
        }
        combine_tiles();
    }
}

#define combine_tiles()
var combine_object = type == 1 ? obj_stage_article_platform : obj_stage_article_solid;

//Horizontally
with (combine_object) {
    if num != 1 continue;
    if (place_meeting(x, y, combine_object)) {
        instance_destroy(id);
        continue;
    }
    while (true) {
        var next = instance_position(bbox_left + 32 * image_xscale + 4, bbox_top + 4, combine_object);
        if (!instance_exists(next)) break;
        if (next.bbox_left != bbox_left + 32 * image_xscale) break;
        if (next.bbox_top != bbox_top) break;
        if (next.bbox_top + 32 * next.image_yscale != bbox_top + 32 * image_yscale) break;
        
        image_xscale += next.image_xscale;
        instance_destroy(next);
    }
}
//Vertically
with (combine_object) {
    if num != 1 continue;
    if (place_meeting(x, y, combine_object)) {
        instance_destroy(id);
        continue;
    }
    while (true) {
        var next = instance_position(bbox_left + 4, bbox_top + 32 * image_yscale + 4, combine_object);
        if (!instance_exists(next)) break;
        if (next.bbox_left != bbox_left) break;
        if (next.bbox_top != bbox_top + 32 * image_yscale) break;
        if (next.bbox_left + 32 * next.image_xscale != bbox_left + 32 * image_xscale) break;
        
        image_yscale += next.image_yscale;
        instance_destroy(next);
    }
}