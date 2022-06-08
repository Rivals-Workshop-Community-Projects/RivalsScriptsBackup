//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NTHROW){
	if (window == 1 && window_timer == 30)
	{
	sound_play(sound_get("poof"));
	}
}

if (attack == AT_USPECIAL){
	if (window == 2 && window_timer == 11)
	{
        spawn_hit_fx( x-19, y-35, shocky );
	}
	if (window == 2 && window_timer == 3)
	{
        spawn_hit_fx( x+4, y-2, shocky );
	}
	if (window == 2 && window_timer == 5)
	{
        spawn_hit_fx( x+28, y-16, shocky );
	}
	if (window == 2 && window_timer == 7)
	{
        spawn_hit_fx( x-23, y-16, shocky );
	}
	if (window == 2 && window_timer == 9)
	{
        spawn_hit_fx( x+4, y-11, shocky );
	}
	if (window == 2 && window_timer == 14)
	{
        spawn_hit_fx( x+28, y-16, shocky );
	}
    if (window == 2 && window_timer == 1){
            take_damage(player, 4, 4);
				}
	if (window == 1 && window_timer == 1)
	{
        spawn_hit_fx( x-34, y-71, thunder );
	}
	if (window == 1 && window_timer == 6)
	{
        spawn_hit_fx( x+46, y-56, thunder );
	}
	if (window == 1 && window_timer == 11)
	{
        spawn_hit_fx( x-8, y-25, thunder );
	}
	if (window == 3 && window_timer == 3)
	{
	sound_play(sound_get("hit_thunder_weak"));
    }
}
    
if (attack == AT_NSPECIAL){
	if (window == 3){
            take_damage(player, 2, 2);
	}
    if (window == 3){
            spawn_hit_fx( x+5, y-45, 14 );
            spawn_hit_fx( x, y, nspecialfx );
        window = 4;
        window_timer = 0;
        }
	if (window == 2 && window_timer == 3)
	{
	sound_play(sound_get("psi_fire"));
    }
}

    
if (attack == AT_DSPECIAL){
    if (window == 5){
        char_height = 145;   
    }
	if (window == 4 && window_timer == 1)
            take_damage(player, 8, 8);
	{
	if (window == 4 && window_timer == 3)
	{
        spawn_hit_fx( x-42, y-85, evil );
	}
	if (window == 5 && window_timer == 8)
	{
        spawn_hit_fx( x+61, y-64, flash );
	}
	if (window == 6 && window_timer == 1)
	{
        spawn_hit_fx( x-19, y+8, flash );
	}
    if (window == 6 && char_height >= 55){
        char_height -= 7;   
    }
    }
}

if (attack == AT_DAIR){
	if (window == 2 && free == false){
        window = 4;
        window_timer = 0;
        destroy_hitboxes();
      	spawn_base_dust(x, y, "land");
    }
    if (window == 4 && window_timer = 4){
    	sound_play(sound_get("spring"));
        destroy_hitboxes();
        window = 5;
        vsp = -10;
        }
	if (window == 3 && free == false){
        set_state(PS_LANDING_LAG);
	}
    }


if (attack == AT_FSPECIAL){
	if (window == 2 && window_timer == 1){
            take_damage(player, 5, 5);
	}
	if (window == 2)
	{
	super_armor = true
	}
	if (window == 3)
	{
	super_armor = false
	}
	if (window == 1 && window_timer == 1)
	{
	sound_play(sound_get("psi_freeze"));
	}
	if (window == 1 && window_timer == 3)
	{
        spawn_hit_fx( x-34, y-71, freeze );
	}
	if (window == 1 && window_timer == 11)
	{
        spawn_hit_fx( x+46, y-56, freeze );
	}
	if (window == 1 && window_timer == 23)
	{
        spawn_hit_fx( x-8, y-25, freeze );
	}
	if (window == 2 && window_timer == 44)
	{
        spawn_hit_fx( x, y, icebreak );
	}
	if (window == 2 && jump_pressed && free == false)
	{
	    sound_play(sound_get("jump2"));
        vsp = -6;
		max_fall = 80; 
        gravity_speed = .8;
        air_max_speed = 1;
        air_friction = 0.15;
	}
	if (window == 3)
	{
        gravity_speed = .40;
        max_fall = 4;
        air_max_speed = 8;
        air_friction = .02;
	}
    if (window == 2 && has_hit = true){
        destroy_hitboxes();
        window = 3;
		window_timer = 0;
	}
	if (window == 2 && window_timer == 3)
	{
        spawn_hit_fx( x-21, y-70, hexgon );
	}
	if (window == 2 && window_timer == 8)
	{
        spawn_hit_fx( x+31, y-38, hexgon );
	}
	if (window == 2 && window_timer == 13)
	{
        spawn_hit_fx( x-15, y-16, hexgon );
	}
	if (window == 2 && window_timer == 17)
	{
        spawn_hit_fx( x+12, y-85, hexgon );
	}
	if (window == 2 && window_timer == 21)
	{
        spawn_hit_fx( x-5, y-64, hexgon );
	}
	if (window == 2 && window_timer == 27)
	{
        spawn_hit_fx( x-23, y-27, hexgon );
	}
	if (window == 2 && window_timer == 31)
	{
        spawn_hit_fx( x+16, y-6, hexgon );
	}
	if (window == 2 && window_timer == 38)
	{
        spawn_hit_fx( x+23, y-61, hexgon );
	}
}



