//

sprite_index = sprite_get("walkoff_ledge_tile");
mask_index = sprite_index;
visible = false;
y -= 32;
image_xscale = (x < room_width / 2) ? -16 : 16;