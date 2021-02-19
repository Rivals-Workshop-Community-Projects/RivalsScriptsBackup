switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
    break;
    case PS_IDLE_AIR:
	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
    break;
    case PS_FIRST_JUMP:
	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
    break;
    case PS_WALL_JUMP:
	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
    break;
    case PS_LAND:
	hurtboxID.sprite_index = sprite_get("ar_crouch_hurtbox");
    break;
    case PS_PRATLAND:
	hurtboxID.sprite_index = sprite_get("ar_crouch_hurtbox");
    break;
    case PS_LANDING_LAG:
	hurtboxID.sprite_index = sprite_get("ar_crouch_hurtbox");
    break;
    case PS_WALK:
	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
    break;
    case PS_WALK_TURN:
	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
    break;
	
//    case PS_DOUBLE_JUMP:
//	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox");
//	hurtboxID.image_index = 2
//	break;
    case PS_DASH:
	hurtboxID.sprite_index = sprite_get("ar_dash_hurtbox");
	break;
    case PS_DASH_START:
	hurtboxID.sprite_index = sprite_get("ar_dashstart_hurtbox");
	break;
    case PS_DASH_STOP:
	hurtboxID.sprite_index = sprite_get("ar_dashstop_hurtbox");
	break;
    case PS_DASH_TURN:
	hurtboxID.sprite_index = sprite_get("ar_dashturn_hurtbox");
	break;
    case PS_WAVELAND:
	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	break;
    case PS_PARRY:
	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	break;
    case PS_PARRY_START:
	hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
	break;
//    case PS_ROLL_BACKWARD:
//	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
//	break;
//    case PS_ROLL_FORWARD:
//	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
//	break;
    case PS_JUMPSQUAT:
	hurtboxID.sprite_index = sprite_get("ar_crouch_hurtbox");
	break;
	
    default:
//	hurtboxID.sprite_index = sprite_get("ar_hurtbox");
	break;
}

//i spent a lot of time trying to find the answer for that.

//but if i can't get any answers.
//and can't even change image_index.

//SO.
//BE.
//IT.

//4, 4, 4, 4, 4, 4, 4, 4

if (state == 2 && state_timer >=0 && state_timer <4){
	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox_0");
//	hurtboxID.image_index = (state_timer * 8 / double_jump_time);
}
if (state == 2 && state_timer >=4 && state_timer <8){
	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox_1");
}
if (state == 2 && state_timer >=8 && state_timer <12){
	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox_2");
}
if (state == 2 && state_timer >=12 && state_timer <16){
	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox_3");
}
if (state == 2 && state_timer >=16 && state_timer <20){
	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox_4");
}
if (state == 2 && state_timer >=20 && state_timer <24){
	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox_5");
}
if (state == 2 && state_timer >=24 && state_timer <28){
	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox_6");
}
if (state == 2 && state_timer >=28 && state_timer <32){
	hurtboxID.sprite_index = sprite_get("ar_doublejump_hurtbox_7");
}

if ((get_player_color( player ) == 5 || runeE) && attack == 10 && state == 6){
	sprite_index = sprite_get("dattack_mado");
}
if ((get_player_color( player ) == 5 || runeE) && attack == 11 && state == 5){
	sprite_index = sprite_get("fair_mado");
}
if ((get_player_color( player ) == 5 || runeE) && attack == 1 && state == 6){
	sprite_index = sprite_get("jab_mado");
}
if ((get_player_color( player ) == 5 || runeE) && state == 21){
	sprite_index = sprite_get("waveland_mado");
}

if (attack == 15 && state == 19){ //nair
	sprite_index = sprite_get("nair_land");
}
if (get_player_color( player ) != 5 && attack == 11 && state == 19 && get_attack_value(AT_FAIR, AG_LANDING_LAG) == 5){ //fair - normal - early
	sprite_index = sprite_get("fair_land");
	image_index = (state_timer * 2 / 8)+2;
}
if (get_player_color( player ) != 5 && attack == 11 && state == 19 && get_attack_value(AT_FAIR, AG_LANDING_LAG) == 10){ //fair - normal - late
	sprite_index = sprite_get("fair_land");
	image_index = state_timer * 4 / 16;
}
if ((get_player_color( player ) == 5 || runeE) && attack == 11 && state == 19 && get_attack_value(AT_FAIR, AG_LANDING_LAG) == 5){ //fair - mado - early
	sprite_index = sprite_get("fair_land_mado");
	image_index = (state_timer * 2 / 8)+2;
}
if ((get_player_color( player ) == 5 || runeE) && attack == 11 && state == 19 && get_attack_value(AT_FAIR, AG_LANDING_LAG) == 10){ //fair - mado - late
	sprite_index = sprite_get("fair_land_mado");
	image_index = state_timer * 4 / 16;
}
if (attack == 12 && state == 19){ //bair
	sprite_index = sprite_get("bair_land");
}
if (attack == 14 && state == 19){ //uair
	sprite_index = sprite_get("uair_land");
	image_index = state_timer * 4 / 9;
}
if (runeO && state == 22){
	sprite_index = sprite_get("dash");
	image_index = 3;
}

/* if (attack == 13 && state == 19){ //dair
	sprite_index = sprite_get("dair_land");
} */

//if (state == PS_DOUBLE_JUMP){
//}

with(pHitBox){
	if (player_id == other.id){
		if (attack == AT_FAIR){
			if (hbox_num == 1){
				//print_debug("test")
				sprite_index = sprite_get("ar_sweetspot_square")
			}
		}
		if (attack == AT_DAIR){
			if (hbox_num == 2){
				//print_debug("test")
				sprite_index = sprite_get("ar_sweetspot_circle")
			}
		}
		if (attack == AT_UAIR){
			if (hbox_num == 3){
				//print_debug("test")
				sprite_index = sprite_get("ar_sweetspot_circle")
			}
		}
	}
}






