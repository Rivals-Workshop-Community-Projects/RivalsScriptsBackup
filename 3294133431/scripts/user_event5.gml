
//---------------- Disguise Fx

var fxCount = disguised ? array_length(disguseFxOffsetsX) : 1;
for(var i = 0; i < fxCount; i++)
{
	var centerY = char_height*0.5;
	var offsetDistance = min(char_height*0.3, 50);
	var offsetX = disguseFxOffsetsX[i] * offsetDistance;
	var offsetY = disguseFxOffsetsY[i] * offsetDistance;

	var temp_fx = spawn_hit_fx(x+offsetX, y+offsetY-centerY, disguseFx);
	temp_fx.draw_angle = random_func(i, 360, true);
	temp_fx.spr_dir = random_func(i*2, 2, true)*2-1;
	temp_fx.depth = -100;//TODO: why is it not enough to set this here once? instead done in user_event1, but still char is visible for 1 frame?
	temp_fx.uses_shader = false;

	sound_stop(sound_get("spy_disguise"));
	sound_play(sound_get("spy_disguise"));
}