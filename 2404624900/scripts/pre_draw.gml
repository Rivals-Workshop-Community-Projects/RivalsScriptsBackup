//post-draw

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
&& (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG) && window == 1){
    if (strong_charge > 5 && strong_charge < 55){
        draw_sprite_ext(sprite_get("strongb1"), get_gameplay_time()*.2, x, y, spr_dir, 1, 0, c_white, .75 );
    }

    if (strong_charge > 55){
        draw_sprite_ext(sprite_get("strongb2"), get_gameplay_time()*.3, x, y, spr_dir, 1, 0, c_white, .75 );
    }
}

if (strong_max == true){
    draw_sprite_ext(sprite_get("strongb2"), get_gameplay_time()*.3, x-(10*spr_dir), y, spr_dir, 1, 0, c_white, .35 );
}

shader_start();
    if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && 
    (((attack == AT_DAIR || attack == AT_DATTACK || attack == AT_FSTRONG || attack == AT_USTRONG) && window >= 2 && window <= 3) 
    || (attack == AT_DSTRONG && window > 2 && window < 5))) {

	for(var m = 0; m < array_length_1d(blur); m++) {
		var _img = blur[m];
		var _percent = 1 - (m / array_length_1d(blur));
		draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
	}

	}
shader_end();


//draw_debug_text( x, y - 60, string(ammo1));
/*
draw_debug_text( x-50, y - 100, string(shadow_clone.state_timer));

draw_debug_text( x-50, y - 80, string(shadow_clone.action));

draw_debug_text( x-50, y - 60, string(shadow_clone.state));

draw_debug_text( x-50, y - 40, string(shadow_clone.vsp));

draw_debug_text( x-50, y - 20, string(shadow_clone.hsp));
