//
var temp_player = hit_player_obj.player;

if(my_hitboxID.attack == AT_FSPECIAL) with my_hitboxID{
	hitbox_timer = 59;
	create_hitbox(AT_FSPECIAL, 2, x, y + 10);
}

if(my_hitboxID.attack == AT_FSPECIAL_2) with my_hitboxID{
	spr_dir *= -1;
	with pHitBox if attack == other.attack && player_id == other.player_id{
		player = temp_player;
		hsp = other.hsp;
		vsp = other.vsp;
		kb_angle += 90;
		y += 0;
		if self != other{
			hsp *= -1;
			vsp *= 0;
			kb_angle += 90;
		}
	}
}