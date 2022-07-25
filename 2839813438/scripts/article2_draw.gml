with oPlayer{

	if(player == other.who_got_it){
		other.notif_x = x;
		other.notif_y = y - char_height - 20;
	}

}

switch (notif_id) {

	case 0: 
		var the_sprite = sprite_get("empty");
	break;

	case 1: 
		var the_sprite = sprite_get("glide_plus");
	break;

	case 2: 
		var the_sprite = sprite_get("offense_plus");
	break;

	case 3: 
		var the_sprite = sprite_get("hp_plus");
	break;

	case 4: 
		var the_sprite = sprite_get("weight_plus");
	break;

	case 5: 
		var the_sprite = sprite_get("boost_plus");
	break;

	case 6: 
		var the_sprite = sprite_get("turn_plus");
	break;

	case 7: 
		var the_sprite = sprite_get("defense_plus");
	break;

	case 8: 
		var the_sprite = sprite_get("charge_plus");
	break;

	case 9: 
		var the_sprite = sprite_get("top_speed_plus");
	break;

	case 10: 
		var the_sprite = sprite_get("downvote_all");
	break;

}

draw_sprite_ext(the_sprite, 0 , notif_x, notif_y, 2, 2, 0, c_white, 1);