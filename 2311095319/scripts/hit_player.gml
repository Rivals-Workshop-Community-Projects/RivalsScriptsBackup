//hit_player.gml

//Forward Air (Forward Knuckle)
if (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 1){
	//spawn_hit_fx( hit_player_obj.x, hit_player_obj.y, 4 );
}

//Down Air (Stomp)
if (my_hitboxID.attack == AT_DAIR && window < 3){
	old_vsp = -7.5;
	//if (!down_down){
	//	old_vsp = -7.5;
	//}
	window = 3;
    window_timer = 0;
	sound_play(sfx_stomp)
	destroy_hitboxes();
	if (dairtimeshit != 9){
		dairtimeshit++;
	} else if (dairtimeshit == 9){
		sound_stop(sfx_1up)
		sound_play(sfx_1up)
		if ( is_aether_stage() ) {
			set_player_stocks( player, get_player_stocks( player ) + 1 );
		}
	}
}

//Forward Special (Dive)
if (my_hitboxID.attack == AT_FSPECIAL){
	if (window > 5){
		hsp = hsp * 0.24
	}
}

//Up Special: Super Jump Punch
if (my_hitboxID.attack == AT_USPECIAL){
	if (window == 2){
		/*
		//Linking Hitbox 1
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 24);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 85);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 100);
		
		//Linking Hitbox 2
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 24);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 85);
		set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 100);
		
		//Linking Hitbox 3
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 24);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 85);
		set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 100);
		
		//Final Hit
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 22);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -61);
		set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 125);
		set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 125);
		
		*/
	}
	if (uspecGrabbedPlayer == noone){
		if (my_hitboxID.hbox_num != 1 && my_hitboxID.hbox_num != 5){
			hit_player_obj.x = x + 14 * spr_dir
			hit_player_obj.y = y - 48
		}
	}
	if (my_hitboxID.hbox_num == 1){
		uspecGrabbedPlayer = hit_player_obj;
	}
	var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), coin_effect);
	fx.depth = hit_player_obj.depth + 1;
	sound_play(sfx_coin);
}