var atk  = my_hitboxID.attack
var hbox = my_hitboxID.hbox_num

if(fast_fwd)
{
	if(nspec_target != hit_player_obj)  
	{
		nspec_target_timer = 30;
		nspec_target = hit_player_obj;
	}
	if(nspec_shells != 6 && !nspec_has_hit) 
	{
		nspec_has_hit = true;
		nspec_shells ++;
	}
}

if (my_hitboxID.attack == AT_FSPECIAL_AIR) {
	if (my_hitboxID.hbox_num == 2){
		old_vsp = -9;
		old_hsp = -1*spr_dir;
	//if (my_hitboxID.hbox_num == 1){
	//window = 3;
	//window_timer = 0;
	}
}


if atk == AT_FTILT {
	sound_play(asset_get("sfx_may_whip2"), 0, noone, 0, 1)
}
if(atk == AT_DSPECIAL)
{
	with(hit_player_obj)
	{
		var pillarhit = variable_instance_exists(other.my_hitboxID,"old_rewind");
		desirae_rewind_state = 0;
		desirae_timelock = true;
		desirae_time_mode = 0;
		desirae_time_percent = get_player_damage(player)+(pillarhit?0:25);
		desirae_time_left = 60*5;
		// desirae_time_x = x;
		// desirae_time_y = y;
		sound_play(asset_get("sfx_ell_arc_taunt_end"), false, noone, 1, 1.2);
	}
}
//}
/*
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL and my_hitboxID.hbox_num < 3){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-80, .35);
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+90*spr_dir, .35);
    }
}