if attack == AT_DSPECIAL && player == orig_player{
	with player_id{
		var vfx = instance_create(round(other.x), round(other.y), "obj_article3");
		
		vfx.spr_dir = other.spr_dir;
	}
}