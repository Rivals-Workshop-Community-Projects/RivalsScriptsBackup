//Temp variables to give the sprite parallax.
var bgbparax = (view_get_xview()*0.18);
var bgbparay = (view_get_yview()*0.18);
//Clouds only.
var cloudsbparax = (view_get_xview()*0.20);
var cloudsbparay = (view_get_yview()*0.20);

//Draws the sprites for the article.
draw_sprite_ext(sprite_get("bg_clouds_b"), aether_b, x+1 + cloudsbparax, y + cloudsbparay, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("bg_moving_platformb_b"), aether_b, x+1 + moving_b + bgbparax, y + bgbparay, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("bg_moving_platforma_b"), aether_b, x+1 + moving_a + bgbparax, y + bgbparay, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("bg_platform_b"), aether_b, x+1 + bgbparax, y + bgbparay, 2, 2, 0, c_white, 1);

//Draws the shadow for the platform using a mask!
//Defines by Flophawk.
maskHeader();
//The mask that defines the area to draw the sprite in.
draw_sprite_ext(sprite_get("bg_shadow_mask_b"), image_index, 451 + bgbparax, 102 + bgbparay, 2, 2, 0, c_white, 0.5);

maskMidder();
//The sprite to draw.
draw_sprite_ext(sprite_get("bg_shadow_b"), aether_b, x + shadow_swing_b + 116 + bgbparax, y + 96 + bgbparay, 2, 2, 0, c_white, 1);

maskFooter();

draw_sprite_ext(sprite_get("bg_support_frame_b"), aether_b, x+1 + bgbparax, y + bgbparay, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("bg_wrecking_ball_b"), aether_b, x + 163 + bgbparax, y - 20 + bgbparay, 2, 2, ball_swing_b, c_white, 1);

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