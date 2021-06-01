//Destroys the blaster if getting parried while...

//Parrying the Remote Strong
if ((my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2) 
|| (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2)
|| (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2)){
	spawn_hit_fx( blaster.x, blaster.y, blaster_smoke_big );
    blaster.shoulddie = true;
    blaster.state_timer = 20;
    sound_play(sound_get("blasterdeath_smw"));
}

//A Blaster Strong
if (my_hitboxID.attack == AT_STRONG){
	spawn_hit_fx( blaster.x, blaster.y, blaster_smoke_big );
    blaster.shoulddie = true;
    blaster.state_timer = 20;
    sound_play(sound_get("blasterdeath_smw"));
}

//Parrying the Blaster Throw Hitbox
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num < 4) {
	spawn_hit_fx( blaster.x, blaster.y, blaster_smoke_big );
    blaster.shoulddie = true;
    blaster.state_timer = 20;
    sound_play(sound_get("blasterdeath_smw"));
}