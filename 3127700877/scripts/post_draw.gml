// post_draww.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/animation_scripts.html#draw-scripts
// Draws in FRONT of your character

shader_start();

//G7 Glitch effect by Giik

// if genesis && random_func_2(4, 2, 1) == 0 {
// var fs = random_func_2(0, sprite_height -1, 1);
// draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func_2(1, 20, 1)+1, (x+(random_func_2(2, 3, 1)-1)*7)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1);

// }

if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL && ((window == 2 && window_timer > 0) || (window == 3 && window_timer == 0) && geyser_spawn_x != url){
    draw_sprite(sprite_get("fspecial_proj_indicator"), get_gameplay_time()/4, round(geyser_spawn_x), round(geyser_spawn_y));
}

shader_end();



#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    
}
//================================================================================
#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}

//================================================================================
#define createMask(the_image)
// creates the masking//================================================================================
{
    maskHeader();
    maskMidder();
    maskFooter();
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (small_sprites + 1), (small_sprites + 1), spr_angle, c_white, 1);
    shader_end();
    maskHeader();
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir * (small_sprites + 1), (small_sprites + 1), spr_angle, c_white, .3);
    maskMidder();
    shader_start();
    draw_sprite_tiled_ext(the_image, (get_gameplay_time()/8)%32, 0, 0, .5, .5, c_white, 1);
    shader_end();
    maskFooter();
}