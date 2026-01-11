ringspeeds = []
var j = 0;
repeat 8{
	array_push(ringspeeds, random_func_2(10 + 11*j, 51, 1) - 25);
	j++;
}
sprite_index = asset_get("empty_sprite");

depth = 33;