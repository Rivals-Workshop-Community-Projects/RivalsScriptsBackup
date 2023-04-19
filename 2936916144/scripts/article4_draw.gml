maskHeader();
maskMidder();
maskFooter();

shader_end();
maskHeader();
draw_set_alpha(0);
draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
draw_set_alpha(1);
if obj_stage_main.portal == 1{
    with oPlayer if x >= get_marker_x(1) && x <= get_marker_x(2){
        draw_sprite_ext(sprite_index, image_index, x + draw_x, y - 256 + draw_y, (1 + small_sprites)*spr_dir, (1 + small_sprites), spr_angle, c_white, 1);
        draw_sprite_ext(sprite_index, image_index, x + draw_x, y + 256 + draw_y, (1 + small_sprites)*spr_dir, (1 + small_sprites), spr_angle, c_white, 1);
    }
    with (obj_article1)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        draw_sprite_ext(sprite_index, image_index, x, y - 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(sprite_index, image_index, x, y + 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
    }
    with (obj_article2)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        draw_sprite_ext(sprite_index, image_index, x, y - 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(sprite_index, image_index, x, y + 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
    }
    with (obj_article3)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        draw_sprite_ext(sprite_index, image_index, x, y - 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(sprite_index, image_index, x, y + 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
    }
    with (obj_article_solid)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        draw_sprite_ext(sprite_index, image_index, x, y - 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(sprite_index, image_index, x, y + 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
    }
    with (obj_article_platform)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        draw_sprite_ext(sprite_index, image_index, x, y - 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(sprite_index, image_index, x, y + 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
    }
    with (pHitBox) if type = 2 if x >= get_marker_x(1) && x <= get_marker_x(2){
        draw_sprite_ext(sprite_index, image_index, x, y - 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
        draw_sprite_ext(sprite_index, image_index, x, y + 256, spr_dir*image_xscale, image_yscale, image_angle, c_white, 1);
    }
}else{
    with oPlayer if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        draw_sprite_ext(sprite_index, image_index, get_marker_x(7)*2 - (x + draw_x), get_marker_y(7)*2 - (y + draw_y), (1 + small_sprites)*-spr_dir, (1 + small_sprites), spr_angle + 180, c_white, 1);
    }
    
    with obj_article1 if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        draw_sprite_ext(sprite_index, image_index, get_marker_x(7)*2 - x, get_marker_y(7)*2 - y, spr_dir*image_xscale, image_yscale, image_angle + 180, c_white, 1);
    }
    
    with obj_article2 if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        draw_sprite_ext(sprite_index, image_index, get_marker_x(7)*2 - x, get_marker_y(7)*2 - y, spr_dir*image_xscale, image_yscale, image_angle + 180, c_white, 1);
    }
    
    with obj_article3 if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        draw_sprite_ext(sprite_index, image_index, get_marker_x(7)*2 - x, get_marker_y(7)*2 - y, spr_dir*image_xscale, image_yscale, image_angle + 180, c_white, 1);
    }
    
    with obj_article_solid if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        draw_sprite_ext(sprite_index, image_index, get_marker_x(7)*2 - x, get_marker_y(7)*2 - y, spr_dir*image_xscale, image_yscale, image_angle + 180, c_white, 1);
    }
    
    with obj_article_platform if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        draw_sprite_ext(sprite_index, image_index, get_marker_x(7)*2 - x, get_marker_y(7)*2 - y, spr_dir*image_xscale, image_yscale, image_angle + 180, c_white, 1);
    }
    
    with pHitBox if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        draw_sprite_ext(sprite_index, image_index, get_marker_x(7)*2 - x, get_marker_y(7)*2 - y, spr_dir*image_xscale, image_yscale, image_angle + 180, c_white, 1);
    }
}
draw_set_alpha(0);
if obj_stage_main.portal == 1{
    draw_rectangle_color(0, get_marker_y(8) - 2, room_width, get_marker_y(9), c_white, c_white, c_white, c_white, 0);
    draw_rectangle_color(0, get_marker_y(10) - 64, room_width, get_marker_y(11) + 2, c_white, c_white, c_white, c_white, 0);
}else{
    draw_rectangle_color(0, get_marker_y(12) - 2, room_width, get_marker_y(13), c_white, c_white, c_white, c_white, 0);
    draw_rectangle_color(0, get_marker_y(14) - 2, room_width, get_marker_y(15), c_white, c_white, c_white, c_white, 0);
}
draw_set_alpha(1);
maskMidder();
if obj_stage_main.portal == 1{
    with oPlayer if x >= get_marker_x(1) && x <= get_marker_x(2){
        shader_start();
        draw_sprite_ext(sprite_index, image_index, x + draw_x, y - 256 + draw_y, (1 + small_sprites)*spr_dir, (1 + small_sprites), spr_angle, c_white, 1);
        draw_sprite_ext(sprite_index, image_index, x + draw_x, y + 256 + draw_y, (1 + small_sprites)*spr_dir, (1 + small_sprites), spr_angle, c_white, 1);
        shader_end();
    }
    with (obj_article1)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y - 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y + 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            shader_end();
        }
    }
    with (obj_article2)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y - 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y + 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            shader_end();
        }
    }
    with (obj_article3)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y - 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y + 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            shader_end();
        }
    }
    with (obj_article_solid)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y - 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y + 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            shader_end();
        }
    }
    with (obj_article_platform)  if x >= get_marker_x(1) && x <= get_marker_x(2){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y - 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y + 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            shader_end();
        }
    }
    with (pHitBox) if type = 2 if x >= get_marker_x(1) && x <= get_marker_x(2){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y - 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            draw_sprite_ext(other.sprite_index, other.image_index, other.x, other.y + 256, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle, c_white, 1);
            shader_end();
        }
    }
}else{
    with oPlayer if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        shader_start();
        draw_sprite_ext(sprite_index, image_index, get_marker_x(7)*2 - (x + draw_x), get_marker_y(7)*2 - (y + draw_y), (1 + small_sprites)*-spr_dir, (1 + small_sprites), spr_angle + 180, c_white, 1);
        shader_end();
    }
    
    with obj_article1 if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, get_marker_x(7)*2 - other.x, get_marker_y(7)*2 - other.y, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle + 180, c_white, 1);
            shader_end();
        }
    }
    
    with obj_article2 if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, get_marker_x(7)*2 - other.x, get_marker_y(7)*2 - other.y, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle + 180, c_white, 1);
            shader_end();
        }
    }
    
    with obj_article3 if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, get_marker_x(7)*2 - other.x, get_marker_y(7)*2 - other.y, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle + 180, c_white, 1);
            shader_end();
        }
    }
    
    with obj_article_solid if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, get_marker_x(7)*2 - other.x, get_marker_y(7)*2 - other.y, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle + 180, c_white, 1);
            shader_end();
        }
    }
    
    with obj_article_platform if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, get_marker_x(7)*2 - other.x, get_marker_y(7)*2 - other.y, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle + 180, c_white, 1);
            shader_end();
        }
    }
    
    with pHitBox if ((x >= get_marker_x(3) && x <= get_marker_x(4)) || (x >= get_marker_x(5) && x <= get_marker_x(6))) && y > get_marker_y(3){
        with player_id{
            shader_start();
            draw_sprite_ext(other.sprite_index, other.image_index, get_marker_x(7)*2 - other.x, get_marker_y(7)*2 - other.y, other.spr_dir*other.image_xscale, other.image_yscale, other.image_angle + 180, c_white, 1);
            shader_end();
        }
    }
}
maskFooter();

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
