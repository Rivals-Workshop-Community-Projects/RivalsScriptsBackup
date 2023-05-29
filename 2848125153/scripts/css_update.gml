alt_fix = player;

if("css_timer" not in self)css_timer = 0; //rivals
css_timer += 1;
if(css_timer == 1800){
	sound_play(sound_get("hurry"));
}
if(css_timer == 3600){
	sound_play(sound_get("hurry up"));
}