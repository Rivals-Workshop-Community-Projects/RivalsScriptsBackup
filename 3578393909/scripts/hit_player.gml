//hit_player.gml
//this script runs every time you hit someone with a hitbox
//NOTE: to check for hitbox variables use [my_hitboxID] like the examples below, otherwise don't include it in you statements

if my_hitboxID.orig_player_id != self exit; //this line makes it so only hitboxes that belong to tester work with hit_player

switch my_hitboxID.attack{
	case AT_DATTACK: //multihit assurance
		if my_hitboxID.hbox_num == 1{
			hit_player_obj.hurt_img = 5;
			set_attack_value(attack, AG_NUM_WINDOWS, 6);
			set_window(4);
			attack_end();
			destroy_hitboxes();
		}
		else my_grab_id = noone;
	break;
	case AT_USTRONG: //multihit assurance
		if my_hitboxID.hbox_num <= 2{
			set_grab_id(); //special function you can see below that sets the hit player to be grabbed
		}
		else my_grab_id = noone;
	break;
	case AT_FSPECIAL: case AT_USPECIAL: //grab
		if my_hitboxID.hbox_num == 1{
			set_grab_id(); //special function you can see below that sets the hit player to be grabbed
			my_grab_id.hitstop = 20;
			attack_end();
			destroy_hitboxes();
			fixed_set_attack(AT_FSPECIAL_2);
		}
		else my_grab_id = noone; //rocket jump
	break;
	case AT_FTHROW: case AT_NTHROW: case AT_DTHROW: case AT_UTHROW:
		if my_hitboxID.hbox_num == get_num_hitboxes(attack){
			my_grab_id = noone;
		}
	break;
}

//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
	if window_num == 0 window++;
	else if window_num == -1 window = window;
	else window = window_num;
	window_timer = 0;
}
#define fixed_set_state(state)
{
	set_state(state);
	hurtboxID.sprite_index = hurtbox_spr;
}
#define fixed_set_attack(attack)
{
	set_attack(attack);
	if free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
	else hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
}
#define set_grab_id
{
	//things to check when you grab someone:
	//  - make sure your grabbed ID is noone so it will grab the first player it collides with
	//  - if the ID is a clone (clones usually disappear which will pop up an error)
	//  - if the hit player is in a hitstun state (so it won't grab armored player)
	//  - if the player isn't in ranno's bubble
	
	if my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled{
		my_grab_id = hit_player_obj;
	}
}