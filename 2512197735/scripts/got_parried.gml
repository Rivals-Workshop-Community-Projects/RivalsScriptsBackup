if(attack == AT_FSPECIAL){
	window = 5;
}

if voice == true && sound_played == false{
	
	sound_play(sound_get("voice_missed"));

}


if attack == AT_FSPECIAL_AIR {
window = 3;
hsp = 0;
window_timer = 0;
}