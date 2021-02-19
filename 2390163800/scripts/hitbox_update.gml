if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}



if ("article_owner" in self && true_type == 1){
	flicker = 0;
	
	if instance_exists(article_owner) && article_owner.state == PS_ATTACK_AIR{
		x = article_owner.x + offset_x * article_owner.spr_dir;
		y = article_owner.y + offset_y;
		in_hitpause = article_owner.hitstop;
		spr_dir = article_owner.spr_dir;
	}
	else{
		instance_destroy();
		exit;
	}
}