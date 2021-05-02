///#args attack

if (attack == AT_TAUNT && down_down) attack = AT_TAUNT_2;



if snail{
	move_cooldown[attack] = 1;
	exit;
}



if attack == AT_USPECIAL{
	attack = AT_EXTRA_1;
	vsp = -13;
}



sideways_nspecial = false;

if attack == AT_FSPECIAL{
	attack = AT_NSPECIAL;
	sideways_nspecial = true;
	hsp = 13 * spr_dir;
}



if (attack == AT_USPECIAL || attack == AT_FSPECIAL) instance_create(x, y - 20, "obj_article2");



if lightning || (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
	if (attack == AT_FSTRONG || ((attack == AT_FAIR || attack == AT_BAIR) && (right_strong_pressed || left_strong_pressed))){
		attack = AT_FSTRONG_2;
		spr_dir = right_strong_pressed - left_strong_pressed;
		if spr_dir == 0 spr_dir = 1;
	}
	else if (attack == AT_USTRONG || (attack == AT_UAIR && up_strong_pressed)){
		attack = AT_USTRONG_2;
	}
	else if (attack == AT_DSTRONG || (attack == AT_DAIR && down_strong_pressed)){
		attack = AT_DSTRONG_2;
	}
	else if (attack == AT_DSPECIAL){
		attack = AT_DSPECIAL_2;
		
		var lightning_dist_max = 544 * 2;
		lightning_dist = 0;
		
		while(!place_meeting(x, y + lightning_dist, asset_get("par_block")) && lightning_dist < lightning_dist_max){
			lightning_dist += 10;
		}
		
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, lightning_dist / 2 - 10);
		set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, lightning_dist + 20);
	}
}



user_event(13);