// Check if we grabbed someone
if (my_hitboxID == grab_hitbox) {
    // Fail grab under certain circumstances
    if ((!hit_player_obj.invincible)
        && (!hit_player_obj.super_armor))
    {
        // Grab the struck opponent
        hit_player_obj.RETROBLAST_HOLDER_ID = id;
        
        // Play a grab-confirm sound
        sound_play(asset_get("sfx_waveland_syl"));
        
        // Reward player with an additional Booster Rush and full fuel
        /*if (booster_rush_charges < max_booster_rush_charges) {
            booster_rush_charges++;
        }*/
        if (rocket_fuel < max_rocket_fuel) {
            rocket_fuel = max_rocket_fuel;
        }
    }
}


// Consume marks if blast attack was used
var blast_attack = false;
// Don't apply stacks if it's one of the "weak" attack
var weak_attack = false;
switch (my_hitboxID.attack) {
    // Blast attack list
    case AT_FSTRONG :
    case AT_UTHROW :
    case AT_USTRONG :
    //case AT_DSPECIAL :
    case AT_DATTACK :
        blast_attack = true;
        break;
    case AT_BAIR :
    case AT_DAIR :
        if (my_hitboxID.hbox_num == 1) {
            blast_attack = true;
        }
        break;
    // Weak attack list
    case AT_NSPECIAL :
        weak_attack = true;
        break;
    case AT_DSTRONG :
        if (my_hitboxID.hbox_num != (num_dstrong_spins * 2)) {
            weak_attack = true;
        }
        break;
    // The rest default to false for both
    default :
        break;
}

// Draw a little burst for blast attack hits
if (blast_attack) {
    with (hit_fx_obj) {
       if (hit_fx == other.blast_hit_effect) {
            //spr_dir = other.spr_dir;
            var hit_angle = get_hitbox_angle(other.my_hitboxID);
            var angle_base = 0;
            if (other.spr_dir < 0) { // facing left
                if ((abs(hit_angle) >= 90) && (abs(hit_angle) <= 270)) {
                    angle_base = -180;
                } else {
                    angle_base = 0;
                }
            } else { // facing right
                if ((abs(hit_angle) > 90) && (abs(hit_angle) < 270)) {
                    angle_base = -180;
                } else {
                    angle_base = 0;
                }
            }
            draw_angle = angle_base + hit_angle;
       }
    }
    /*
    var blast = spawn_hit_fx(x, y, blast_hit_effect);
    blast.spr_dir = spr_dir;
    blast.draw_angle = get_hitbox_angle(my_hitboxID);
    */
}

if (targeting_enabled) {
    if (blast_attack) {
        if (hit_player_obj.RETROBLAST_TARGET_STACKS > 0) {
            // TODO - add sound/visual queue
            // Big bonus damage + knockback
            take_damage(hit_player_obj.player, player, hit_player_obj.RETROBLAST_TARGET_STACKS * 3);
            hit_player_obj.orig_knock *= (1 + (hit_player_obj.RETROBLAST_TARGET_STACKS * 0.1));
        }
    
        hit_player_obj.RETROBLAST_TARGETTING_ME = noone;
        hit_player_obj.RETROBLAST_TARGET_STACKS = 0;
    } else if (!weak_attack) {
        // Incremental bonus damage
        if (hit_player_obj.RETROBLAST_TARGET_STACKS > 0) {
            take_damage(hit_player_obj.player, player, hit_player_obj.RETROBLAST_TARGET_STACKS);
        }
        
        // Increase stacks
        hit_player_obj.RETROBLAST_TARGETTING_ME = id;
        if (hit_player_obj.RETROBLAST_TARGET_STACKS < 3) {
            hit_player_obj.RETROBLAST_TARGET_STACKS++;
        }
    }
}