if (attack == AT_FSPECIAL_AIR){
	if (window == 2 && window_timer == 1){
            take_damage(player, 5, 5);
	}
	if (window == 2 && window == 3)
	{
	super_armor = true
	}
	if (window == 4)
	{
	super_armor = false
	}
	if (window == 4 && window_timer == 1)
	{
        destroy_hitboxes();
	}
	if (window == 1 && window_timer == 3)
	{
        spawn_hit_fx( x-34, y-71, freeze );
	}
	if (window == 1 && window_timer == 11)
	{
        spawn_hit_fx( x+46, y-56, freeze );
	}
	if (window == 1 && window_timer == 23)
	{
        spawn_hit_fx( x-8, y-25, freeze );
	}
    if (window == 3 && has_hit = true){
        spawn_hit_fx( x, y, icebreak );
        destroy_hitboxes();
        window = 4;
        vsp = -8;
        }
    if (window == 4 && free == false){
        spawn_hit_fx( x, y, icebreak );
      	spawn_base_dust(x, y, "land");
    }
	if (window == 2 && window_timer == 3)
	{
        spawn_hit_fx( x-21, y-70, hexgon );
	}
	if (window == 2 && window_timer == 8)
	{
        spawn_hit_fx( x+31, y-38, hexgon );
	}
	if (window == 2 && window_timer == 13)
	{
        spawn_hit_fx( x-15, y-16, hexgon );
	}
	if (window == 3 && window_timer == 17)
	{
        spawn_hit_fx( x+12, y-85, hexgon );
	}
	if (window == 3 && window_timer == 21)
	{
        spawn_hit_fx( x-5, y-64, hexgon );
	}
	if (window == 3 && window_timer == 27)
	{
        spawn_hit_fx( x-23, y-27, hexgon );
	}
	if (window == 3 && window_timer == 31)
	{
        spawn_hit_fx( x+16, y-6, hexgon );
	}
	if (window == 3 && window_timer == 38)
	{
        spawn_hit_fx( x+23, y-61, hexgon );
	}
}


if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR){
	move_cooldown[AT_FSPECIAL] = 60
	move_cooldown[AT_FSPECIAL_AIR] = 60
}

if (attack == AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 20
}

if (attack == AT_FSPECIAL && free && window == 1 && down_down){
    attack = AT_FSPECIAL_AIR;
}


if (attack == AT_JAB){
    if (window == 11 && window_timer == 1){
	sound_play(sound_get("swipe"));
    }
}

if (attack == AT_UAIR){
    if (window == 1 && window_timer == 7){
	sound_play(sound_get("swipe3"));
    }
}

if (attack == AT_DSTRONG && spr_dir = 1 ){
	if (window == 3)
        spawn_hit_fx( x+42, y-20, booom);
}
if (attack == AT_DSTRONG && spr_dir = -1 ){
	if (window == 3)
        spawn_hit_fx( x-42, y-20, booom2);
}

if (attack == AT_DSTRONG){
	if (window == 1 && window_timer == 1)
	{
	sound_play(sound_get("swipe2"));
	}
	if (window == 1 && window_timer == 23)
	{
	sound_play(sound_get("hit_bonk"));
	}
	if (window == 1 && window_timer == 23)
	{
	sound_play(sound_get("bop"));
	}
	if (window == 3 && window_timer == 1)
	{
	sound_play(sound_get("explosion"));
	}
	if (window == 3 && window_timer == 1)
	{
	sound_play(sound_get("hit_smash"));
	}
}

if (attack == AT_DATTACK){
	if (window == 3 && window_timer == 3)
	{
	sound_play(sound_get("hit_bonk"));
    }
}

if (attack == AT_TAUNT && window == 1 && down_down){
    attack = AT_TAUNT_2;
}


//oh my god!!!!!!!!!!!!!


if (attack == 49){
	if (window == 5 && window_timer == 29)
	{
    create_deathbox( x, y, 10, 10, player, true, 0, 2, 2); 
    }
	if (window == 5 && window_timer == 2)
	{
	sound_play(sound_get("hit_weak"));
    }
	if (window == 5 && window_timer == 6)
	{
	sound_play(sound_get("hit_weak"));
    }
	if (window == 5 && window_timer == 10)
	{
	sound_play(sound_get("hit_weak"));
    }
	if (window == 5 && window_timer == 14)
	{
	sound_play(sound_get("hit_weak"));
    }
	if (window == 5 && window_timer == 18)
	{
	sound_play(sound_get("hit_weak"));
    }
	if (window == 5 && window_timer == 22)
	{
	sound_play(sound_get("hit_weak"));
    }
	if (window == 5 && window_timer == 26)
	{
	sound_play(sound_get("hit_weak"));
    }
}


#define spawn_base_dust
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;