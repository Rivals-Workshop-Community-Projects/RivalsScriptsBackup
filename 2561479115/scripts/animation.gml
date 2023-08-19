switch(state) {
    case PS_PARRY_START:
        if state_timer == 0 sprite_index = sprite_get("idle");
        break;
    case PS_PARRY:
    	if window == 1 {
    		if window_timer == 0 {
    			parryshield_inst = spawn_hit_fx(x, y, hfx_parry_shield)
    			parryshield_inst.depth -= 10;
    		}
    		parryshield_inst.x = x;
    		parryshield_inst.y = y;
    	}
    case PS_ATTACK_AIR: case PS_ATTACK_GROUND:
    	switch(attack) {
			case AT_BAIR:
				if (window == 5 && window_timer == 0) && !hitpause {
				    spawn_hit_fx(x+(28*spr_dir),y-28,burst);
				    spawn_hit_fx(x+(56*spr_dir),y-28,fire);
				}
				break;
			case AT_USTRONG:
				if window == 6 && window_timer == 0 && !hitpause {
					spawn_hit_fx(x,y,hfx_ustrong_dissipation);
				}
				break;
			case AT_UTILT:
				if window == 4 && window_timer == 1 && !hitpause {
					var fx = spawn_hit_fx(x+(40*spr_dir),y-74,hfx_utilt_muzzleflash);
					fx.depth -= 4;
				}
				break;
			case AT_FAIR:
				if window == 5 && window_timer == 1 && !hitpause {
					//var fx = spawn_hit_fx(x+(36*spr_dir),y,hfx_utilt_muzzleflash);
					//fx.depth -= 20;
					//fx.draw_angle = 270;
				}
				break;
    	}
        break;
}

//Supersonic's entirely self-contained plug and play intro code
/*
if (state == PS_SPAWN) {
    var intro_spr = sprite_get("intro");
    var intro_start = 4; //the frame the intro starts
    var intro_end = 120; //the frame the intro ends
    if spawn_timer < intro_end {
        sprite_index = intro_spr;
        image_index = image_number*(clamp(spawn_timer-intro_start, 0, intro_end)/intro_end);
    }
}
*/

