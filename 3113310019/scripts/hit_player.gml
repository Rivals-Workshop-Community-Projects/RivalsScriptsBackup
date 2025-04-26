//hit_player
if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3){
	create_hitbox( AT_JAB, 4, (my_hitboxID.x + 24*spr_dir),(my_hitboxID.y) );
	destroyed = true;
}

if (my_hitboxID.attack == AT_EXTRA_2 && my_hitboxID.hbox_num == 5){
	create_hitbox( AT_EXTRA_2, 6, (my_hitboxID.x + 24*spr_dir),(my_hitboxID.y) );
	destroyed = true;
}

if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1){
	create_hitbox( AT_USTRONG, 2, (my_hitboxID.x),(my_hitboxID.y - 24) );
	destroyed = true;
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
	create_hitbox( AT_NSPECIAL, 2, (my_hitboxID.x + 24*spr_dir),(my_hitboxID.y) );
	destroyed = true;
}

if (my_hitboxID.attack == 49 && my_hitboxID.hbox_num == 1){
	create_hitbox( 49, 2, (my_hitboxID.x),(my_hitboxID.y - 24) );
	destroyed = true;
}

if (my_hitboxID.attack == AT_FSPECIAL){
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) && (!hit_player_obj.clone){
		melonpult_fspecial_grabbed = hit_player_obj.id;
		destroy_hitboxes();
		attack = AT_FSPECIAL_2;
		window = 1;
		if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
			window_timer = 4;
			melonpult_fspecial_grabbed.x = floor(x) + (62 * spr_dir);
			melonpult_fspecial_grabbed.y = floor(y) - 16;
		} else if (my_hitboxID.hbox_num == 3){
			window_timer = 2;
			melonpult_fspecial_grabbed.x = floor(x) + (94 * spr_dir);
			melonpult_fspecial_grabbed.y = floor(y) - 16;
		} else if (my_hitboxID.hbox_num == 4){
			window_timer = 0;
			melonpult_fspecial_grabbed.x = floor(x) + (126 * spr_dir);
			melonpult_fspecial_grabbed.y = floor(y) - 16;
		}
	}
}

if (my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == AT_NTHROW){
	if (my_hitboxID.hbox_num == 1){
		hit_priority = 0;
		destroy_hitboxes();
	}
}

/*
if (my_hitboxID.attack == AT_USTRONG){
	if (!hit_player_obj.super_armor && hit_player_obj.soft_armor == 0) {
		if (my_hitboxID.hbox_num == 4){
			hit_player_obj.melon_mortar_scoop = id;
		}
	}
}
*/