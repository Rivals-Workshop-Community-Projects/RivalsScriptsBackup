//got_hit.gml

tornadoused  = false




if (state == PS_HITSTUN || state == PS_HITSTUN_LAND){
	hurtVoiceClipAlreadyPlayed = false;
	
	// ftilt stuff
	if (sprite_index == sprite_get("ftilt")){
		//print("yes");
		sound_stop(sfx_cappy_toss);
	}	
}




//USPECIAL HITBOXES ARE BEING RESET
	
//Linking Hitbox 1
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -61);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 35);

//Linking Hitbox 2
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -61);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 35);

//Linking Hitbox 3
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -61);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 35);

//Final Hit
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -61);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 50);