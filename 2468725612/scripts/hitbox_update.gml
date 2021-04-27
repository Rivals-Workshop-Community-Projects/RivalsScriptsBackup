

can_hit_self = true;

if ((attack == AT_DATTACK || attack == AT_NAIR || attack == AT_FAIR || attack == AT_BAIR || attack == AT_UAIR 
	|| attack == AT_DAIR || attack == AT_FSTRONG_2 || attack == AT_USTRONG_2 || attack == AT_DSTRONG_2
	|| attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL || attack == AT_DSPECIAL_2
	|| attack == AT_DSPECIAL_AIR)
	&& hit_priority != 0){
		x = x_pos + player_id.x;	
		y = y_pos + player_id.y;
}

if ((attack == AT_UTILT || attack == AT_NAIR) && hbox_num == 7){
	if (free == false){
		sound_play(sound_get("shotgun_shell"));
	}
	proj_angle += 5*spr_dir;
	vsp += .2;
}

if (attack == AT_DSPECIAL && (hbox_num == 1 || hbox_num == 2) && player_id.window == 4){
	destroyed = true;
}

