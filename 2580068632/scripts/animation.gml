//animation.gml


if (!free && attack != AT_NSPECIAL && attack != AT_DSPECIAL){
	wings_out = false;
}

if (attack == AT_DSPECIAL){
	if (window == 4 && window_timer < 5 && free && !hitpause){
		image_index = 8;
	}
	//Hud Offset
	if (window == 4 && image_index > 7 && image_index < 11 && free){//>
	    hud_offset = 56;
	} //>
}

if (state == PS_DOUBLE_JUMP){
	wings_out = true;
}

if (wings_out == true && state == PS_IDLE_AIR){
	sprite_index = sprite_get("jump_wings");
} else if (wings_out == false && state == PS_IDLE_AIR){
	sprite_index = sprite_get("jump");
}

if (state == PS_LAND){
	sprite_index = sprite_get("landinglag");
	image_index = 2;
}

if (state == PS_WAVELAND){
	sprite_index = sprite_get("landinglag");
	image_index = 0;
}

if (state == PS_AIR_DODGE){
	if (wings_out == true){
		sprite_index = sprite_get("airdodge_wings");
	} else if (wings_out == false){
		sprite_index = sprite_get("airdodge");
	}
}

if (state == PS_PRATFALL){
	if (wings_out == true){
		sprite_index = sprite_get("pratfall_wings");
	} else if (wings_out == false){
		sprite_index = sprite_get("pratfall");
	}
}

if (attack == AT_JAB){
	if (window == 4){
		if (window_timer == 2 || window_timer == 3){
			image_index = 6
		} else if (window_timer == 4 || window_timer == 5){
			image_index = 2
		} else {
			image_index = 5
		}
	}
	if (window == 5){
		if (window_timer > 1){
			image_index = 0
		} else {
			image_index = 3
		}
	}
}

if (attack == AT_NAIR ||
	attack == AT_FAIR ||
	attack == AT_UAIR ||
	attack == AT_DAIR ||
	attack == AT_DAIR ||
	attack == AT_NSPECIAL){
	spr_angle = 0
	if (djumps != 0){
		wings_out = true
	}
}

if (attack == AT_NAIR){
	if (wings_out == true){
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
	}
}

if (attack == AT_FAIR){
	if (wings_out == true){
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
	}
}

if (attack == AT_UAIR){
	if (wings_out == true){
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
	}
}

if (attack == AT_DAIR){
	if (wings_out == true){
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
	}
}

if (attack == AT_BAIR){
	if (wings_out == true){
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	}
}

/*
if (attack == AT_USTRONG){
	if (window == 1){
		if (window_timer > ceil((get_window_value(attack, window, AG_WINDOW_LENGTH)) / 2) + 3){
			if (strong_charge <= 2){//>
				image_index = 1;
			} else if (strong_charge > 2 && strong_charge < 8){//>
				image_index = 2 + strong_charge/4;
			} else {
				image_index = 3;
			}
		} else {
			image_index = 0;
		}
	}
}
*/

if (attack == AT_NSPECIAL){
	if (wings_out == true){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_wings"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
	}
}

if (state == PS_SPAWN) {
    if (introTimer < 19 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {//>
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
	
	var introPlayerTimerOffset = (3 * player);
	if (state_timer == 27 + introPlayerTimerOffset){
		sound_play(sfx_intro);
	}
	if (state_timer == 59 + introPlayerTimerOffset){
		sound_play(sfx_dimensional_cape_dodge);
		sound_play(asset_get("sfx_bird_downspecial"), false, noone, 1, 1.15);
		spawn_base_dust(x+(12*spr_dir),y, "dash_start", -spr_dir, 0);
	}
}

//--------------------------------------------

//spawn_base_dust(x+(0*spr_dir),y, "dust name", spr_dir, angle);

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir