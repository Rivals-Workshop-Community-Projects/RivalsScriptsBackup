//checking to see if key hitboxes have been hit in strong attacks.
//need to have wisps

// var cond1, cond2;
// cond1 = ((my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USTRONG) && my_hitboxID.hbox_num == 2)
// cond2 = (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 4)

// if ((cond1 || cond2) && wisp_attack == true)
// {
// 	add_wisp(my_hitboxID.x, my_hitboxID.y);
// 	if strong_charge >= 15 or get_player_damage( hit_player ) >= 100
// 	{
// 		ss_boom_active = true;
// 		ss_boom_coord = [hit_player_obj.x,hit_player_obj.y-hit_player_obj.char_height/2];
// 		sound_play(sound_get("sweetspot"))
// 	}
// }

// var boost;
// boost = floor(log2(my_hitboxID.damage + 1)) * 1.5;
// wisp_recharge += boost;
// if wisp_recharge >= wisp_max_recharge
// {
// 	wisp_recharge = wisp_recharge mod wisp_max_recharge
// 	add_wisp(x,y);
// }
		//[DELTA CHECK] only makes wisps with red arrows
if (my_hitboxID.attack == AT_NSPECIAL && ( (should_red_arrow && my_hitboxID.hbox_num == 1) or my_hitboxID.hbox_num != 1 ) )
{
	wisp_helper()
	move_cooldown[AT_NSPECIAL] = 30
}

		//[DELTA CHECK] only makes wisps with red arrows
/*if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 && should_red_arrow)
{
	
	move_cooldown[AT_DSPECIAL] = 0;
}*/

if (my_hitboxID.attack == AT_FAIR and my_hitboxID.hbox_num == 1 and !hit_player_obj.clone)
{
	hit_player_obj.x = lerp(hit_player_obj.x, x + (spr_dir*40),0.16)
	hit_player_obj.y = lerp(hit_player_obj.y, y-10,0.14)
}

if (my_hitboxID.attack == AT_DSPECIAL) {
	destroy_hitboxes()
	window = 8;
	window_timer = 0;
	old_vsp = -10;
}


if (my_hitboxID.attack == AT_USPECIAL || my_hitboxID.attack == AT_USPECIAL_2)
{
	wisp_helper()
}
#define wisp_helper()
if(!my_hitboxID.was_parried){
	if (fspec_article != noone)
	{
		if find_wisp() <= 0 and fspec_article.sprite_index == sprite_get("willo_idle")
		{
			add_wisp(my_hitboxID.x, my_hitboxID.y);
		}
		else if fspec_article.sprite_index != sprite_get("willo_idle")
		{
			add_wisp(my_hitboxID.x, my_hitboxID.y);
		}
	}
	else
	{
		add_wisp(my_hitboxID.x, my_hitboxID.y);
	}
}

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
	
	sound_play(sound_get("wisp_appear"))
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
#define destroy_wisp
//Return: none
//Removes wisp from the array.
if argument0 != -1 //idiot proofing
{
    wisps[argument0] = -1;
}
