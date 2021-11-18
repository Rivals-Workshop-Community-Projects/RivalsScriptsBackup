//Got parried
listening_for_hitpause = false;
switch(my_hitboxID.identity.name) {
	case "Stomp": case "Ground Pound": case "Spin Jump": case "Falling Tanooki Statue":
		stomp_parried = true;
		listening_for_hitpause = false;
		stomped_id = hit_player_obj;
		stomped_success = true;
	break;
	
	case "Fireball":
		my_hitboxID.hsp *= 2;
		my_hitboxID.hitbox_timer = 0;
		my_hitboxID.kb_value = 13; my_hitboxID.damage = 6;
	break;
	
	case "Koopa Troopa Shell":
		my_hitboxID.hsp *= 1.25;
	break;
	
	case "Iceball":
		my_hitboxID.bounces = 0;
	break;
	
	case "Ice Block":
		if(my_hitboxID.hsp == 0) my_hitboxID.state = "Shatter";
		
		my_hitboxID.eject_coins = false;
	break;
	
	case "Blue Koopa Shell":
		shell_bounce_dir = spr_dir * -1; skid_timer = 40;
		shell_points_owner = hit_player_obj; shell_player = hit_player_obj.player;
	break;
}