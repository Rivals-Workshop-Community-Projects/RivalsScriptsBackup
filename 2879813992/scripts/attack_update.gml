//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	case AT_DSPECIAL:
	case AT_DSPECIAL_2:
	case AT_USPECIAL:
	case AT_USPECIAL_2:
		trigger_b_reverse();
		break;
}

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
		case AT_JAB:
		if window == 1 && window_timer == get_window_value(AT_JAB, 1, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 50, y, "dash_start", -spr_dir);
		}		if window == 4 && window_timer == get_window_value(AT_JAB, 4, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 60, y, "dash_start", -spr_dir);
		}if window == 7 && window_timer == get_window_value(AT_JAB, 7, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 60, y, "dash_start", -spr_dir);
		}
		break;
	case AT_FTILT:
		if window == 1 && window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 70, y, "dash_start", -spr_dir);
			//sound_play(sound_get("se_zelda_win01_02"));
			    	if(ftilt_cooldown == 0){
			sound_play(sound_get("se_ness_attackair_F01"));
			    	}
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 30, y, "dash_start", -spr_dir);
			spawn_base_dust(x + spr_dir * -30, y, "dash_start", spr_dir);
			sound_play(sound_get("se_ness_attackair_L01"));
		}
		break;
	case AT_FSTRONG:
		if window == 2 && window_timer == 6{
			spawn_base_dust(x + spr_dir * 50, y, "dash_start", -spr_dir);
		}
		break;
	case AT_DTILT:
		if window == 1 && window_timer == get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 50, y, "dash_start", -spr_dir);
		}
		break;
	case AT_DSTRONG:
		if window == 3 && window_timer == 7{
			spawn_base_dust(x + spr_dir * 40, y, "dash_start", -spr_dir);
			spawn_base_dust(x + spr_dir * -40, y, "dash_start", spr_dir);
		}		if window == 1 && window_timer == 1{
		    spawn_base_dust(x + spr_dir * -25, y, "dash_start", spr_dir);
		    spawn_base_dust(x + spr_dir * 25, y, "dash_start", -spr_dir);
		}
		break;
	case AT_USTRONG:
		if window == 1 && window_timer == 1{
		    spawn_base_dust(x + spr_dir * -25, y, "dash_start", spr_dir);
		    spawn_base_dust(x + spr_dir * 25, y, "dash_start", -spr_dir);
		}		if window == 2 && window_timer == get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 25, y, "dash_start", -spr_dir);
			spawn_base_dust(x + spr_dir * -25, y, "dash_start", spr_dir);
		}
		break;
	case AT_DATTACK:
		if window == 2 && window_timer == get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH)-1{
			spawn_base_dust(x + spr_dir * 100, y, "dash_start", -spr_dir);
		}
		break;
}

//nspecial
if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	if(window == 1 && window_timer = 1){
		activate_nspecial = false;
		destroy_field = false;
	}
	
	//place on player
	if(window == 2 && window_timer == 1){
		if(!special_down){
			window = 3;
			window_timer = 0;
    sound_play(sound_get("se_zelda_special_L01"));
    sound_play(asset_get("sfx_ori_uptilt_single"));
    materia_field = instance_create(x, y-48, ("obj_article1"));
		}
	}
	
	//activate projectile
	if(window == 2 && window_timer > 1){
	if(!special_down){	
			window = 3;
			window_timer = 0;
			activate_nspecial = true;
	}
	}
	
}

