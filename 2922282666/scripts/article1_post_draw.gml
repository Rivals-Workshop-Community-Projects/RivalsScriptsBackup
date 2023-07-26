if((player_id.attack == AT_FSPECIAL || (player_id.attack == AT_FSTRONG || player_id.attack == AT_USTRONG || player_id.attack == AT_DSTRONG) && state != 0)
 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window <= 2 && state < 3)
    draw_sprite_ext(sprite_get("gem_direction"),0,x,y,player_id.spr_dir,1,(player_id.attack == AT_DSTRONG? 270*player_id.spr_dir:player_id.attack == AT_USTRONG? 90*player_id.spr_dir:0),c_white,1);

if (player_id.strong_charge > 0  && state < 3 && player_id.attack == AT_FSPECIAL && player_id.strong_charge % 10 < 6  
&& (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 1)
{    
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale * spr_dir, image_yscale, image_angle, image_blend, 0.5);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
    draw_rectangle_color(0, 0, room_width, room_height, 
        c_white, c_white, c_white, c_white, false);
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}