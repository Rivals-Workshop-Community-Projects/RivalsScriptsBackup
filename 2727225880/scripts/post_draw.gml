

	muno_event_type = 4;
	user_event(14);

shader_end();

if object_index != asset_get("oTestPlayer") {
shader_start();
maskHeader();
draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, spr_angle, c_white, 1);
with pHitBox if player_id == other && type == 2 {
        draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 1, c_white, 1);
    }
maskMidder();
draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, spr_angle, c_gray, .5);
maskFooter();
shader_end();
}
//================================================================================
//draw_debug_text( x, y + 10, "spd" + string(torren_speedforce) + " vsp:" + string(vsp) + " hsp:" + string(hsp));
/*
//draw_debug_text( x, y + 10, "x:" + string( pull_to_x ) + "  y:" + string(pull_to_y));
draw_debug_text( x, y + 25, string(hsp) + "  " + string(vsp) + "  " + string(zoom_time) + "  " + string(gravity_speed))
draw_debug_text( x, y + 40, string(has_hit) + "  " + string(torren_speedforce))

draw_debug_text( x, y + 55, string(has_hit && torren_speedforce > 0 && zoom_time > 0 && attack != AT_FSPECIAL && attack != AT_DATTACK && attack != AT_FTHROW))

//draw_debug_text( x, y + 25, "spd:" + string( speedmultiplier ) + "  dist:" + string(floor(point_distance(speeddisk.x, speeddisk.y, x, y))));


//draw_debug_text( x, y + 40, "angle:" + string( attackangle ) + "  tgzn:" + string( torren_go_zoom_now ) + "  zmtim:" + string(zoom_time));
//draw_debug_text( x, y + 40, "angle:" + string( attackangle ) + "  tgzn:" + string( torren_go_zoom_now ) + "  zmtim:" + string(zoom_time));
//draw_debug_text( x, y + 55, " rvrs:" + string(shouldreverse) );

*/






//draw_debug_text(x, y + 25, string(state_timer))

#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
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
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
