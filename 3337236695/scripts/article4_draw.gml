//Temp variables to give the sprite parallax.
var bgaparax = (view_get_xview()*0.10);
var bgaparay = (view_get_yview()*0.10);
//Clouds only.
var cloudsaparax = (view_get_xview()*0.12);
var cloudsaparay = (view_get_yview()*0.12);

//Draws the sprites for the article.
draw_sprite_ext(sprite_get("bg_clouds_a"), aether_a, x + cloudsaparax, y + cloudsaparay, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("bg_platform_a"), aether_a, x + bgaparax, y + bgaparay, 2, 2, 0, c_white, 1);

//Draws the shadow for the platform using a mask!
//Defines by Flophawk.
maskHeader();
//The mask that defines the area to draw the sprite in.
draw_sprite_ext(sprite_get("bg_shadow_mask_a"), image_index, 324 + bgaparax, 22 + bgaparay, 2, 2, 0, c_white, 0.5);

maskMidder();
//The sprite to draw.
draw_sprite_ext(sprite_get("bg_shadow_a"), aether_a, x + shadow_swing_a + 222 + bgaparax, y + 254 + bgaparay, 2, 2, 0, c_white, 1);

maskFooter();

draw_sprite_ext(sprite_get("bg_support_frame_a"), aether_a, x + bgaparax, y + bgaparay, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("bg_wrecking_ball_a"), aether_a, x + 304 + bgaparax, y + 22 + bgaparay, 2, 2, ball_swing_a, c_white, 1);

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