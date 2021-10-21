//Wow!

//fair gun firing if sweetspot hits, referencing one of nades moves
if(my_hitboxID.attack == AT_FAIR){
    if (my_hitboxID.hbox_num == 2) {
        window = 4;
        window_timer = 0;
        vsp = 0;
		hsp = 0;
    }
}

//funny goomber noise :P
if(my_hitboxID.attack == AT_DAIR){
    if (my_hitboxID.hbox_num == 2) {
        vsp = -4; //this doesnt work but i dont care
        sound_play(sound_get("goomba"));
    }
}