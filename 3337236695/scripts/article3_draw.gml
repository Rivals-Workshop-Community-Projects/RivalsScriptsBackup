//Draws the shadow for the platform using a mask!
//Defines by Flophawk.
maskHeader();
//The mask that defines the area to draw the sprite in.
draw_sprite_ext(sprite_get("shadow_mask_area"), image_index, 40, 394, 2, 2, 0, c_white, 0.5);

maskMidder();
//The sprite to draw.
draw_sprite_ext(sprite_get("platform_shadow"), image_index, x - 12, y + 56, 2, 2, 0, c_white, 1);

maskFooter();

#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
}

#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    draw_set_alpha(1);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}

#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
}