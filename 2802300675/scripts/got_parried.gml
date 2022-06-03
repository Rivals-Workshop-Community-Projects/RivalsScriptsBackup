//

with (my_hitboxID) {
	if(attack == AT_NSPECIAL){
	hitbox_timer = 0;
	hsp *= 1.5;
	}
}

with (my_hitboxID) {
	if(attack == AT_FSTRONG){
		if(hbox_num = 3){
	hitbox_timer = 0;
	hsp *= 1.5;
	hit_priority = 5;
		}
	}
}

with (my_hitboxID) {
	if(attack == AT_USTRONG){
		if(hbox_num = 3){
	hitbox_timer = 0;
	hsp *= 1.5;
	hit_priority = 5;
		}
	}
}

with (my_hitboxID) {
	if(attack == AT_USPECIAL){
	spawn_hit_fx(x, y + 20, player_id.hitsmoke); 
	hitbox_timer = 0;
	hit_priority = 5;
	}
}

destroy_smog = true;