//fspecial
if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	if(window == 1 && window_timer = 1){
		destroy_fspecial = false;
		fspecial_charge = 3;
		sound_play(asset_get("sfx_spin"));
		vfx = spawn_hit_fx(x + spr_dir * 5, y - 30, magic_charge);
		vfx.depth = -10
	}
	
	//charge
	if(window == 2){
		vsp = clamp(vsp,-3,3);	
	if(window_timer % 6 == 0 && !hitpause){
		fspecial_charge += 1;
	}if(window_timer = 23){
		vfx = spawn_hit_fx(x + spr_dir * 5, y - 30, magic_charge);
		vfx.depth = -10
	}
	}
	
	//skip 2 attack
	if(window == 2 && window_timer == 1){
		if(!special_down){
			window = 3;
			window_timer = 0;
		}
	}
	
	if(window == 2 && window_timer > 1){
	if(!special_down){	
			window = 3;
			window_timer = 0;
	}
	}if(window == 3 && window_timer = 1){
	sound_play(asset_get("sfx_ori_grenade_hit"));
    sound_play(asset_get("sfx_ori_taunt2"));		
	}
	
	//deploy starbits
	if(window == 4 && !hitpause){
		if(window_timer > 2){
			if(fspecial_charge < 7){
			if(window_timer < 3 + fspecial_charge){
			if(window_timer % 1 == 0 && !hitpause){
	starbit = create_hitbox(AT_FSPECIAL, 1, x + spr_dir * 60, y - 40);	
	snd_rng = random_func(0, 7, true);
	if (snd_rng == 0) {
		starbit.hsp = 8 * spr_dir;
		starbit.vsp = 0;
	}if (snd_rng == 1) {
		starbit.hsp = 9 * spr_dir;
		starbit.vsp = 1.2;
	}if (snd_rng == 2) {
		starbit.hsp = 9 * spr_dir;
		starbit.vsp = -1;
	}if (snd_rng == 3) {
		starbit.hsp = 8 * spr_dir;
		starbit.vsp = 1.25;
	}if (snd_rng == 4) {
		starbit.hsp = 8.5 * spr_dir;
		starbit.vsp = -1.15;
	}if (snd_rng == 5) {
		starbit.hsp = 7 * spr_dir;
		starbit.vsp = 1.05;
	}if (snd_rng == 6) {
		starbit.hsp = 7 * spr_dir;
		starbit.vsp = -1.25;
	}
	}				
			}
			}
		}
		if(window_timer == 2){
			sound_play(sound_get("se_zelda_attack100end"));
			if(fspecial_charge >= 7){
				move_cooldown[AT_FSPECIAL] = 180;
				big_starbit = create_hitbox(AT_FSPECIAL, 2, x + spr_dir * 60, y - 55);	
				//big_starbit.y += 20
			}
		}
	}
	
}

//uspecial
if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if(window == 1 && window_timer = 1){
		destroy_field = false;
		destroy_shield  = false;
	}if(window == 1){
		hsp = clamp(hsp,-3,3);
		vsp = clamp(vsp,-2.5,2.5);
	}
	
	//place on player
	if(window == 2 && window_timer == 1){
	sound_play(asset_get("sfx_ori_uptilt_single"));	
	sound_play(sound_get("shield_summon"));	
		if(!free){
    var shield1 = instance_create(x + spr_dir * 40, y-53, ("obj_article2"));
    shield1.spr_dir = spr_dir;
    destroy_shield  = true;
		}if(free){
			if(has_shield){
				shield_plat_aerith = 0;
    shield_plat_aerith = instance_create(x + spr_dir, y+ -40, ("obj_article_platform"));
    vsp = -7;
    shield_plat_aerith.spr_dir = 1;
    shield_plat_aerith.state = 3;
    shield_plat_aerith.state_timer = 0;
	destroy_shield = true;
	has_shield = false;
			}else{
				vsp = -10;
				vfx = spawn_hit_fx(x + spr_dir, y - 40, ftilt_effect);
			}
		}
	}
	if(window == 3 && window_timer = get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH)-1){
	if(free){
	set_state(PS_PRATFALL); 
	}
	}
}

if(attack == AT_DSPECIAL){
	window = 10;
}

//cool sfx and vfx
if (attack == AT_FTILT){
	    	if(ftilt_cooldown == 0){
	    		if(window == 2 && window_timer = 3){
    	vfx = spawn_hit_fx(x + spr_dir * 75, y - 25, uspec_effect);
    create_hitbox(AT_FTILT, 2, x + 70*spr_dir, y - 30);
    ftilt_cooldown = 50;
    	}
    }
}

