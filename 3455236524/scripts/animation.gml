//
if (voice_cooldown > 0) voice_cooldown--;
var random_voice;
if (!hitpause && synced_vars[0] && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
	if (window_timer == 0 && voice_cooldown == 0 && 
	((attack == AT_JAB && (window == 2 || window == 5 || window == 8))
     || (attack == AT_FTILT && (window == 3 || window == 7))
     || (attack == AT_UTILT && window == 2)
     || (attack == AT_DTILT && window == 2)
     || (attack == AT_NAIR && window == 2)
     || (attack == AT_BAIR && window == 2)
     || (attack == AT_UAIR && window == 2)
     || (attack == AT_DAIR && window == 2)
     || (attack == AT_NSPECIAL && window == 2)
     || (attack == AT_FSPECIAL && window == 5))){
			random_voice = random_func( 0, 14, true);
			if (random_voice < 8) voice_cooldown = 30;
	    	sound_play(voice_attack[random_voice+1]);
		}
    
    if (window_timer == 0 && voice_cooldown == 0 && 
	((attack == AT_FSPECIAL && (window == 2 || window == 8 || window == 11))
     || (attack == AT_FSPECIAL_AIR && window == 2)
     || (attack == AT_DSPECIAL && window == 2)
     || (attack == AT_DATTACK && window == 1)
     || (attack == AT_FAIR && window == 3)
     || (attack == AT_FSTRONG && window == 1)
     || (attack == AT_DSTRONG && window == 2)
     || (attack == AT_USTRONG && window == 2))){
			random_voice = random_func( 0, 10, true);
			if (random_voice < 4) voice_cooldown = 60;
	    	sound_play(voice_attack_long[random_voice+1]);
		}
	
	if (window_timer == 0 && voice_cooldown == 0 && attack == AT_TAUNT && window == 3){
	    	sound_play(voice_attack[9]);
		}
}

var intro_time = get_gameplay_time()-12;
if intro_time < 20 {
    intro_y = ease_quadIn(y - 280, y-10, intro_time,20)
    intro_x = ease_quadIn(x - 60 *spr_dir, x, intro_time, 20)
//} else if intro_time < 34 {
    //intro_y = ease_quadOut(y - 40, y - 10, intro_time-26, 10)
    //intro_x = ease_linear(x - 10*spr_dir, x, intro_time-26, 10)
} else if intro_time < 25 {
    intro_y = ease_quadOut(y , y, intro_time-34, 14)
}


if intro_time < 100 {
    sprite_index = asset_get("empty_sprite")
}

draw_indicator = intro_time >= 80
if intro_time >= 80 && intro_time < 90 {
    char_height = ease_expoOut(80, default_height, intro_time - 60, 20)
}