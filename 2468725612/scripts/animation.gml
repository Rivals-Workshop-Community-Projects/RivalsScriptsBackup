if (!custom_clone){

if (state == PS_HITSTUN){
        if (hurt_img == 0){
        	sprite_index = sprite_get("hbighurt");
        }
        if (hurt_img == 1){
        	sprite_index = sprite_get("hhurt");
        }
        if (hurt_img == 2){
        	sprite_index = sprite_get("hdownhurt");
        }
        if (hurt_img == 3){
        	sprite_index = sprite_get("hbouncehurt");
        }
        if (hurt_img == 4){
        	sprite_index = sprite_get("huphurt");
        }
        if (hurt_img == 5){
        	sprite_index = sprite_get("hspinhurt");
        }
	}

if (state == PS_HITSTUN_LAND){
	sprite_index = sprite_get("hhurtground");
}

if (state == PS_WRAPPED || state == PS_FROZEN){
	sprite_index = sprite_get("hhurt");
}

if (state == PS_TUMBLE){
	sprite_index = sprite_get("hspinhurt");
}

if (state == PS_DASH){
	dash_cont++;
	if (dash_cont == 11 || dash_cont == 26){
		if (shake_on == true){
			shake_camera(5, 2);
		}
		step_sound = random_func( 0, 9, true);
		switch (step_sound){
		    case 1:
		    sound_play(sound_get("step1"));
		    break;
		    case 2:
		    sound_play(sound_get("step2"));
		    break;
		    case 3:
		    sound_play(sound_get("step3"));
		    break;
		    case 4:
		    sound_play(sound_get("step4"));
		    break;
		    case 5:
		    sound_play(sound_get("step5"));
		    break;
		    case 6:
		    sound_play(sound_get("step6"));
		    break;
		    case 7:
		    sound_play(sound_get("step7"));
		    break;
		    case 8:
		    sound_play(sound_get("step8"));
		    break;
		    case 0:
		    sound_play(sound_get("step9"));
		    break;
		}
	}
	if (dash_cont == 30) {
	    dash_cont = 0;
	}
}
else {
    dash_cont = 0;
}

if (state == PS_WALK){
	walk_cont++;
	if (walk_cont == 31 || walk_cont == 71){
		if (shake_on == true){
			shake_camera(2, 2);
		}
		step_sound = random_func( 0, 9, true);
		switch (step_sound){
		    case 1:
		    sound_play(sound_get("step1"));
		    break;
		    case 2:
		    sound_play(sound_get("step2"));
		    break;
		    case 3:
		    sound_play(sound_get("step3"));
		    break;
		    case 4:
		    sound_play(sound_get("step4"));
		    break;
		    case 5:
		    sound_play(sound_get("step5"));
		    break;
		    case 6:
		    sound_play(sound_get("step6"));
		    break;
		    case 7:
		    sound_play(sound_get("step7"));
		    break;
		    case 8:
		    sound_play(sound_get("step8"));
		    break;
		    case 0:
		    sound_play(sound_get("step9"));
		    break;
		}
	}
	if (walk_cont == 80) {
	    walk_cont = 0;
	}
}
else {
    walk_cont = 0;
}

if (state == PS_LAND && shake_on == true){
	shake_camera(2, 2);
}

switch (attack_meu){
	case PS_PARRY:
	attack_nome = "Parry";
	attack_icon = 23;
	attack_size = -18;
	break;
	case AT_JAB:
	attack_nome = "Jab";
	attack_icon = 0;
	attack_size = -12;
	break;
	case AT_DATTACK:
	attack_nome = "DAttack";
	attack_icon = 4;
	attack_size = -22;
	break;
	case AT_FTILT:
	attack_nome = "FTilt";
	attack_icon = 1;
	attack_size = -16;
	break;
	case AT_DTILT:
	attack_nome = "DTilt";
	attack_icon = 2;
	attack_size = -16;
	break;
	case AT_UTILT:
	attack_nome = "UTilt";
	attack_icon = 3;
	attack_size = -16;
	break;
	case AT_FSTRONG:
	attack_nome = "FStrong";
	attack_icon = 11;
	attack_size = -26;
	break;
	case AT_FSTRONG_2:
	attack_nome = "FStrong2";
	attack_icon = 12;
	attack_size = -28;
	break;
	case AT_UTHROW:
	attack_nome = "UStrong";
	attack_icon = 15;
	attack_size = -26;
	break;
	case AT_USTRONG_2:
	attack_nome = "UStrong2";
	attack_icon = 16;
	attack_size = -28;
	break;
	case AT_DSTRONG:
	attack_nome = "DStrong";
	attack_icon = 13;
	attack_size = -26;
	break;
	case AT_DSTRONG_2:
	attack_nome = "DStrong2";
	attack_icon = 14;
	attack_size = -28;
	break;
	case AT_NAIR:
	attack_nome = "NAir";
	attack_icon = 17;
	attack_size = -14;
	break;
	case AT_FAIR:
	attack_nome = "FAir";
	attack_icon = 18;
	attack_size = -14;
	break;
	case AT_BAIR:
	attack_nome = "BAir";
	attack_icon = 21;
	attack_size = -14;
	break;
	case AT_FTHROW:
	attack_nome = "BAir2";
	attack_icon = 22;
	attack_size = -16;
	break;
	case AT_UAIR:
	attack_nome = "UAir";
	attack_icon = 20;
	attack_size = -14;
	break;
	case AT_DAIR:
	attack_nome = "DAir";
	attack_icon = 19;
	attack_size = -14;
	break;
	case AT_FSPECIAL:
	attack_nome = "FSpecial";
	attack_icon = 5;
	attack_size = -30;
	break;
	case AT_FSPECIAL_AIR:
	attack_nome = "FSpecial_Air";
	attack_icon = 6;
	attack_size = -38;
	break;
	case AT_NTHROW:
	attack_nome = "DSpecial";
	attack_icon = 7;
	attack_size = -30;
	break;
	case AT_DSPECIAL_2:
	attack_nome = "DSpecial2";
	attack_icon = 8;
	attack_size = -32;
	break;
	case AT_TAUNT_2:
	attack_nome = "DSpecial_Air";
	attack_icon = 9;
	attack_size = -38;
	break;
	case AT_DTHROW:
	attack_nome = "DSpecial_Air2";
	attack_icon = 10;
	attack_size = -40;
	break;
}

if (move_cooldown[AT_NSPECIAL_2] != 0){
	hologram.sprite_index = sprite_get("hurtground_hologram");
}

with (hologram){
	if ((state == PS_IDLE || state == PS_IDLE_AIR || state == PS_HITSTUN || state == PS_HITSTUN_LAND
	|| state == PS_LAND || state == PS_TUMBLE) && hologram_idle == true){
		sprite_index = sprite_get("idle_hologram");
		image_index = floor((state_timer mod (4 * 10))/10);	
	}
	
}


if (state == PS_DOUBLE_JUMP && state_timer == 7){
	if ((spr_dir == 1 && hsp >= 2) || (spr_dir == -1 && hsp <= 2) || hsp == 0){
		djump = 1;
	}
	if ((spr_dir == -1 && hsp > 2) || (spr_dir == 1 && hsp < 2) && hsp != 0){
		djump = -1;
	}
}

if (state == PS_DOUBLE_JUMP){
	if (djump == 1){
		sprite_index = sprite_get("doublejump");
	}
	if (djump == -1){
		sprite_index = sprite_get("doublejump2");
	}
}

if (state == PS_PRATFALL){
	
	if (image_index == 0){
		pratfall_cont = false;
	}
	
	if (image_index == 4){
		pratfall_cont = true;
	}

	if (pratfall_cont == true){
		image_index = 4;
	}

}


if (state == PS_SPAWN) {
    if (introTimer < 52 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    if (state_timer == 32){
    	sound_play( sound_get("dspecial_end"));
    	shake_camera(14, 4);
    	spawn_base_dust(x, y, "land");
    }
}

if ((state == PS_ATTACK_GROUND || PS_ATTACK_AIR) && attack == AT_DSTRONG 
&& window == 4 && window_timer == 1 && !hitpause){
	spawn_hit_fx( x-20, y-20, 154).pause = 7;
	spawn_hit_fx( x+50, y-20, 154).pause = 7;
}

}
//

if (state == PS_PARRY){
	if (hat_on && !custom_clone){
		sprite_index = sprite_get("parry_hat");
	}
	if (!hat_on && !custom_clone){
		sprite_index = sprite_get("parry");
	}
	if (custom_clone){
		sprite_index = sprite_get("parry_hologram");
	}
}

for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x-20*spr_dir,
		y,
		image_xscale*2,
		image_yscale*2,
		image_angle,
		c_white,
		.35,
	];



#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;


