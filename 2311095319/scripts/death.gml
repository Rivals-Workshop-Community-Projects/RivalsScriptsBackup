//death.gml

hasfirebrand = false
firecharge = 0


sound_stop(vc_mario_doh);
sound_stop(vc_mario_mamma_mia);
sound_stop(vc_mario_starko);
sound_stop(vc_mario_ohno);
sound_stop(vc_mario_grunt);
sound_stop(vc_mario_oof);
if (voiced == 1){
	if (deathvoiceline == 0){
		//
	} else if (deathvoiceline == 1){
		sound_play(vc_mario_doh);
	} else if (deathvoiceline == 2){
		sound_play(vc_mario_mamma_mia);
	} else if (deathvoiceline == 3){
		sound_play(vc_mario_starko);
	} else if (deathvoiceline == 4){
		sound_play(vc_mario_ohno);
	} else if (deathvoiceline == 5){
		sound_play(vc_mario_grunt);
	} else if (deathvoiceline == 6){
		sound_play(vc_mario_oof);
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