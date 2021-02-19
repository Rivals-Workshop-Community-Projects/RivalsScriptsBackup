with (fspec_article) state = 2

nspec_charge = 0

repeat (3) add_wisp(x,y)


#define add_wisp(x, y)
//Adds a wisp at x and y.
if (find_wisp() < 2)
{
	var wisp = instance_create(x,y,"obj_article1");
	hit_player_obj.nspec_steal_effect = 30;
	wisp.wisp_index = find_wisp() + 1;
	switch (wisp.wisp_index)
	{
		case 0:
			wisp.rel_position = [-35,-60];
			wisp.depth = depth-5
			break;
		case 1:
			wisp.rel_position = [-55,-30];
			wisp.depth = depth-2
			break;
		case 2:
			wisp.rel_position = [30,-24];
			break;
	}
	wisps[find_wisp() + 1] = wisp;
	
	//sound_play(sound_get("wisp_appear"))
}

#define find_wisp
//Return: real, -1 if failed
//Takes the wisps array and sees if there is any object in it.
//If there is, return the index of the first one found starting from the end.
i = 2;
while (wisps[i] == -1)
{
    i = (i == 0) ? -1 : i-1;
    if (i == -1) break; // to avoid out of bounds errors
}
return i;