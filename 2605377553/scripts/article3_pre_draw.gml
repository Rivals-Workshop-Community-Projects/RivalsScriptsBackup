//this article solely exists in order to draw the stenciled outline, if it exists

if (player_id.smokeStencilSprite != -1 && array_length(player_id.smokeList) > 0)
{
	drawSmokeLayer(player_id.spr_smokeBack);
}

#define drawSmokeLayer(sprite)
{
	for(var i=0; i<array_length(player_id.smokeList); i++)
	{
		var s = player_id.smokeList[i];
		draw_sprite_ext( sprite, get_gameplay_time()*player_id.smokeStencilAnimSpeed, s.x, s.y, s.image_xscale, s.image_yscale, 0, c_white, 1 );
	}
}
