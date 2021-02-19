// other post draw

if ("nspec_steal_effect" in self && nspec_steal_effect > 0)
{
	var renderx = lerp(other_player_id.x,x,nspec_steal_effect/30);
	var rendery = lerp(other_player_id.y,y,nspec_steal_effect/30);
	shader_start();
	draw_sprite_ext(sprite_index,image_index,renderx,rendery,spr_dir,1,0,c_white,nspec_steal_effect/50);
	shader_end();
}