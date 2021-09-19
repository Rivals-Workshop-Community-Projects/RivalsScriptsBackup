//set_attack

if (pseudodynamic_test){
	if (attack==AT_USPECIAL){
		attack = AT_USPECIAL_2
	}
	if (attack==AT_NSPECIAL){
		attack = AT_NSPECIAL_2
	}
	if (attack==AT_FSPECIAL){
		attack = AT_FSPECIAL_2
	}
	if (attack==AT_DSPECIAL){
		attack = AT_DSPECIAL_2
	}
}

if (attack==AT_FTILT||attack==AT_JAB){
	//jab_dir = spr_dir
	equip_rand = random_func( id%5, 7, true );
	item_cell = equip_rand
	attack = AT_JAB
}
if (attack==AT_NAIR){
	nair_count_before_land++;
}
if (attack==AT_DTILT){
	item_rand = random_func( id%5, 14, true );
	dtilt_cur_cool = (dtilt_c_cooldown==0)?false:true;
}
if (attack==AT_DATTACK){
	thrower_rand = random_func( id%5, 4, true );
}
if (attack==AT_UAIR){
	harmful_rand = random_func( id%5, 3, true );
}
if (attack==AT_DAIR){
	item_cell = 9 //change later in attack over at attack_update
}
if (attack==AT_USTRONG){
	emitter_rand = random_func( id%5, 6, true );
	item_cell = emitter_rand
}
if (attack==AT_DSTRONG){
	deadly_rand = random_func( id%5, 6, true );
}
if (attack==AT_NSPECIAL){
	nsp_ground = (!free)?true:false;
}
if (attack==AT_USPECIAL){
	bouncy_rand = random_func( id%5, 8, true );
}
if (attack==AT_TAUNT){
	chair_rand = random_func( id%5, 8, true );
}
if (attack==AT_BAIR){
	epicgun_rand = random_func( id%5, 2, true );
	item_cell = epicgun_rand
}


