if type == 0 {
	x = lerp(x, destx, 0.1)
	y = lerp(y, desty, 0.1)
	//image_xscale = min(1, point_distance(x, y, destx, desty)*0.01)
	//image_yscale = image_xscale
	if abs(x-destx) < 4 && abs(y-desty) < 4 instance_destroy();
} else if type == 1 { //Kirby sporeling
	player_id.move_cooldown[AT_EXTRA_3] = 2;

	switch(state) {
		default:
		
		if player_id.state_cat = SC_HITSTUN {
			sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
			instance_destroy();
			exit;
		}
		
		
		
		destx = player_id.x - 40*player_id.spr_dir
		desty = ((player_id.y - 30)+image_index*4)-uppies*3
		
		uppies = max(uppies-0.5, 0)
		depth = player_id.depth+1;
		
		image_index = (image_index+0.1) mod 4
		
		x = lerp(x, destx, 0.1)
		y = lerp(y, desty, 0.1)
		break;
		case 1:
		dist = point_distance(x,y,target.x,target.y-(target.char_height/2))
		stabspeed = 0;
		hsp = 0
		vsp = 0
		state = 2;
		
		case 2:
		dist -= stabspeed;
		stabspeed++;
		var a = point_direction(x,y,target.x,target.y-(target.char_height/2))
		
		image_angle = a+90;
		x = target.x - lengthdir_x(dist, a)
		y = target.y-(target.char_height/2) - lengthdir_y(dist, a);
		
		if dist <= 0 {
			set_player_damage(player, get_player_damage(player) - selfstab_damage)
			take_damage(target.player, player, 10)
				sound_play(asset_get("sfx_crunch_water"));
				sound_play(asset_get("sfx_may_wrap1"));			
			instance_destroy();
		}
		break;
	}

}