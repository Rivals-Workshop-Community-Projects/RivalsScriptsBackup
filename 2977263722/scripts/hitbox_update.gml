switch attack {

case AT_USPECIAL:
    vsp = 5;

case AT_FSTRONG:

    if hitbox_timer = length {
	    var fxlol = spawn_hit_fx(x- (8*spr_dir) + random_func(2, 9, true), y-8 +random_func(3, 17, true), player_id.fx_fire_kil);
		
		if random_func(1, 2, true) = 0 fxlol.spr_dir *= -1;
		
	}
break;

case AT_NSPECIAL:
    if hitbox_timer%2 = 0 { 
	    var fxlol = spawn_hit_fx(x + ((7 - random_func(2, 14, true) * spr_dir) - spr_dir = -1? 8 : 0) , y + (7 - random_func(2, 14, true)), fx_fire_trail);
        fxlol.spr_dir = spr_dir;
	}
	
	if destroyed = true || hitbox_timer = length with player_id sound_play(sound_get("sm64_extinguish"));
break;

case 40:
if !free {
destroyed = true;
sound_play(sound_get("sm64_break"));
}
break;

}