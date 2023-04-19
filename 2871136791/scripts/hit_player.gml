//hit player
switch (my_hitboxID.attack)
{
	case AT_DAIR:
		//var t = get_player_damage(hit_player_obj.player);
		//dairOffStage = (t>120)?-1:max(t-10,15);
		if (my_hitboxID.hbox_num == 1 && !instance_exists(dairID) && !hit_player_obj.super_armor) dairID = hit_player_obj;
		break;
	case AT_FSPECIAL:
		if (my_hitboxID.hbox_num == 2) move_cooldown[AT_FSPECIAL] = 40;
		break;
	case AT_DSPECIAL:
		if (my_hitboxID.hbox_num == 2) my_hitboxID.can_hit[hit_player_obj.player] = true;
		break;
	case AT_UAIR:
		sound_play(asset_get("sfx_blow_medium1"), 0, noone, .5, 1)
	break;
	case AT_USTRONG:
		sound_play(asset_get("sfx_blow_heavy1"), 0, noone, 1.4, .6)
	break;
}