if (attack == AT_DATTACK){
    if(window == 1 && window_timer = get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH)-1){
    sound_play(asset_get("sfx_swipe_medium2"));
    sound_play(asset_get("sfx_ori_glide_featherout"));
    sound_play(sound_get("se_zelda_attack100end"));
    vfx1 = spawn_hit_fx(x + spr_dir * 75, y - 25, dattack_effect);
    vfx1.depth = -10;
    vfx2 = spawn_hit_fx(x + spr_dir * 75, y - 25, dattackbehind_effect);
    vfx2.depth = 10;
    }
}

if (attack == AT_DAIR){
    if(window == 1 && window_timer = get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH)-3){
    sound_play(sound_get("se_zelda_attackair_B01"));
    sound_play(asset_get("sfx_ori_uptilt_single"));
    }
}if (attack == AT_DTILT){
    if(window == 1 && window_timer = get_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH)-3){
    sound_play(sound_get("se_zelda_attackair_F01"));
    sound_play(asset_get("sfx_ori_uptilt_single"));
    }
}

if (attack == AT_DSTRONG){
    if(window == 3 && window_timer = 8){
    sound_play(asset_get("sfx_ori_seinhit_heavy"));
    sound_play(asset_get("sfx_ori_energyhit_heavy"));
    vfx1 = spawn_hit_fx(x + spr_dir, y, dstrong_effect);
    vfx1.depth = -10;
    spawn_hit_fx(x + spr_dir , y, 68);
    }
}
if (attack == AT_FSTRONG){
    if(window == 2 && window_timer = get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH)-1){
    sound_play(asset_get("sfx_clairen_swing_mega_instant"));
    }    if(window == 2 && window_timer = 1){
    sound_play(asset_get("sfx_swipe_heavy1"));
    }
}

if (attack == AT_USTRONG){
    if(window == 2 && window_timer = 4){
    sound_play(asset_get("sfx_absa_jab1"));
    }    if(window == 2 && window_timer = 7){
    sound_play(asset_get("sfx_absa_jab1"));
    }if(window == 2 && window_timer = get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)-1){
    sound_play(sound_get("se_zelda_smash_S01"));
    sound_play(asset_get("sfx_holy_lightning"));
    sound_play(asset_get("sfx_absa_dattack"));
    }
    if(window == 1 && window_timer = 8){
    sound_play(sound_get("se_zelda_special_L09"));	
    }
}

//offsets
if (attack == AT_UTILT || attack == AT_NAIR || attack == AT_UAIR){
    hud_offset = 60;
}
if (attack == AT_DSTRONG){
    hud_offset = 50;
}

/*
if (attack == AT_NSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}

if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}
*/

