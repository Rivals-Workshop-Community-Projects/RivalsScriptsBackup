//Intro
if (introTimer2 < 4.) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
if (state == PS_SPAWN){
	if (introTimer < 25){
	if (state_timer == 30){ sound_play(asset_get("sfx_kragg_rock_pull")); } //Test1
	if (state_timer == 68){ sound_play(asset_get("sfx_kragg_rock_shatter")); } //Test2
	}
}
//this increments introTimer every few frames, depending on the number entered
if (introTimer < 25) {
    draw_indicator = false;
} else {
    draw_indicator = true;
} //this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.


//if (instance_exists(tornado_id) == false && tornado_id == noone){ buffup = false; }
if (instance_exists(tornadowind_id) == true && tornadowind_id != noone && (place_meeting(x, y, tornadowind_id))){ buffup = true; } else { buffup = false; }

if (buffup == true){ amp = 2; knockback_adj = 0.05; hitstun_grav = .7; } else { amp = 1; knockback_adj = 0.8; hitstun_grav = .5; }

knockback_spd = vsp;