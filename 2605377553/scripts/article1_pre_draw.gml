//Smoke Stuff

//draw regular smoke, only if the stencil sprite is -1
if player_id.smokeStencilSprite == -1
{
	if (array_length(player_id.smokeList) > 0 && id == player_id.smokeList[0])
	{
		drawSmokeLayer(player_id.spr_smokeBack);
		drawSmokeLayer(player_id.spr_smokeShade);
		drawSmokeLayer(player_id.spr_smoke);
	}
}

//draw stenciled smoke, using the current stencil sprite
else
{
	drawSmokeLayerMasked(player_id.smokeStencilSprite);
}

#define drawSmokeLayer(sprite)
{
	for(var i=0; i<array_length(player_id.smokeList); i++)
	{
		var s = player_id.smokeList[i];
		draw_sprite_ext( sprite, get_gameplay_time()*smokeAnimSpeed, s.x, s.y, s.image_xscale, s.image_yscale, 0, c_white, 1 );
	}
}

#define drawSmokeLayerMasked()
{
	shader_end();
	maskHeader();
	
	//for(var i=0; i<array_length(player_id.smokeList); i++)
	//{
		var s = id;//player_id.smokeList[i];
		draw_sprite_ext(sprite_get("smokeStencilMask"), get_gameplay_time()*smokeAnimSpeed, s.x, s.y, s.image_xscale, s.image_yscale, 0, c_white, 1); //change the 2*spr_dir and 2 to 1 if the character doesnt use small_sprites
	//}
	
	
	maskMidder();
	draw_sprite_tiled_ext(player_id.smokeStencilSprite, get_gameplay_time()*player_id.smokeStencilAnimSpeed, 0, 0, 1, 1, c_white, 1)
	maskFooter();
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