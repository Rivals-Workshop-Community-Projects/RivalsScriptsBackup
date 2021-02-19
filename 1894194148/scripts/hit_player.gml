//hit_player - called when one of your hitboxes hits a player
//AR


if (my_hitboxID.attack==AT_UTILT){
	if (my_hitboxID.hbox_num==1){
		sound_play(asset_get("sfx_holy_lightning"));
	}
}
if (my_hitboxID.attack==AT_JAB){
	if (my_hitboxID.hbox_num==6){
		sound_play(sound_get("ARSlash"));
	}
}
if (my_hitboxID.attack==AT_FAIR){
	if (my_hitboxID.hbox_num==1){
		sound_play(sound_get("ARSlash"),false,-4,1,0.8);
	}
	if (my_hitboxID.hbox_num==2){
		sound_play(asset_get("sfx_blow_medium2"));
	}
}
if (my_hitboxID.attack==AT_USTRONG){
	if (my_hitboxID.hbox_num==1){
		sound_play(asset_get("sfx_swipe_medium2"));
	}
}
if (my_hitboxID.attack==AT_UAIR){
	if (my_hitboxID.hbox_num!=3){
		sound_play(asset_get("sfx_blow_heavy2"),false,-4,1,1.15);
	}else{
		sound_play(asset_get("sfx_holy_lightning"),false,-4,1,1.2);
	}
}
if (my_hitboxID.attack==AT_DAIR){
	if (my_hitboxID.hbox_num==4){
		sound_play(asset_get("sfx_blow_heavy1"),false,-4,1,1.3);
	}
}
if (my_hitboxID.attack==AT_BAIR){
	if (my_hitboxID.hbox_num==2){
		sound_play(asset_get("sfx_blow_heavy2"),false,-4,1,1.15);
	}
}
if (my_hitboxID.attack==AT_NAIR){
	if (my_hitboxID.hbox_num<=2){
		sound_play(asset_get("sfx_blow_medium2"),false,-4,1,0.9);
	}else{
		sound_play(asset_get("sfx_blow_medium1"));
	}
}



switch (my_hitboxID.attack){
    case AT_FAIR:
    case AT_DATTACK:
		steve_death_message = "Steve was slain by z_ARainbows using XaaaCi";
	break;
    case AT_JAB:
	switch (my_hitboxID.hbox_num){
		case 5:
		case 6:
		steve_death_message = "Steve was slain by z_ARainbows using XaaaCi";
		break;
	}
	break;
	case AT_DSPECIAL:
		steve_death_message = "Steve was struck by lightning whilst fighting z_ARainbows"
	break;
	default:
		steve_death_message = "Steve was slain by z_ARainbows"
	break;
}







