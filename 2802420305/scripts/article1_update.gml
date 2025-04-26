
if(hardDropped)
{
	hardDropped = false;
	var fx = spawn_hit_fx(x, y+32, obj_stage_main.hardDropFx);
	fx.depth = depth+1;
	if(sparks != -1)
	{
		var fx2 = spawn_hit_fx(x, y+32, sparks);
		fx2.depth = depth+2;
	}
}
if(cleared)
{
	sprite_index = asset_get("empty_sprite");
	mask_index = asset_get("empty_sprite");
	if(playFx)
	{
		playFx = false;
		spawn_hit_fx(obj_stage_main.lineClearFxPosX, y, obj_stage_main.lineClearFx);
	}
	if(destroyNext)
		instance_destroy();
	return;
}

with (oPlayer)
	if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
		other.hbox_group[@ player-1][@ attack] = array_create(10,0);
	}