//materia damage buffs
if(window == 1 && window_timer = 1){
switch(attack){
	case AT_JAB:
	reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_JAB, 1, HG_DAMAGE);
    set_hitbox_value(AT_JAB, 1, HG_DAMAGE, dm1 + (materia_damage_buff/2));
    
	reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_JAB, 2, HG_DAMAGE);    
    set_hitbox_value(AT_JAB, 2, HG_DAMAGE, dm2 + (materia_damage_buff/2));
    
	reset_hitbox_value(AT_JAB, 3, HG_DAMAGE);
	var dm3 = get_hitbox_value(AT_JAB, 3, HG_DAMAGE);     
    set_hitbox_value(AT_JAB, 3, HG_DAMAGE, dm3 + (materia_damage_buff/2));
	break;
	
	case AT_FTILT:
	reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_FTILT, 1, HG_DAMAGE);	
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, dm1 + materia_damage_buff);
	
	reset_hitbox_value(AT_FTILT, 2, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_FTILT, 2, HG_DAMAGE);		
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, dm2 + (materia_damage_buff/2));
	break;
	
	case AT_UTILT:
	reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_UTILT, 1, HG_DAMAGE);		
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, dm1 + (materia_damage_buff/2));
	
	reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_UTILT, 2, HG_DAMAGE);		
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, dm2 + (materia_damage_buff/2));
	
	reset_hitbox_value(AT_UTILT, 3, HG_DAMAGE);
	var dm3 = get_hitbox_value(AT_UTILT, 3, HG_DAMAGE);		
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, dm3 + (materia_damage_buff/2));
	
	reset_hitbox_value(AT_UTILT, 4, HG_DAMAGE);
	var dm4 = get_hitbox_value(AT_UTILT, 4, HG_DAMAGE);		
	set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, dm4 + (materia_damage_buff/2));
	
	reset_hitbox_value(AT_UTILT, 5, HG_DAMAGE);
	var dm5 = get_hitbox_value(AT_UTILT, 5, HG_DAMAGE);		
	set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, dm5 + (materia_damage_buff/2));
	break;
	
	case AT_DTILT:
	reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_DTILT, 1, HG_DAMAGE);		
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, dm1 + materia_damage_buff);

	reset_hitbox_value(AT_DTILT, 2, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_DTILT, 2, HG_DAMAGE);		
	set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, dm2 + materia_damage_buff);
	break;
	
	case AT_DATTACK:
	reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);		
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, dm1 + materia_damage_buff);
	break;
	
	case AT_FSTRONG:
	reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);	
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, dm1 + (materia_damage_buff/2));

	reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);	
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, dm2 + (materia_damage_buff/2));
	
	reset_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE);
	var dm3 = get_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE);	
	set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, dm3 + (materia_damage_buff/2));
	break;	
	
	case AT_USTRONG:
	reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);	
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, dm1 + (materia_damage_buff/2));

	reset_hitbox_value(AT_USTRONG, 2, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_USTRONG, 2, HG_DAMAGE);	
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, dm2 + (materia_damage_buff/2));
	
	reset_hitbox_value(AT_USTRONG, 3, HG_DAMAGE);
	var dm3 = get_hitbox_value(AT_USTRONG, 3, HG_DAMAGE);	
	set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, dm3 + (materia_damage_buff/2));
	break;
	
	case AT_DSTRONG:
	reset_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE);	
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, dm1 + materia_damage_buff);
	break;
	
	case AT_NAIR:
	reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 2, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 3, HG_DAMAGE);
	reset_hitbox_value(AT_NAIR, 4, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
	
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, dm1 + materia_damage_buff);
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, dm1 + materia_damage_buff);
	set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, dm1 + materia_damage_buff);
	set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, dm1 + materia_damage_buff);
	break;
	
	case AT_FAIR:
	reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, dm1 + materia_damage_buff);

	reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_FAIR, 2, HG_DAMAGE);	
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, dm2 + materia_damage_buff);
	
	reset_hitbox_value(AT_FAIR, 3, HG_DAMAGE);
	var dm3 = get_hitbox_value(AT_FAIR, 3, HG_DAMAGE);		
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, dm3 + materia_damage_buff);
	break;
	
	case AT_UAIR:
	reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_UAIR, 1, HG_DAMAGE);	
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, dm1 + materia_damage_buff);
	break;
	
	case AT_DAIR:
	reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, dm1 + materia_damage_buff);
	break;
	
	case AT_BAIR:
	reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, dm1 + materia_damage_buff);
	
	reset_hitbox_value(AT_BAIR, 2, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_BAIR, 2, HG_DAMAGE);	
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, dm2 + materia_damage_buff);
	break;
	
	case AT_FSPECIAL:
	reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
	var dm1 = get_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);	
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, dm1 + (materia_damage_buff/2));
	
	reset_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE);
	var dm2 = get_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE);		
	set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, dm2 + (materia_damage_buff/4)); 
	
	reset_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE);
	var dm3 = get_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE);	
	set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, dm3 + (materia_damage_buff/4)); 
	
	reset_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE);
	var dm4 = get_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE);	
	set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, dm4 + (materia_damage_buff/2)); 
	break;
	}
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
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

