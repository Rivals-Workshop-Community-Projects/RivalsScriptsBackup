sound_stop(sound_get("oogaboogabooga"));
sound_stop(sound_get("oogaboogamuta"));
sound_stop(sound_get("oogarummaging"));
sound_stop(sound_get("LaughTaunt"));

deathscream = random_func(1, 20, true);

if((deathscream <= 9) && get_synced_var(player) == 0){
	sound_play(sound_get("ManDown"));
}
if((deathscream > 9 && deathscream <= 18) && get_synced_var(player) == 0){
	sound_play(sound_get("ManDown2"));
}
if(deathscream > 18 && get_synced_var(player) == 0){
	sound_play(sound_get("ManDown3"));
}


eust_drawCacophony = false;
eust_drawLocust = false;
eust_inChair = false;
eust_gettingChair = false;
eust_gChairInvuln = false;
eust_crashingDown = false;
eust_chaosTimer = 0;
eust_chaosPresent = false;
eust_bobStop = true;
if(instance_exists(obj_article1)){
			eust_mychairState = 2;
}
if(instance_exists(obj_article_solid)){
			eust_mydoorState = 2;
}
eust_chairWarp = false;
eust_chairWCD = false;
eust_chairHBar = 0;
eust_runeKSpins = false;

eust_isSmashing = 0;