//Temp variables to give the sprite parallax.
var bgcparax = (view_get_xview()*0.24);
var bgcparay = (view_get_yview()*0.24);
//Clouds only.
var cloudscparax = (view_get_xview()*0.26);
var cloudscparay = (view_get_yview()*0.26);

//Draws the sprites for the article.
draw_sprite_ext(sprite_get("bg_clouds_c"), aether_c, x + cloudscparax, y + cloudscparay, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("bg_platform_c"), aether_c, x + bgcparax, y + bgcparay, 2, 2, 0, c_white, 1);
if is_aether_stage() {
    draw_sprite_ext(sprite_get("a_bg_screens_c"), screen_speed, x + 64 + bgcparax, y - 22 + bgcparay, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("a_bg_screens_c"), screen_speed, x + 138 + bgcparax, y - 22 + bgcparay, 2, 2, 0, c_white, 1);
}else{
    draw_sprite_ext(sprite_get("bg_screens_c"), screen_speed, x + 64 + bgcparax, y - 22 + bgcparay, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("bg_screens_c"), screen_speed, x + 138 + bgcparax, y - 22 + bgcparay, 2, 2, 0, c_white, 1);
}
