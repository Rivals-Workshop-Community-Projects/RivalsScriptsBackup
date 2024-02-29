//hit_player

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

if my_hitboxID.attack == AT_NSPECIAL && hit_player_obj == other.id {
	//exit;
}

//shadow
if my_hitboxID.effect == 22 {
	if hit_player_obj.spr_dir != hit_player_obj.omen_prev_spr_dir && shadow_stun_lockout == 0 { //facing check
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_MOL_BOOM_FLASH)
		sound_play(sound_get("bar_hit"))
		sound_play(asset_get("sfx_absa_kickhit"))
		sound_play(sound_get("CriticalHitSound"))
		hit_player_obj.hitstop += 20
		hit_player_obj.hitstop_full += 20
		shadow_stun_lockout = 40
	}
}

//moon
if my_hitboxID.effect == 20 {
	sound_play(sound_get("DogInstaKillHyperCriticalSound"))
	sound_play(sound_get("bar_hit"))
	sound_play(asset_get("sfx_absa_kickhit"))
	sound_play(sound_get("CriticalHitSound"))
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_ABS_SWEET_BIG)
}

//water
hit_player_obj.omen_drenched_timer = 0
if my_hitboxID.effect == 24 {
	hit_player_obj.omen_drenched_id = id
	spawn_hit_fx(hit_player_obj.x, my_hitboxID.y, HFX_ORC_WATER_BIG)
	sound_play(asset_get("sfx_waterhit_heavy2"))
}

if hit_player_obj != other.id && hit_player_obj.omen_lerp_pos != undefined && hit_player_obj.omen_lerp_pos[0] == id {
    hit_player_obj.omen_lerp_pos = undefined
}

if hit_player_obj != id && hit_player_obj.omen_frozen_id != noone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
    hit_player_obj.omen_frozen_timer += my_hitboxID.damage*9
    //sound_play(sound_get("BearAvalancheSound"))
    sound_play(asset_get("sfx_ice_fspecial_hit_ground"))
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_ETA_ICEPOP_BIG)
}
/*
if my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 3 {
	essence_cur = essence_max
}
*/

