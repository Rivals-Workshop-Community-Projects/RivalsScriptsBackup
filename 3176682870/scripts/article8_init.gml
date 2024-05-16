//Sets the sprite, depth, and other details for the article. 
if is_aether_stage() {
    sprite_index = sprite_get("a_arch");
}else{
    sprite_index = sprite_get("arch");
}
depth = 32
image_xscale = 2
image_yscale = 2
parallax_x = -0.55
parallax_y = -0.55
knight = false
image_index = 1