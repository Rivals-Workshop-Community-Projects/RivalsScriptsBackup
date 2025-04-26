//a

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && my_hitboxID.orig_player == player {
    my_hitboxID.hsp = 0;
    my_hitboxID.vsp = -5;
    my_hitboxID.pres_explode_hits += 1;
    if my_hitboxID.pres_should_explode {
        var explodebox = create_hitbox(AT_NSPECIAL,2,my_hitboxID.x,my_hitboxID.y);
        explodebox.player = my_hitboxID.player;
        my_hitboxID.destroyed = true;
        present_should_exist = false;
    }
}

if my_hitboxID.attack == AT_DAIR {
    //dair bounce
    if my_hitboxID.hbox_num <= 2 {
        old_vsp -= 1;
    } else {
        old_vsp -= 3;
    }
}

// teeny tiny amount of lerp to make it more consistent
if my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num < 7 {
    hit_player_obj.x = lerp(hit_player_obj.x, x + 50*spr_dir, 0.15);
    hit_player_obj.y = lerp(hit_player_obj.y, y, 0.1);
}

//gamefeel
var rand_seed = 1; // use rand_seed++ to get different seeds for each random_func call, also use random_func_2 for bigger index max in case of tons of effects

switch(my_hitboxID.attack){
    case AT_JAB:
        if my_hitboxID.hbox_num == 1 {
            sound_play(sfx_spiral_cryobounce,false,noone,0.2,1.25);
            sound_play(sfx_poke_icicle,false,noone,0.75,1);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0]
	              ]);
        } else {
            sound_play(sfx_spiral_hitsoft,false,noone,0.35,1.1);
            sound_play(sfx_spiral_snowball,false,noone,0.45,1.1);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        }
        break;
    case AT_DATTACK:
        sound_play(sfx_spiral_hitsoft,false,noone,1,0.95);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_medium_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_FTILT:
        sound_play(sfx_spiral_hitsoft,false,noone,0.85,1);
        sound_play(sfx_spiral_snowball,false,noone,0.75,1);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_UTILT:
        sound_play(sfx_spiral_hitsoft,false,noone,0.85,1);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_DTILT:
        sound_play(sfx_spiral_hitsoft,false,noone,0.55,1);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_NAIR:
        if my_hitboxID.hbox_num <= 2 {
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	              ]);
        } else {
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        }
        break;
    case AT_FAIR:
        sound_play(sfx_spiral_hitsoft,false,noone,0.95,1.15);
        sound_play(sfx_spiral_snowball,false,noone,0.75,0.95);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_medium_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_BAIR:
        if my_hitboxID.hbox_num <= 2 {
            sound_play(sfx_spiral_cryobounce,false,noone,0.2,1.25);
            sound_play(sfx_poke_icicle,false,noone,0.75,1);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0]
	              ]);
        } else {
            sound_play(sfx_spiral_cryobounce,false,noone,0.35,1.15);
            sound_play(sfx_poke_icicle,false,noone,0.95,1.15);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        }
        break;
    case AT_UAIR:
        sound_play(sfx_spiral_hitsoft,false,noone,0.95,1.15);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_DAIR:
        if my_hitboxID.hbox_num < 3 {
            sound_play(sfx_spiral_hitsoft,false,noone,0.35,1.35);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0]
	              ]);
        } else {
            sound_play(sfx_spiral_hitsoft,false,noone,0.95,1.15);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_small_flare2,180,2,1],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_small_flare1,270,2,1],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_small_flare2,270,2,1]
	              ]);
        }
        break;
    case AT_FSTRONG:
        sound_play(sfx_spiral_hitsoft,false,noone,0.95,1);
        sound_play(sfx_spiral_snowball,false,noone,0.85,1);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_large_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_USTRONG:
        if my_hitboxID.hbox_num == 1 {
            sound_play(sfx_spiral_hitsoft,false,noone,0.95,0.95);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_large_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        } else {
            sound_play(sfx_spiral_hitsoft,false,noone,0.85,1.1);
            sound_play(sfx_spiral_pickup,false,noone,1,1.25);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_large_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        }
        break;
    case AT_DSTRONG:
        sound_play(sfx_spiral_cryobounce,false,noone,0.35,1.25);
        sound_play(sfx_spiral_hitsoft,false,noone,1,0.95);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_large_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_NSPECIAL:
        if my_hitboxID.hbox_num == 1 && !my_hitboxID.pres_should_explode {
            sound_play(sfx_spiral_snowball,false,noone,0.75,1.1);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0]
	              ]);
        } else {
            //sound_play(sfx_spiral_cryobounce,false,noone,0.25,1.25);
            sound_play(sfx_spiral_hitsoft,false,noone,0.65,0.95);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_medium_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
            
        }
        break;
    case AT_FSPECIAL:
        sound_play(sfx_spiral_cryobounce,false,noone,0.35,1.25);
        sound_play(sfx_poke_icicle,false,noone,0.95,1);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0]
	              ]);
        break;
    case AT_DSPECIAL:
        sound_play(sfx_spiral_hitsoft,false,noone,0.35,1.1);
        sound_play(sfx_spiral_snowball,false,noone,0.45,1.1);
        if (my_hitboxID.hbox_num == 1) {
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_medium_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        } else {
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_medium_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        }
        
        break;
    case AT_DSPECIAL_AIR:
        sound_play(sfx_spiral_hitsoft,false,noone,0.35,1.1);
        sound_play(sfx_spiral_snowball,false,noone,0.45,1.1);
        spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_medium_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        break;
    case AT_USPECIAL:
        if my_hitboxID.hbox_num < 7 {
            sound_play(sfx_spiral_hitsoft,false,noone,0.25,1.25);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_small_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_small_flare[random_func_2(rand_seed++,array_length(fx_array_small_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        } else {
            sound_play(sfx_spiral_hitsoft,false,noone,0.85,1.1);
            spawn_comp_hit_fx([  
	            	[get_effect_offset_x(),get_effect_offset_y(),0,fx_medium_circle,0,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_small_flashlight,random_func_2(rand_seed++,2,true) * 90,1,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),8,fx_small_centershine,random_func_2(rand_seed++,2,true) * 90,0,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),2,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),3,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0],
	            	[get_effect_offset_x(),get_effect_offset_y(),4,fx_array_medium_flare[random_func_2(rand_seed++,array_length(fx_array_medium_flare),true)],random_func_2(rand_seed++,4,true) * 90,2,0]
	              ]);
        }
        break;
    
}

