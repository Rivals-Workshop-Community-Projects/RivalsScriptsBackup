//hit_player.gml
// Variable Definition
var hitmove = my_hitboxID.attack;

if (has_hit_player){
	if !supersaiyan {
		showbaby = true;
		if babytp > 10 && babytp < 110{
			babytp = 10;
		}
		else {
			baby_vis = 0;
			babytp = 0;
		}
	}
}


sound_stop(asset_get("sfx_blow_weak1"))
sound_stop(asset_get("sfx_blow_weak2"))
sound_stop(asset_get("sfx_blow_medium1"))
sound_stop(asset_get("sfx_blow_medium2"))
sound_stop(asset_get("sfx_blow_medium3"))
sound_stop(asset_get("sfx_blow_heavy1"))
sound_stop(asset_get("sfx_blow_heavy2"))

// Writes the id to grabbed
if (hitmove == AT_NSPECIAL && (hit_player_obj.clone != true) && instance_exists(devilsknife) && (hit_player_obj.super_armor != true || hit_player_obj.soft_armor > 0)) {
    var temp_id = hit_player_obj.id;
	if "parent_article" in my_hitboxID {
		hit_player_obj.kris_grab_id = my_hitboxID.parent_article;
		hit_player_obj.has_been_kris_grabbed = my_hitboxID.parent_article;
		my_hitboxID.parent_article.nspecial_has_hit = true;
	}
}

// Sees TP Gauge and adds to the gauge.
if(supersaiyan == 0 && tp_gauge < tpmax){
	// Combo Starters
		if(hitmove == AT_DATTACK || hitmove == AT_FTILT || hitmove == AT_DTILT || hitmove == AT_UTILT || hitmove == AT_UAIR){
		tp_gauge += combo_starter;		
	}
	// Multihitting (Can Combo)
		else if (hitmove == AT_DAIR || hitmove == AT_NAIR) {
		tp_gauge += multihit;
	}
	// Multihitting (Can't Combo)
		else if (hitmove == AT_JAB) {
		tp_gauge += nocombomulti;
	}
	// Multihitting (POWERFUL)
		else if (hitmove == AT_DSTRONG) {
		tp_gauge += powermulti;
	}
	// Combo Enders (WEAK)
		else if (hitmove == AT_BAIR || hitmove == AT_FAIR){
		tp_gauge += weakenders;
	}
	// Combo Enders
		else if (hitmove == AT_FSTRONG || hitmove == AT_USTRONG){
		tp_gauge += enders;
	}
}
/*
if(supersaiyan == 1 && tp_gauge <= 100){
	// Combo Starters
		if(hitmove == AT_DATTACK || hitmove == AT_FTILT || hitmove == AT_DTILT || hitmove == AT_UTILT || hitmove == AT_NAIR){
		tp_gauge -= 4;		
	}
	// Multihitting (Can Combo)
		else if (hitmove == AT_DAIR || hitmove == AT_UAIR) {
		tp_gauge -= 1;
	}
	// Multihitting (Can't Combo)
		else if (hitmove == AT_JAB) {
		tp_gauge -= 2;
	}
	// Multihitting (POWERFUL)
		else if (hitmove == AT_DSTRONG) {
		tp_gauge -= 6;
	}
	// Combo Enders (WEAK)
		else if (hitmove == AT_BAIR || hitmove == AT_FAIR){
		tp_gauge -= 6;
	}
	// Combo Enders
		else if (hitmove == AT_FSTRONG || hitmove == AT_USTRONG){
		tp_gauge -= 10;
	}
}
*/

/*if (hitmove == AT_UTILT) { disabled for balance
    set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 3);
}

if (hitmove == AT_NAIR) {
    set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 5);
}

if (hitmove == AT_UAIR) {
    set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
}

if (hitmove == AT_FAIR) {
    set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 6);
}*/

if (hitmove == AT_DSTRONG && window == 5 && !hit_player_obj.clone) {
	hit_player_obj.should_make_shockwave = false;
	for (var z = 0; z <= array_length(dstrong_hit_list); z++) {
		if dstrong_hit_list[z,0] == noone {
			dstrong_hit_list[z,0] = hit_player_obj;
			dstrong_hit_list[z,1] = hit_player_obj.x;
			break;
		}
	}
	//hit_player_obj.x = x;
}

if (hitmove == AT_NSPECIAL) {
	with hit_player_obj {
		destroy_hitboxes();
	}
}

/*if my_hitboxID.damage <= 4 {
	sound_play(sound_get("hweak"))
}

if my_hitboxID.damage <= 7 and my_hitboxID.damage > 4 {
	sound_play(sound_get("hmed"))
		spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 40, 303 )
}

if my_hitboxID.damage > 7 {
	sound_play(sound_get("hstrong"))
	spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 40, 304 )
}*/

switch my_hitboxID.sound_effect {
	case 199: //icehit weak
	case 498:
	case 499:
	case 500: //weak1 and weak2
	case 501: //weak1 and weak2
	case 506: //weak1 and weak2
		sound_play(sound_get("hweak"));
	break;

	case 204: //icehit medium
	case 503:
	case 504:
	case 505: //medium1 2 and 3
		sound_play(sound_get("hmed"));
		//spawn_hit_fx(hit_player_obj.x,hit_player_obj.y - 40, 303 );
	break;

	case 510:
	case 511: //heavy1 and 2
	case 512: //heavy1 and 2
		sound_play(sound_get("hstrong"));
	break;

}