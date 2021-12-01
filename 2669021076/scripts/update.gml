// update is a script that runs whatever code is in here every in-game frame.

// ========== CLAWS ==========

// passive healing
if state == clamp(state, 5, 6) && !claws_broken{
    switch attack {
        case AT_UAIR: case AT_FAIR: case AT_BAIR:
        case AT_FSTRONG: case AT_USTRONG: case AT_DSTRONG:
        case AT_NSPECIAL: case AT_NTHROW: case AT_FSPECIAL: case AT_FTHROW:
            // lol there's probably a better way to do this but i'm lazy
            break;
        default:
            claws_health = clamp(claws_health + claws_regen, 0, 100);
            break;
    }
}
else if state_cat != SC_HITSTUN && state != PS_PRATLAND {
    claws_health = clamp(claws_health + claws_regen, 0, 100);
}

if !claws_broken {
    if claws_brittle { check_meter_full(); }
    else if claws_health <= 0 && claws_health_prev > 0 {
        claws_brittle = true;
        sound_play(asset_get("sfx_abyss_seed_explode"));
        sound_play(asset_get("mfx_mm_coin"), false, noone, 2.5);
    }
}
else check_meter_full();

claws_health_prev = claws_health;

/*
// ========== BUBBLES ==========

// manage lockout for each player
with oPlayer {
    var my_player = other.player;
    // make sure the player has the lockout variable
    if variable_instance_exists(self, `bubble_lockout_${my_player}`) && !hitpause {
        
        var lockout = variable_instance_get(self, `bubble_lockout_${my_player}`);
        if lockout > 0 {
            // tell the bubbles that the lockout is over
            if (lockout == 1) with pHitBox {
                if orig_player == my_player && attack == AT_USPECIAL && type == 2 && !destroyed {
                    can_hit[other.player] = 1;
                }
            }
            // decrement lockout
            variable_instance_set(self, `bubble_lockout_${my_player}`, lockout - 1);
        }
    }
}
*/

// ========== KRABS ==========
if is_krabs{
    // funny hat
    if wearing_hat == 1 {
        hud_offset = 18; 
        if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
            wearing_hat = -1;
            spawn_hit_fx(x, y, hit_fx_create(sprite_get("krabs_toss"), 20));
        }
    }
    else if wearing_hat == -1 {
        if state == PS_RESPAWN or state == PS_SPAWN {
        wearing_hat = true;
        }
    }
    
    // funny sfx
    if !uses_krabs_sound && state == PS_SPAWN && taunt_down {
        uses_krabs_sound = true;
    }
    else if uses_krabs_sound {
        if (state == PS_DASH_START || state == PS_DASH) {
            if extra_sound == noone { extra_sound = sound_play(sfx_krabs_run, true); } 
        }
        else if extra_sound != noone { 
            sound_stop(extra_sound);
            extra_sound = noone;
        }
    }
}


// ========== MISC. ==========

// refresh fspec
if !free || (state = PS_WALL_JUMP && state_timer = 0) { fspec_used = false; }

// stop sound just in case
if nspec_sound != noone && state_cat == SC_HITSTUN {
    sound_stop(nspec_sound);
    nspec_sound = noone;
}




#define check_meter_full()

if claws_health >= 100 && claws_health_prev < 100 {
    claws_brittle = false;
    sound_play(asset_get("mfx_player_ready"), false, noone, 2);
}