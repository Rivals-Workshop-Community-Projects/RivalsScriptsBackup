sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("block_mask");
depth = 28;

uses_shader = false;

spr_block = sprite_get("block");
sfx_block = sound_get("block_bump");

num_blocks = 4;
blocks = array_create(num_blocks);
for (var i = 0; i < num_blocks; i += 1) {
    var xx = x + i*38
    var yy = y;
    blocks[i] = {
        x: xx,
        y: yy,
        draw_x: xx,
        draw_y: yy
    };
}
