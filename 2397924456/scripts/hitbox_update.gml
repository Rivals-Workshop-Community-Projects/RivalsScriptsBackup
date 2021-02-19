var flicker = 1;

switch(attack){
	
	case AT_FTILT:
	
		if !free || hitbox_timer == length{
			if hbox_num == 1 spawn_hit_fx(x, y, player_id.vfx_gunshot_blast);
			instance_destroy();
			exit;
		}
		
		break;
	
	case AT_FSTRONG:
	
		if hbox_num == 2{
			if hitbox_timer == length - 1{
				spawn_hit_fx(x, y, player_id.vfx_gunshot_blast);
			}
			
			if hitbox_timer < length - 1{
				spawn_hit_fx(x, y, player_id.vfx_arrow_afterimage);
			}
		}
	
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



// if flicker visible = !(hitbox_timer > length - 12 && hitbox_timer % 6 < 3);