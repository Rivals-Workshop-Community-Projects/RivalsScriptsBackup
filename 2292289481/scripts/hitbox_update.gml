//hitbox update

if (!free && hbox_num == 2 && attack == AT_USPECIAL){
	destroyed = true;
	if (!was_parried){
		destroy_fx = 1;
		minion = instance_create(x, y+18, "obj_article1");
		minion.player_id = player_id;
		minion.player = player;
		minion.spr_dir = 1;
		player_id.minion = minion;
	}
}

if (!free && hbox_num == 1 && attack == AT_DSPECIAL){
	destroyed = true;
	if (!was_parried){
		destroy_fx = 1;
		minion = instance_create(x, y+18, "obj_article1");
		minion.player_id = player_id;
		minion.player = player;
		minion.spr_dir = 1;
		player_id.minion = minion;
	}
}

if (!free && hbox_num == 2 && attack == AT_USTRONG){
	destroyed = true;
	if (!was_parried){
		destroy_fx = 1;
		minion = instance_create(x, y+18, "obj_article1");
		minion.player_id = player_id;
		minion.player = player;
		minion.spr_dir = 1;
		player_id.minion = minion;
	}
}

/*
if (!free && hbox_num == 1 && attack == AT_NSPECIAL){
	destroyed = true;
		if (!was_parried){
		destroy_fx = 1;
		if spr_dir = 1 {
			webzone = instance_create(x, y, "obj_article2");
		}
		else {
			webzone = instance_create(x-38, y, "obj_article2");
		}
		webzone.player_id = player_id;
		webzone.player = player;
		webzone.spr_dir = 1;
		player_id.webzone = webzone;
	}
}
*/

/*
if (instance_place(x, y, player_id.minion) != noone) && (attack == AT_NSPECIAL) {
   destroyed = true;
}
*/

/*
if (!free && hbox_num == 2 && attack == AT_DAIR){
	destroyed = true;
	if (!was_parried){
		destroy_fx = 1;
		var minion = instance_create(x, y+18, "obj_article1");
		minion.player_id = player_id;
		minion.player = player;
		minion.spr_dir = 1;
	}
}


if (!free && hbox_num == 1 && attack == AT_DSPECIAL){
	destroyed = true;
	if (!was_parried){
		destroy_fx = 1;
		var minion = instance_create(x, y+18, "obj_article1");
		minion.player_id = player_id;
		minion.player = player;
		minion.spr_dir = 1;
	}
}

if (!free && hbox_num == 2 && attack == AT_USTRONG){
	destroyed = true;
	if (!was_parried){
		destroy_fx = 1;
		var minion = instance_create(x, y+18, "obj_article1");
		minion.player_id = player_id;
		minion.player = player;
		minion.spr_dir = 1;
	}
}

*/