//SLENDERMAN HIT PLAYER


//sound area
switch (my_hitboxID.attack)
{
	case AT_DATTACK:
	sound_play(sound_get("hit3"), false, noone, 0.6);
	sound_play(sound_get("hit2"), false, noone, 0.6);
	break;
	
	case AT_DTILT:
	sound_play(sound_get("distort_1"), false, noone, 0.7);
	break;
	
	case AT_FTILT:
	sound_play(sound_get("distort_4"), false, noone, 0.4);
	sound_play(sound_get("hit1"), false, noone, 0.65, 1.5);
	
	if (hit_player_obj.slender_haunt == noone) hit_player_obj.slender_buildup += 5;
	break;
	
	case AT_UTILT:
	sound_play(sound_get("tta_19"), false, noone, 0.9); 
	sound_play(sound_get("tta_23"), false, noone, 0.7);
	sound_play(sound_get("tta_7"), false, noone, 0.2);
	sound_play(sound_get("hit1"), false, noone, 0.65, 1.1);
	break;
	
	case AT_BAIR:
	if (my_hitboxID.hbox_num == 1) sound_play(sound_get("hit4"), false, noone, 0.7, 0.9);
	if (hit_player_obj.slender_haunt == noone) 
	{
		if (strong_charge >= 60) hit_player_obj.slender_buildup += 25;
		else if (strong_charge >= 45) hit_player_obj.slender_buildup += 20;
		else if (strong_charge >= 30) hit_player_obj.slender_buildup += 15;
		else if (strong_charge >= 15) hit_player_obj.slender_buildup += 10;
		else hit_player_obj.slender_buildup += 5;
	}
	
	break;
	
	case AT_NAIR:
	if (my_hitboxID.hbox_num == 1) 
	{
	sound_play(sound_get("distort_10"), false,noone, 0.7);
	sound_play(sound_get("distort_11"), false,noone, 0.7);
	sound_play(sound_get("tta_3"), false, noone, 0.4);
	}
	if (hit_player_obj.slender_haunt == noone) hit_player_obj.slender_buildup += 10;
	break;
	
	case AT_FAIR:
	sound_play(sound_get("tta_9"),false,noone,0.75); 
	sound_play(sound_get("tta_17"),false,noone,0.75);
	sound_play(sound_get("distort_5"),false,noone,0.4);
	sound_play(sound_get("claw"));
	break;
	
	case AT_UAIR:
	sound_play(sound_get("nisae_hit6"),false,noone,1);
	sound_play(sound_get("distort_10"),false,noone,0.85);
	sound_play(sound_get("tta_20"),false,noone,0.4);
	break;
	
	case AT_DAIR:
	switch (my_hitboxID.hbox_num)
	{
		case 1:
		//sour
		sound_play(sound_get("nisae_metallic1"),false,noone,1);
		sound_play(sound_get("tta_1"),false,noone,1);
		hit_player_obj.slender_buildup += 5;
		break;
		
		case 2:
		//sweet
		sound_play(sound_get("nisae_metallic1"),false,noone,1);
		sound_play(sound_get("hit1"),false,noone,0.7,1.3);
		sound_play(sound_get("tta_17"),false,noone,0.8);
		sound_play(sound_get("tta_10"),false,noone,0.35);
		hit_player_obj.slender_buildup += 10;
		break;
		
		default:
		//late
		sound_play(sound_get("nisae_metallic1"),false,noone,0.75,0.9);
		sound_play(sound_get("tta_1"),false,noone,0.75,0.9);
		hit_player_obj.slender_buildup += 5;
		break;
	}
	break;
	
	case AT_FSTRONG:
	switch (my_hitboxID.hbox_num)
	{
		case 1:
		sound_play(sound_get("nisae_hit6"),false,noone,0.8); sound_play(sound_get("hit2"),false,noone,0.8);
		sound_play(sound_get("tta_13"),false,noone,0.7);
		sound_play(sound_get("distort_9"),false,noone,0.5);
		
		// Grab handling.
		if (do_grab())
		{
			destroy_hitboxes();
			set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 13);
			if (!instance_exists(grabbed_player_obj)) grabbed_player_obj = hit_player_obj; 
			else 
			{
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) grabbed_player_obj = hit_player_obj; 
			}
		}
		break;
		
		case 2:
		hitstop = 0;
		shake_camera(20, 8);
		if (hit_player_obj.slender_haunt == noone) hit_player_obj.slender_buildup += 10;
		break;
	}
	break;
	
	case AT_USTRONG:
	sound_play(sound_get("hit1"),false,noone,0.8);
	sound_play(sound_get("tta_20"),false,noone,0.5);
	if (hit_player_obj.slender_haunt == noone) 
	{
		hit_player_obj.slender_buildup = 
				(my_hitboxID.hbox_num == 1)
				? hit_player_obj.slender_buildup + 20
				: hit_player_obj.slender_buildup + 40;
	}
	break;
	
	case AT_DSTRONG:
	sound_play(sound_get("hit5_t_b"),false,noone,0.8); sound_play(sound_get("hit2"),false,noone,0.6);
	sound_play(sound_get("nisae_hit2"),false,noone,0.8); sound_play(sound_get("distort_6"),false,noone,0.6);
	sound_play(sound_get("tta_11"),false,noone,0.4);
	if (hit_player_obj.slender_haunt == noone) hit_player_obj.slender_buildup += 10;
	break;
	
	case AT_NSPECIAL:
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2)
	{
		if (do_grab()) 
		{
			destroy_hitboxes();
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
			if (!instance_exists(grabbed_player_obj)) grabbed_player_obj = hit_player_obj;
			else 
			{
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) grabbed_player_obj = hit_player_obj;
			}
		}
	}
	break;
	
	case AT_USPECIAL:
	sound_play(sound_get("tta_19"),false,noone,0.8);
	sound_play(sound_get("tta_4"),false,noone,0.8); sound_play(sound_get("tta_2"),false,noone,0.6);
	sound_play(sound_get("tta_23"),false,noone,0.8); sound_play(sound_get("hit1"),false,noone,0.6,0.8);
	sound_play(sound_get("tta_22"),false,noone,0.4);
	break;
}

#define do_grab()
var _returner = 
		((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && 
		!hit_player_obj.super_armor && 
		(hit_player_obj.soft_armor == 0 || 
		 hit_player_obj.soft_armor <= hit_player_obj.orig_knock) && 
		was_parried == false && hit_player_obj.clone == false);
return _returner;