switch my_hitboxID.attack {
	
	case AT_EXTRA_1:
	if my_hitboxID.hbox_num == 1 {
		//omen_frozen_id = noone
		hit_player_obj.omen_frozen_timer = -1
		hit_player_obj.omen_draw_ice = true
		hit_player_obj.omen_draw_ice_timer = 0
	}
	break;
    
    case AT_FSPECIAL:
    if my_hitboxID.hbox_num == 1 {
        if hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND {
            hit_player_obj.omen_fspec_owner = id
            //my_hitboxID.destroyed = true
            fspec_has_hit = true
            fspec_hit_player = hit_player_obj.id
            
            switch loadout[1] {
                case LIGHTNING:
                //make electrified
                sound_play(sound_get("HareBolt_AOE"))
                electrified_timer = 120
                break;
                
                case ICE:
                hit_player_obj.omen_frozen_id = id
                hit_player_obj.omen_frozen_timer += 20
                sound_play(asset_get("sfx_ice_fspecial_hit_ground"))
                break;
            }
            
            if hit_player_obj.omen_drenched_id != noone {
            	set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, -75);
            	set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
            	set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.7);
            }
        } else {
        	hit_player_obj.hitstop = 6
        	hit_player_obj.hitstop_full = 6
        }
    }
    if my_hitboxID.hbox_num == 2 {
        sound_play(sound_get("BladesLauncherRushHit"))
        old_vsp = -6
        old_hsp = -2*spr_dir
        
        switch loadout[1] {
            case LIGHTNING:
            //make electrified
            sound_play(sound_get("HareBolt_AOE"))
            electrified_timer = 120
            break;
            
            case ICE:
            hit_player_obj.omen_frozen_id = id
            hit_player_obj.omen_frozen_timer += 50
            break;
        }
    }
    break;
    
    case AT_USPECIAL:
    //lightning
    if my_hitboxID.hbox_num == 2 {
        //make electrified
        sound_play(sound_get("HareBolt_AOE"))
        electrified_timer = 120
    }
    //moon
    if my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 {
        sound_play(sound_get("BladesAttackHit"), false, noone, 0.8, 0.8)
    }
    
    if my_hitboxID.hbox_num == 5 {
        sound_play(asset_get("sfx_ori_energyhit_medium"))
    }
    
    //ice
    if my_hitboxID.hbox_num == 7 {
        hit_player_obj.omen_frozen_id = id
        hit_player_obj.omen_frozen_timer += 20
    }
    
    break;
    
    case AT_NAIR:
    //sound_play(sound_get("bar_hit"))
    break;
    
    case AT_FAIR:
    sound_play(sound_get("GartishHit"))
    break;
    
    case AT_DTILT:
    if my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 {
        sound_play(sound_get("BowLauncherHitSound"))
    }
    break;
    
    case AT_NSPECIAL:
    if my_hitboxID.hbox_num == 1 {
        sound_play(asset_get("sfx_blow_weak2"))
    }
    //wolf
    if my_hitboxID.hbox_num == 2 {
        //hitstop = my_hitboxID.hitpause
    }
    //earth
    if my_hitboxID.hbox_num == 5 {
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_ORI_ORANGE_SMALL)
    }
    //ice
    if my_hitboxID.hbox_num == 6 {
        my_hitboxID.spawn_explosion = true
        hit_player_obj.omen_frozen_id = id
        hit_player_obj.omen_frozen_timer += 80
    }
    
    //lightning
    if my_hitboxID.hbox_num == 9 {
        with my_hitboxID sound_play(sound_get("HareBolt_AOE"))
        //make electrified
        electrified_timer = 120
    }
    break;
    
    case AT_DATTACK:
    if my_hitboxID.hbox_num == 1 {
        hit_player_obj.omen_lerp_pos = [id, x + 40*spr_dir, y - 30]
        sound_play(sound_get("BowHitSound"))
    }
    if my_hitboxID.hbox_num == 2 {
        sound_play(sound_get("BowLauncherHitSound"))
    }
    break;
    
    case AT_DAIR:
    if my_hitboxID.hbox_num == 5 {
        old_vsp = -8
        sound_play(sound_get("GauntletsLauncherHit"))
    } else {
        sound_play(sound_get("FistsHit"))
    }
    break;
    
    case AT_FSTRONG:
    if my_hitboxID.hbox_num == 2 {
        sound_play(sound_get("GauntletsLauncherHit"))
    }
    if my_hitboxID.hbox_num == 1 {
        sound_play(sound_get("FistsHit"))
    }
    break;
    
    case AT_USTRONG:
    if my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 {
        sound_play(sound_get("DefaultBoltHit"))
        sound_play(asset_get("sfx_blow_medium1"))
        //sound_play(asset_get("sfx_ori_energyhit_weak"))
    }
    break;
    
    case AT_DSTRONG:
    sound_play(sound_get("GartishHit"))
    break;
    
    case AT_UTILT:
    sound_play(sound_get("GartishHit"))
    break;
    
    case AT_BAIR:
    if my_hitboxID.hbox_num == 3 {
        sound_play(sound_get("BladesAttackHit"))
    }
    break;
    
    case AT_UAIR:
    if my_hitboxID.hbox_num == 2 {
        sound_play(sound_get("CriticalHitSound"))
    }
    break;
    
    case AT_JAB:
    sound_play(sound_get("FistsHit"))
    if my_hitboxID.hbox_num == 3 {
        //sound_play(sound_get("GauntletsLauncherHit"))
    }
    break;
    
    case AT_FTILT:
    sound_play(sound_get("GartishHit"))
    break;
    
    case AT_DSPECIAL:
    if my_hitboxID.hbox_num == 1 {
        sound_play(sound_get("ScytheLauncherHit"))
        sound_play(sound_get("ScytheAttackHit"))
    }
    
    switch loadout[3] {
        case LIGHTNING:
        //make electrified
        sound_play(sound_get("HareBolt_AOE"))
        electrified_timer = 120
        break;
        
        case ICE:
        hit_player_obj.omen_frozen_id = id
        hit_player_obj.omen_frozen_timer += 60
        sound_play(asset_get("sfx_ice_fspecial_hit_ground"))
        break;
    }
    break;
    
    case AT_DSPECIAL_2:
    if my_hitboxID.hbox_num == 1 {
        sound_play(sound_get("StaffLauncherHit"))
        sound_play(sound_get("ScytheAttackHit"))
    }
    
    switch loadout[3] {
        case LIGHTNING:
        //make electrified
        sound_play(sound_get("HareBolt_AOE"))
        electrified_timer = 120
        break;
        
        case ICE:
        hit_player_obj.omen_frozen_id = id
        hit_player_obj.omen_frozen_timer += 60
        sound_play(asset_get("sfx_ice_fspecial_hit_ground"))
        break;
    }
    break;
}

if hit_player_obj != other.id && hit_player_obj.omen_draw_ice && hit_player_obj.omen_draw_ice_timer >= 6 {
    hit_player_obj.omen_frozen_timer = -1
	hit_player_obj.omen_frozen_id = noone
	hit_player_obj.omen_draw_ice = false
	hit_player_obj.omen_draw_ice_timer = 0
}

//essence meter
if !loadout_full() && essence_consume_timer < 0 && !trailer_mode {
    essence_cur += floor(my_hitboxID.damage*essence_gain_modifier)
}


#define loadout_full()
var is_full = false
if loadout[0] != DEFAULT && loadout[1] != DEFAULT && loadout[2] != DEFAULT && loadout[3] != DEFAULT {
    is_full = true
}
return is_full;