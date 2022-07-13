//dual vine

uses_shader = true

sprite_index = asset_get("empty_sprite")
mask_index = sprite_get("hitbox_rect")
image_index = 0

startx = 0
starty = 0

endx = 0
endy = 0

distx = startx-endx
disty = starty-endy

//midpoint coords
midx = startx+(endx-startx)/2
midy = starty+(endy-starty)/2

x = midx
y = midy

timer = 0