#define get_effect_offset_x

return my_hitboxID.type == 1 ? (hit_player_obj.x + x) * 0.5 + get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_VISUAL_EFFECT_X_OFFSET) * spr_dir : (hit_player_obj.x + my_hitboxID.x) * 0.5 + get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_VISUAL_EFFECT_X_OFFSET) * my_hitboxID.spr_dir;

#define get_effect_offset_y

return my_hitboxID.type == 1 ? (hit_player_obj.y + y) * 0.5 + get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_VISUAL_EFFECT_Y_OFFSET) : (hit_player_obj.y + my_hitboxID.y) * 0.5 + get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_VISUAL_EFFECT_Y_OFFSET);

#define spawn_comp_hit_fx
//function takes in an array that contains smaller arrays with the vfx information
// list formatting: [ [x, y, delay_time, index, rotation, depth, force_dir], ..]
var fx_list = argument0;
vfx_created = false;

//temporary array
var temp_array = [{cur_timer: -1, max_timer: 0}];  //first value is an array that constains current and max timer, to detect when to spawn vfx and when to stop and be replaced
                            //later values are the fx
var player_dir = spr_dir;

//first take the arrays from the function, set them into objects, and store them in an array
for (var i=0;i < array_length(fx_list);i++) {
    //create new fx part tracker and add to temp array
    var new_fx_part = {
        x: fx_list[i][0],
        y: fx_list[i][1],
        delay_timer: fx_list[i][2],
        index: fx_list[i][3],
        rotation: fx_list[i][4],
        depth: fx_list[i][5],
        spr_dir: fx_list[i][6] == 0 ? player_dir : fx_list[i][6]
    };
    array_push(temp_array, new_fx_part);
    
    //change max timer if delay is bigger than it
    if (new_fx_part.delay_timer > temp_array[0].max_timer) {
        temp_array[0].max_timer = new_fx_part.delay_timer;
    }
}

//add temp array to final array
for (var e=0;e<array_length(comp_vfx_array);e++) {
    if (vfx_created) { //stop process if effect is created
        break;
    } 
    if (comp_vfx_array[e][0].cur_timer > comp_vfx_array[e][0].max_timer) { //replace finished effects
        comp_vfx_array[e] = temp_array;
        vfx_created = true;
    } else if (e == array_length(comp_vfx_array)-1) { //otherwise add it in the end of the array
        array_push(comp_vfx_array, temp_array);
        vfx_created = true;
    }
}
