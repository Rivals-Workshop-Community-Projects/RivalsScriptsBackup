//a

//with (asset_get("obj_article1")){
	//if (player_id == other.id){
		var hud_col = get_player_hud_color( player );
		draw_sprite_ext( sprite_get("na_bubble_ol"), image_index, x, y, spr_dir, 1, image_angle, hud_col, 0.5 )
	//}
//}


//below code not by me

//pattern test
//copy and paste this anywhere in the file, but make sure the code past "#define" is at the end of the file. 
//Also, make sure to use "shader_end();" before you start the code, and "shader_start(); if you want to put more code after.

if (get_player_color(player) == 19||get_player_color(player) == 11){

shader_end();
maskHeader();
draw_self();
maskMidder();

if (get_player_color(player) == 11){
draw_sprite_tiled_ext(sprite_get("genesisfield_g"), 1, view_get_xview()+player_id.giy_timer, view_get_yview()+player_id.giy_timer, 2, 2, c_white, 1)
}else{
draw_sprite_tiled_ext(sprite_get("genesisfield"), 1, view_get_xview()+player_id.giy_timer, view_get_yview()+player_id.giy_timer, 2, 2, c_white, 1)
}

//draw_sprite_tiled_ext(sprite_get("genesisfield"), 1, view_get_xview()+player_id.giy_timer, view_get_yview()+player_id.giy_timer, 2, 2, c_white, 1)

maskFooter();
with(player_id){shader_start();}

}

//================================================================================
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