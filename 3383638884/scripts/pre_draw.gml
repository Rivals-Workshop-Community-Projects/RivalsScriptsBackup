attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR;

/*
//afterimage
//afterimage_mode: 0 - freeze, 1 - draw but don't make new afterimages, 2 - mach mode, 3 - body slam
if(afterimage_mode > 0)
{
	if(afterimage_mode > 1)
	{
		afterimage_counter++;
		if((afterimage_counter > 3 && afterimage_mode == 3) || (afterimage_counter > 7 && afterimage_mode == 2))
		{
			if(afterimage_mode == 2)
			{
				if(afterimage_lastwasgreen) {
					afterimage_array[array_length_1d(afterimage_array)] = {x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, col:$0000FF, timer:0, timerMax:20, fog:false};
					afterimage_lastwasgreen = false;
				}
				else {
					afterimage_array[array_length_1d(afterimage_array)] = {x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, col:$00FF00, timer:0, timerMax:20, fog:false};
					afterimage_lastwasgreen = true;
				}
			}
			else if(afterimage_mode == 3)
			{
				afterimage_array[array_length_1d(afterimage_array)] = {x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, col:$0000CC, timer:0, timerMax:15, fog:true};
			}
			afterimage_counter = 0;
		}
	}
}
*/
if(afterimage_mode > 0)
{
	/*
	var newArray = 0;
	for(var i = 0; i < array_length_1d(afterimage_array); ++i)
	{
	    var obj = afterimage_array[i];
	    if(++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
	}
	afterimage_array = newArray;
	*/

	for(var i = 0; i < array_length_1d(afterimage_array); ++i)
	{
		var obj = afterimage_array[i];
		if(obj.fog)
			gpu_set_fog(1, $0000CC, 0, 1);
		else
			shader_start();
		draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir * 2, 2, 0, obj.col, 1-obj.timer/obj.timerMax);
		if(obj.fog)
			gpu_set_fog(0, c_white, 0, 0);
		else
			shader_end();
	}
}

//taunt fx
if(attacking)
{
	if(attack == AT_FSTRONG && window == 2 && floor(window_timer/3) < 3)
	{
	    draw_sprite_ext(sprite_get(((strong_charge == 60 || has_rune("M"))? "fstrong_flash_charged" : "fstrong_flash") + "_placeholder"), floor(window_timer/3), x + spr_dir*42, y - 90, spr_dir*2, 2, 0, c_white, 1);
	}
	if(attack == AT_NSPECIAL) 
	    draw_sprite_ext(sprite_get("taunt_fx"), min(floor(window_timer/3), 3), x, y, 2, 2, 0, c_white, 1);
	if(attack == AT_SUPERTAUNT && window > 3) 
	{
		if(state_timer > 73)
			draw_sprite_ext(sprite_get("taunt_fx"), 3, x, y, 2, 2, 0, c_white, 1);
		else if(state_timer > 44)
			draw_sprite_ext(sprite_get("taunt_fx"), 1, x, y, 2, 2, 0, c_white, 1);
		else
			draw_sprite_ext(sprite_get("taunt_fx"), min(floor((state_timer - 34)/3), 3), x, y, 2, 2, 0, c_white, 1);
	}
}