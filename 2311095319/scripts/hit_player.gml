//hit_player.gml

//Down Air (Stomp)
if (my_hitboxID.attack == AT_DAIR && window < 3){
	window = 3;
    window_timer = 0;
    old_vsp = -7.5;
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
if (attack == AT_FSPECIAL){
	if (window > 5){
		hsp = hsp * 0.24
	}
}

//Up Special: Super Jump Punch
if (my_hitboxID.attack == AT_USPECIAL){
	if (window == 2){
		//Linking Hitbox 1
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 20);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 70);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 80);
		
		//Linking Hitbox 2
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 20);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 70);
		set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 80);
		
		//Linking Hitbox 3
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 20);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -60);
		set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 70);
		set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 80);
		
		//Final Hit
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 22);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -61);
		set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 110);
		set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 110);
		
		//Note to self: These reset during endlag.
	}
}