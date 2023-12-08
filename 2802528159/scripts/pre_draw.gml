radar_a += (aware == 2? (radar_a < 0.3? 0.05: 0): (radar_a > 0? -0.05: 0))
if(radar_a > 0){
    radar_rad2 += (radar_rad2 < 196? 4: -196);
    for(ea = 1; ea < 5; ea++){
        with oPlayer if url == other.url && player = other.ea && self != other{
            if player <= other.player && radar_a highest_p = player;
        }
    }
    
    emmis = [];
    for(ea = 1; ea < 5; ea++){
        with oPlayer if url == other.url && player = other.ea && aware == 2{
            array_push(other.emmis, self);
        }
    }
    
    if highest_p = player{
        maskHeader();
        draw_sprite_tiled_ext(sprite_get("radar_grid"), 0, 0, 0, 2, 2, radar_color[get_player_color(player)][0], radar_a);
        draw_set_alpha(0);
        for(var e = 0; e < array_length(emmis); e++){
            draw_circle_color(emmis[e].radx, emmis[e].rady, 200, radar_color[get_player_color(emmis[e].player)][emmis[e].aware], radar_color[get_player_color(emmis[e].player)][emmis[e].aware], 0);
            for(var m = 0; m < 10; m++){
                draw_circle_color(emmis[e].radx, emmis[e].rady, emmis[e].radar_rad2 + m, radar_color[get_player_color(emmis[e].player)][emmis[e].aware], radar_color[get_player_color(emmis[e].player)][emmis[e].aware], 1);
            }
        }
        draw_set_alpha(1);
        maskMidder();
        draw_sprite_tiled_ext(sprite_get("radar_grid"), 0, 0, 0, 2, 2, radar_color[get_player_color(player)][0], radar_a);
        maskFooter();
    }
    maskHeader();
    draw_sprite_tiled_ext(sprite_get("radar_grid"), 0, 0, 0, 2, 2, radar_color[get_player_color(player)][0], radar_a);
    maskMidder();
    for(var e = 0; e < array_length(emmis); e++){
        draw_sprite_ext(sprite_get("radar_sphere2"), 0, emmis[e].radx, emmis[e].rady, 2, 2, 0, radar_color[get_player_color(emmis[e].player)][emmis[e].aware], 1);
        for(var m = 0; m < 10; m++){
            draw_circle_color(emmis[e].radx, emmis[e].rady, emmis[e].radar_rad2 + m, radar_color[get_player_color(emmis[e].player)][emmis[e].aware], radar_color[get_player_color(emmis[e].player)][emmis[e].aware], 1);
        }
    }
    maskFooter();
    draw_sprite_ext(sprite_get("radar_sphere1"), 0, radx, rady, 2, 2, 0, radar_color[get_player_color(player)][aware], radar_a);
}
    
// cosmic alt
if(get_player_color(player) == 26){
	maskHeader();
	draw_set_alpha(0);
	draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index, image_index, x + draw_x,y + draw_y, 2 * spr_dir, 2, spr_angle, c_white, 1);
	maskMidder();
	draw_sprite_tiled_ext(sprite_get("cosmic_bg"), game_time * idle_anim_speed * 10, get_gameplay_time()/10 , get_gameplay_time()/10 , 1, 1, c_white, 1);
	maskFooter();
}
    
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
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);