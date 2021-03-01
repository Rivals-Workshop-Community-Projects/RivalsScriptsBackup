legion.target_health = max(legion.legion_health - 15 * legion.health_ratio, 1);

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2) my_hitboxID.hitbox_timer = 0;

var temp_player = hit_player_obj.player;

if (my_hitboxID.attack == AT_FTILT) with my_hitboxID{
	spr_dir *= -1;
	with pHitBox if attack == other.attack && player_id == other.player_id{
		player = temp_player;
		hsp = other.hsp;
		vsp = other.vsp;
		proj_angle = 180;
		y += 16;
		if self != other{
			hsp *= -1;
			vsp *= -1;
		}
		hitbox_timer = 0;
	}
}